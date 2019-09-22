#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "backgrounds.h"
#include "player.h"
#include "champ.h"
#include "spritesheets.h"
#include "sounds.h"
#include "music.h"
#include "cutscenes.h"


// Structs
PLAYER player;
PLAYER champ;

// Variables
enum {IDLE,BLOCK,DODGELEFT,DODGERIGHT,PUNCHLEFT,PUNCHRIGHT,HITLEFT, HITRIGHT, KO};
enum {GAMESTART,GAMEPLAY, GAMEWIN, GAMELOSE};


int gameFrames;
int barCounter;
int hOff0 = 80;
int vOff0 = 0;

int enemyDelay;
int enemySpeed;
int enemyDir;
int enemyOffset;
int enemiesLeft;
int foundShoot;
int changeShoot;

int lives;
int cheat = 0;

OBJ_ATTR shadowOAM[128];


int smoothOffset = 0;

int gameplayState;
int gameTime;
int loseTime;
unsigned int second = -1;
int timeUpTime = 61;
int cheatRedo = 0;

// Initialize the game
void initGame() {
	gameplayState = 0;
	gameTime = 99;
	timeUpTime = 61;


	player.row = PLAYERSTARTVOFF;
	player.col = PLAYERSTARTHOFF;
	player.health = MAXHEALTH;
	player.barHealth = MAXHEALTH;
	player.barColor = 2;
	barCounter = 0;


	champ.row = 0;
	champ.col = 0;
	champ.health = MAXHEALTH;
	champ.barHealth = MAXHEALTH;
	champ.barColor = 2;

	initTimer();

	goToPlayerIdle();
	goToChampIdle();


	player.colOffset = -340;
	champ.colOffset = 170;

}


// Initialize the timer
void initTimer() {
	second = -1;
	REG_TM2CNT = 0;
	REG_TM3CNT = 0;

	REG_TM2D = -0x4000;
	// REG_TM2CNT = TM_FREQ_1024;

		// REG_TM2CNT = TIMER_ON;


	REG_TM3CNT = TIMER_ON | TM_CASCADE;

	// REG_TM2D = 65526-16384;

	// REG_TM2CNT = TM_FREQ_1024 | TIMER_ON;


}


// Updates the game each frame
void updateGame() {



	if (gameplayState == GAMESTART) {
		updateGameStart();
	}

	if (gameplayState == GAMEPLAY) {
		updateTime();
	}


	updatePlayer();
	updateChamp();

	updateSprites();

}

void updateGameStart() {
	player.colOffset+=2;
	champ.colOffset--;

	// if (champ.colOffset < 30) {
		// shadowOAM[127].attr0 = 20 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
  //   	shadowOAM[127].attr1 = (8) | ATTR1_LARGE;
  //   	shadowOAM[127].attr2 = ATTR2_TILEID(0,11) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
	// }

	if (champ.colOffset == 130) {
		playSoundA(ReadyFightSound,READYFIGHTSOUNDLEN,READYFIGHTSOUNDFREQ, 0);
	}

	if (champ.colOffset == 0 && !cheat) {
		playSoundB(MatchFightMusic,MATCHFIGHTMUSICLEN,MATCHFIGHTMUSICFREQ, 1);
	} else if (champ.colOffset == 0 && cheat && cheatRedo) {
		playSoundB(UltraFightMusic,ULTRAFIGHTMUSICLEN,ULTRAFIGHTMUSICFREQ, 1);
	} else if (champ.colOffset == 0 && cheat && !cheatRedo) {
		cheatRedo = 1;
	}

	if (champ.colOffset <= 0) {
		gameplayState = GAMEPLAY;
	}
}

void updateTime() {
	REG_TM2CNT = TM_FREQ_1024| TIMER_ON;


	if (gameplayState == GAMEPLAY) {
		if (REG_TM3D != second && second != 4294967295) {
			second = REG_TM3D;
			gameTime--;
		}
		if (REG_TM3D != second && second == 4294967295) {
			second = REG_TM3D;
		}
	}


	
}

// Updates Some Sprites
void updateSprites() {
	hideSprites();

	DMANow(3,spritesheetPal,SPRITEPALETTE,spritesheetPalLen/2);
    DMANow(3,spritesheetTiles,&CHARBLOCK[4],spritesheetTilesLen/2);

	if (player.barHealth > player.health && (barCounter % 4) == 0) {
		player.barHealth--;
	}

	if (champ.barHealth > champ.health && (barCounter % 4) == 0) {
		champ.barHealth--;
	}

	// Player Health
	for (int i = 0; i < (player.barHealth/8); i++) {
		shadowOAM[i].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    	shadowOAM[i].attr1 = (8 + (8 * i)) | ATTR1_TINY;
    	shadowOAM[i].attr2 = ATTR2_TILEID(8,4) | ATTR2_PALROW(player.barColor) | ATTR2_PRIORITY(1);

    	if (i == ((player.barHealth/8)-1)) {
    		shadowOAM[i].attr2 = ATTR2_TILEID((player.barHealth%8),4) | ATTR2_PALROW(player.barColor) | ATTR2_PRIORITY(1);
    	}
	}	

	// player.health--;

	// Champ Health
	for (int i = 0; i < (champ.barHealth/8); i++) {
		shadowOAM[i+HEALTHBARTILES].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    	shadowOAM[i+HEALTHBARTILES].attr1 = (224 - (8 * i)) | ATTR1_TINY | ATTR1_HFLIP;
    	shadowOAM[i+HEALTHBARTILES].attr2 = ATTR2_TILEID(8,4) | ATTR2_PALROW(champ.barColor) | ATTR2_PRIORITY(1);

    	if (i == ((champ.barHealth/8)-1)) {
    		shadowOAM[i+HEALTHBARTILES].attr2 = ATTR2_TILEID((champ.barHealth%8),4) | ATTR2_PALROW(champ.barColor) | ATTR2_PRIORITY(1);
    	}
	}	

	// player.health--;
	// champ.health--;

	// Health Bar Backdrop
	shadowOAM[HEALTHBARTILES*2].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[HEALTHBARTILES*2].attr1 = HEALTHCOL | ATTR1_TINY;
    shadowOAM[HEALTHBARTILES*2].attr2 = ATTR2_TILEID(1,6) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+1].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+1].attr1 = (HEALTHCOL+8) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+1].attr2 = ATTR2_TILEID(1,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+2].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+2].attr1 = (HEALTHCOL+16) | ATTR1_SMALL;
    shadowOAM[(HEALTHBARTILES*2)+2].attr2 = ATTR2_TILEID(0,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+3].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+3].attr1 = (HEALTHCOL+48) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+3].attr2 = ATTR2_TILEID(0,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+4].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+4].attr1 = (HEALTHCOL+64) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+4].attr2 = ATTR2_TILEID(0,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+5].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+5].attr1 = (HEALTHCOL+72) | ATTR1_TINY | ATTR1_HFLIP;
    shadowOAM[(HEALTHBARTILES*2)+5].attr2 = ATTR2_TILEID(1,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+6].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+6].attr1 = (HEALTHCOL+80) | ATTR1_TINY | ATTR1_HFLIP;
    shadowOAM[(HEALTHBARTILES*2)+6].attr2 = ATTR2_TILEID(1,6) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+7].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+7].attr1 = (HEALTHCOL+8) | ATTR1_SMALL;
    shadowOAM[(HEALTHBARTILES*2)+7].attr2 = ATTR2_TILEID(2,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+8].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+8].attr1 = (HEALTHCOL+40) | ATTR1_SMALL;
    shadowOAM[(HEALTHBARTILES*2)+8].attr2 = ATTR2_TILEID(2,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+9].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+9].attr1 = (HEALTHCOL+72) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+9].attr2 = ATTR2_TILEID(2,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);

	// Health Bar Backdrop
	shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES].attr1 = HEALTHCOL2 | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES].attr2 = ATTR2_TILEID(1,6) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+1].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+1].attr1 = (HEALTHCOL2+8) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+1].attr2 = ATTR2_TILEID(1,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+2].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+2].attr1 = (HEALTHCOL2+16) | ATTR1_SMALL;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+2].attr2 = ATTR2_TILEID(0,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+3].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+3].attr1 = (HEALTHCOL2+48) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+3].attr2 = ATTR2_TILEID(0,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+4].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+4].attr1 = (HEALTHCOL2+64) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+4].attr2 = ATTR2_TILEID(0,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+5].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+5].attr1 = (HEALTHCOL2+72) | ATTR1_TINY | ATTR1_HFLIP;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+5].attr2 = ATTR2_TILEID(1,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+6].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+6].attr1 = (HEALTHCOL2+80) | ATTR1_TINY | ATTR1_HFLIP;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+6].attr2 = ATTR2_TILEID(1,6) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+7].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+7].attr1 = (HEALTHCOL2+8) | ATTR1_SMALL;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+7].attr2 = ATTR2_TILEID(2,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+8].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+8].attr1 = (HEALTHCOL2+40) | ATTR1_SMALL;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+8].attr2 = ATTR2_TILEID(2,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+9].attr0 = HEALTHROW | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+9].attr1 = (HEALTHCOL2+72) | ATTR1_TINY;
    shadowOAM[(HEALTHBARTILES*2)+HEALTHBARSPRITES+9].attr2 = ATTR2_TILEID(2,5) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);


    // FIGHT
    if (gameplayState == GAMESTART) {
	    if (champ.colOffset < 60 && champ.colOffset > 40) {
			shadowOAM[127].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
			shadowOAM[127].attr1 = ((SCREENWIDTH/2 - 32) - (champ.colOffset*4 - 40*4)) | ATTR1_LARGE;
			shadowOAM[127].attr2 = ATTR2_TILEID(0,11) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
	    } else if (champ.colOffset <= 40 && champ.colOffset > 20) {
			shadowOAM[127].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
			shadowOAM[127].attr1 = ((SCREENWIDTH/2 - 32)) | ATTR1_LARGE;
			shadowOAM[127].attr2 = ATTR2_TILEID(0,11) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
	    } else if (champ.colOffset <= 20) {
	    	shadowOAM[127].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
			shadowOAM[127].attr1 = ((SCREENWIDTH/2 - 32) + (20*4 - champ.colOffset*4)) | ATTR1_LARGE;
			shadowOAM[127].attr2 = ATTR2_TILEID(0,11) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
	    }
	}

	// TIME UP
	if (gameTime <= 0) {
		if (timeUpTime > 0) {
			timeUpTime--;
		}
		gameplayState = GAMELOSE;
		if (timeUpTime > 40) {
			shadowOAM[120].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
			shadowOAM[120].attr1 = ((SCREENWIDTH/2 - 32) - (timeUpTime*4 - 40*4)-8) | ATTR1_LARGE;
			shadowOAM[120].attr2 = ATTR2_TILEID(4,11) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
			shadowOAM[121].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[121].attr1 = (((SCREENWIDTH/2 - 32) - (timeUpTime*4 - 40*4))+64-8) | ATTR1_SMALL;
			shadowOAM[121].attr2 = ATTR2_TILEID(4,19) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
	    } else if (champ.colOffset <= 40) {
			shadowOAM[120].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
			shadowOAM[120].attr1 = ((SCREENWIDTH/2 - 32)-8) | ATTR1_LARGE;
			shadowOAM[120].attr2 = ATTR2_TILEID(4,11) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
			shadowOAM[121].attr0 = (SCREENHEIGHT/2 - 32) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[121].attr1 = ((SCREENWIDTH/2 - 32)+64-8) | ATTR1_SMALL;
			shadowOAM[121].attr2 = ATTR2_TILEID(4,19) | ATTR2_PALROW(3) | ATTR2_PRIORITY(0);
		}
	}

	// Timer
	shadowOAM[125].attr0 = 4 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[125].attr1 = ((SCREENWIDTH/2 - 14)) | ATTR1_SMALL;
	shadowOAM[125].attr2 = ATTR2_TILEID((gameTime/10)*2,9) | ATTR2_PALROW(3);

	shadowOAM[126].attr0 = 4 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[126].attr1 = ((SCREENWIDTH/2) - 2) | ATTR1_SMALL;
	shadowOAM[126].attr2 = ATTR2_TILEID((gameTime%10)*2,9) | ATTR2_PALROW(3);

	// Omojokun
	shadowOAM[122].attr0 = 13 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
	shadowOAM[122].attr1 = (8) | ATTR1_LARGE;
	shadowOAM[122].attr2 = ATTR2_TILEID(0,23) | ATTR2_PALROW(3);

	// Demundo
	shadowOAM[123].attr0 = 13 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
	shadowOAM[123].attr1 = (175) | ATTR1_LARGE;
	shadowOAM[123].attr2 = ATTR2_TILEID(4,23) | ATTR2_PALROW(3);


	if ((player.barHealth) < (MAXHEALTH/2) + 8) {
		player.barColor = 1;
	}

	if (player.barHealth < MAXHEALTH/3) {
		player.barColor = 0;
	}

	if (champ.barHealth < (MAXHEALTH/2) + 8) {
		champ.barColor = 1;
	}

	if (champ.barHealth < MAXHEALTH/3) {
		champ.barColor = 0;
	}

	barCounter++;

}






// Updates Player
void updatePlayer() {
	// State Machine
        switch(player.aniState) {
            case IDLE:
                playerIdle();
                break;
            case BLOCK:
                playerBlock();
                break;
            case DODGELEFT:
                playerDodgeLeft();
                break;
            case DODGERIGHT:
                playerDodgeRight();
                break;
            case PUNCHLEFT:
                playerPunchLeft();
                break;
            case PUNCHRIGHT:
                playerPunchRight();
                break;
            case HITLEFT:
                playerHitLeft();
                break;
            case HITRIGHT:
            	playerHitRight();
            	break;
            case KO:
                playerKO();
                break;
        }

    if (champ.aniState != KO && gameplayState == GAMEPLAY) {
	    if ((player.aniState == IDLE || player.aniState == BLOCK) && !cheat) {
		   	if (BUTTON_HELD(BUTTON_UP)) {
		    	player.aniState = BLOCK;
		    }

		    if (BUTTON_PRESSED_GAME(BUTTON_UP)) {
		    		
		    }

		    if (BUTTON_RELEASED_GAME(BUTTON_UP) && player.blockExtension <= 0) {
		    	// player.row = player.row - 5;
		    	player.aniState = IDLE;
		    } else if (player.aniState == BLOCK && !(BUTTON_HELD(BUTTON_UP)) && player.blockExtension <= 0) {
		    	player.aniState = IDLE;
		    }
	    }



	    if (BUTTON_PRESSED_GAME(BUTTON_LEFT) && (((player.aniState == IDLE || player.aniState == BLOCK) && player.blockExtension <= 0))) {
	    	goToPlayerDodgeLeft();
	    }

	    if (BUTTON_PRESSED_GAME(BUTTON_RIGHT) && (((player.aniState == IDLE || player.aniState == BLOCK) && player.blockExtension <= 0))) {
	    	goToPlayerDodgeRight();
	    }

	    if (BUTTON_PRESSED_GAME(BUTTON_B) && (((player.aniState == IDLE || player.aniState == BLOCK) && player.blockExtension <= 0)/* || cheat) && (player.aniState != PUNCHLEFT && player.aniState != PUNCHRIGHT*/)) {
	    	goToPlayerPunchLeft();
	    }

	    if (BUTTON_PRESSED_GAME(BUTTON_A) && (((player.aniState == IDLE || player.aniState == BLOCK) && player.blockExtension <= 0)/* || cheat) &&  (player.aniState != PUNCHRIGHT && player.aniState != PUNCHLEFT*/)) {
	    	goToPlayerPunchRight();
	    }

	    if (player.blockExtension > 0) {
	    	player.blockExtension--;
	    }
    }
}


void goToPlayerIdle() {
	// smoothOffset = 0;

	player.aniState = IDLE;
	player.curFrame = 0;
	player.colOffset = 0;

	player.buffer = 0;

}


void playerIdle() {
	player.row = PLAYERSTARTVOFF;
	player.col = PLAYERSTARTHOFF;
	// smoothOffset = 0;


	if (!cheat) {
		if (player.curFrame > 10 || player.curFrame > 5) {
			//player.col++;
			DMANow(3,Idle1Tiles,&CHARBLOCK[0],Idle1TilesLen/2);
    		DMANow(3,Idle1Map,&SCREENBLOCK[7],Idle1MapLen/2);
		}
		if (player.curFrame > 20) {
			DMANow(3,Idle0Tiles,&CHARBLOCK[0],Idle0TilesLen/2);
	    	DMANow(3,Idle0Map,&SCREENBLOCK[7],Idle0MapLen/2);
		}

		if (player.curFrame > 30) {

			DMANow(3,Idle2Tiles,&CHARBLOCK[0],Idle2TilesLen/2);
	    	DMANow(3,Idle2Map,&SCREENBLOCK[7],Idle2MapLen/2);
		}


		if (player.curFrame > 38 || player.curFrame < 5) {
			DMANow(3,Idle0Tiles,&CHARBLOCK[0],Idle0TilesLen/2);
	    	DMANow(3,Idle0Map,&SCREENBLOCK[7],Idle0MapLen/2);
		}
	}
	
	if (cheat) {
		if (player.curFrame > 10 || player.curFrame > 5) {
			//player.col++;
			DMANow(3,IdleS1Tiles,&CHARBLOCK[0],IdleS1TilesLen/2);
    		DMANow(3,IdleS1Map,&SCREENBLOCK[7],IdleS1MapLen/2);
		}
		if (player.curFrame > 20) {
			DMANow(3,IdleS0Tiles,&CHARBLOCK[0],IdleS0TilesLen/2);
	    	DMANow(3,IdleS0Map,&SCREENBLOCK[7],IdleS0MapLen/2);
		}

		if (player.curFrame > 30) {

			DMANow(3,IdleS2Tiles,&CHARBLOCK[0],IdleS2TilesLen/2);
	    	DMANow(3,IdleS2Map,&SCREENBLOCK[7],IdleS2MapLen/2);
		}


		if (player.curFrame > 38 || player.curFrame < 5) {
			DMANow(3,IdleS0Tiles,&CHARBLOCK[0],IdleS0TilesLen/2);
	    	DMANow(3,IdleS0Map,&SCREENBLOCK[7],IdleS0MapLen/2);
		}
	}

	if (((player.curFrame / 10) > 1)) {
		player.colOffset++;
	} else {
		player.colOffset--;
	}


	if (player.curFrame >= 38) {
		player.curFrame = 0;
	}

    player.curFrame++;
}

void playerBlock() {
	player.row = PLAYERSTARTVOFF + 5;
	player.col = PLAYERSTARTHOFF;

	if (!cheat) {
		DMANow(3,Block0Tiles,&CHARBLOCK[0],Block0TilesLen/2);
    	DMANow(3,Block0Map,&SCREENBLOCK[7],Block0MapLen/2);
	}

	if (cheat) {
		DMANow(3,BlockS0Tiles,&CHARBLOCK[0],BlockS0TilesLen/2);
    	DMANow(3,BlockS0Map,&SCREENBLOCK[7],BlockS0MapLen/2);
	}

	if (player.health <= 8) {
		goToPlayerKO();
	}

}


void playerDodgeLeft() {

	if (!cheat) {
		if (player.aniCounter > 2) {
			DMANow(3,Left0Tiles,&CHARBLOCK[0],Left0TilesLen/2);
    		DMANow(3,Left0Map,&SCREENBLOCK[7],Left0MapLen/2);
		}
		if (player.aniCounter > 5) {
			DMANow(3,Left1Tiles,&CHARBLOCK[0],Left1TilesLen/2);
	    	DMANow(3,Left1Map,&SCREENBLOCK[7],Left1MapLen/2);
		}
		if (player.aniCounter > 10) {
			DMANow(3,Left2Tiles,&CHARBLOCK[0],Left2TilesLen/2);
	    	DMANow(3,Left2Map,&SCREENBLOCK[7],Left2MapLen/2);
		}
		if (player.aniCounter > 15) {
			DMANow(3,Left3Tiles,&CHARBLOCK[0],Left3TilesLen/2);
	    	DMANow(3,Left3Map,&SCREENBLOCK[7],Left3MapLen/2);
		}
		if (player.aniCounter > 20) {
			DMANow(3,Left4Tiles,&CHARBLOCK[0],Left4TilesLen/2);
	    	DMANow(3,Left4Map,&SCREENBLOCK[7],Left4MapLen/2);
		}
	}

	if (cheat) {
		if (player.aniCounter > 2) {
			DMANow(3,LeftS0Tiles,&CHARBLOCK[0],LeftS0TilesLen/2);
    		DMANow(3,LeftS0Map,&SCREENBLOCK[7],LeftS0MapLen/2);
		}
		if (player.aniCounter > 5) {
			DMANow(3,LeftS1Tiles,&CHARBLOCK[0],LeftS1TilesLen/2);
	    	DMANow(3,LeftS1Map,&SCREENBLOCK[7],LeftS1MapLen/2);
		}
		if (player.aniCounter > 10) {
			DMANow(3,LeftS2Tiles,&CHARBLOCK[0],LeftS2TilesLen/2);
	    	DMANow(3,LeftS2Map,&SCREENBLOCK[7],LeftS2MapLen/2);
		}
		if (player.aniCounter > 15) {
			DMANow(3,LeftS3Tiles,&CHARBLOCK[0],LeftS3TilesLen/2);
	    	DMANow(3,LeftS3Map,&SCREENBLOCK[7],LeftS3MapLen/2);
		}
		if (player.aniCounter > 20) {
			DMANow(3,LeftS4Tiles,&CHARBLOCK[0],LeftS4TilesLen/2);
	    	DMANow(3,LeftS4Map,&SCREENBLOCK[7],LeftS4MapLen/2);
		}
	}	

	if (BUTTON_PRESSED_GAME(BUTTON_B)) {
		player.buffer = PUNCHLEFT;
	}

	if (BUTTON_PRESSED_GAME(BUTTON_A)) {
		player.buffer = PUNCHRIGHT;
	}

	if (player.aniCounter > 25 && !player.buffer) {
		smoothOffset += DODGEOFFSET;
		player.aniState = IDLE;
	} else if (player.aniCounter > 25 && player.buffer == PUNCHLEFT) {
		goToPlayerPunchLeft();
	} else if (player.aniCounter > 25 && player.buffer == PUNCHRIGHT) {
		goToPlayerPunchRight();
	}

	player.aniCounter++;
}

void goToPlayerDodgeLeft() {
	if (!cheat) {
		playSoundA(PlayerDodgeSound,PLAYERDODGESOUNDLEN,PLAYERDODGESOUNDFREQ, 0);
	}

	if (cheat) {
		playSoundA(CheatDodgeSound,CHEATDODGESOUNDLEN,CHEATDODGESOUNDFREQ, 0);
	}

	champ.feintCount = 0;

	smoothOffset -= DODGEOFFSET;

	player.buffer = 0;
	player.row = PLAYERSTARTVOFF + 5;
	player.col = PLAYERSTARTHOFF - 32;
	player.aniCounter = 0;
	player.aniState = DODGELEFT;
}


void playerDodgeRight() {

	if (!cheat) {
		if (player.aniCounter > 2) {
			DMANow(3,Right0Tiles,&CHARBLOCK[0],Right0TilesLen/2);
	    	DMANow(3,Right0Map,&SCREENBLOCK[7],Right0MapLen/2);
		}

		if (player.aniCounter > 5) {
			DMANow(3,Right1Tiles,&CHARBLOCK[0],Right1TilesLen/2);
	    	DMANow(3,Right1Map,&SCREENBLOCK[7],Right1MapLen/2);
		}
		if (player.aniCounter > 10) {
			DMANow(3,Right2Tiles,&CHARBLOCK[0],Right2TilesLen/2);
	    	DMANow(3,Right2Map,&SCREENBLOCK[7],Right2MapLen/2);
		}
		if (player.aniCounter > 15) {
			DMANow(3,Right3Tiles,&CHARBLOCK[0],Right3TilesLen/2);
	    	DMANow(3,Right3Map,&SCREENBLOCK[7],Right3MapLen/2);
		}
		// if (player.aniCounter > 20) {
		// 	DMANow(3,Right4Tiles,&CHARBLOCK[0],Right4TilesLen/2);
	 	//    	DMANow(3,Right4Map,&SCREENBLOCK[7],Right4MapLen/2);
		// }
	}

	if (cheat) {
		if (player.aniCounter > 2) {
			DMANow(3,RightS0Tiles,&CHARBLOCK[0],RightS0TilesLen/2);
	    	DMANow(3,RightS0Map,&SCREENBLOCK[7],RightS0MapLen/2);
		}

		if (player.aniCounter > 5) {
			DMANow(3,RightS1Tiles,&CHARBLOCK[0],RightS1TilesLen/2);
	    	DMANow(3,RightS1Map,&SCREENBLOCK[7],RightS1MapLen/2);
		}
		if (player.aniCounter > 10) {
			DMANow(3,RightS2Tiles,&CHARBLOCK[0],RightS2TilesLen/2);
	    	DMANow(3,RightS2Map,&SCREENBLOCK[7],RightS2MapLen/2);
		}
		if (player.aniCounter > 15) {
			DMANow(3,RightS3Tiles,&CHARBLOCK[0],RightS3TilesLen/2);
	    	DMANow(3,RightS3Map,&SCREENBLOCK[7],RightS3MapLen/2);
		}
		// if (player.aniCounter > 20) {
		// 	DMANow(3,RightS4Tiles,&CHARBLOCK[0],RightS4TilesLen/2);
	 	//    	DMANow(3,RightS4Map,&SCREENBLOCK[7],RightS4MapLen/2);
		// }
	}

	if (BUTTON_PRESSED_GAME(BUTTON_B)) {
		player.buffer = PUNCHLEFT;
	}

	if (BUTTON_PRESSED_GAME(BUTTON_A)) {
		player.buffer = PUNCHRIGHT;
	}

	if (player.aniCounter > 25 && !player.buffer) {
		smoothOffset -= DODGEOFFSET;
		player.aniState = IDLE;
	} else if (player.aniCounter > 25 && player.buffer == PUNCHLEFT) {
		goToPlayerPunchLeft();
	} else if (player.aniCounter > 25 && player.buffer == PUNCHRIGHT) {
		goToPlayerPunchRight();
	}

	player.aniCounter++;

}

void goToPlayerDodgeRight() {
	if (!cheat) {
		playSoundA(PlayerDodgeSound,PLAYERDODGESOUNDLEN,PLAYERDODGESOUNDFREQ, 0);
	}

	if (cheat) {
		playSoundA(CheatDodgeSound,CHEATDODGESOUNDLEN,CHEATDODGESOUNDFREQ, 0);
	}
	champ.feintCount = 0;

	smoothOffset += DODGEOFFSET;

	player.buffer = 0;
	player.row = PLAYERSTARTVOFF + 13;
	player.col = PLAYERSTARTHOFF;
	player.aniCounter = 0;
	player.aniState = DODGERIGHT;
}


void playerPunchLeft() {
	player.row = PLAYERSTARTVOFF + 11;
	player.col = PLAYERSTARTHOFF;

	if (player.aniCounter == 10) {
		if (champ.aniState != BLOCK) {
			if ((champ.aniState == PUNCHLEFT || champ.aniState == PUNCHRIGHT) && champ.aniCounter >= 33) {
				champ.health -= SOFTHIT;
				if (!cheat) {
					playSoundA(PlayerPunchSound2,PLAYERPUNCHSOUND2LEN,PLAYERPUNCHSOUND2FREQ, 0);
				}
				if (cheat) {
					playSoundA(CheatPunchSound,CHEATPUNCHSOUNDLEN,CHEATPUNCHSOUNDFREQ, 0);
				}
				goToChampHitLeft();
			}

			if (champ.aniState == IDLE && ((rand() % 10) == 0)) {
				champ.health -= SOFTHIT;
				if (!cheat) {
					playSoundA(PlayerPunchSound1,PLAYERPUNCHSOUND1LEN,PLAYERPUNCHSOUND1FREQ, 0);
				}
				if (cheat) {
					playSoundA(CheatPunchSound,CHEATPUNCHSOUNDLEN,CHEATPUNCHSOUNDFREQ, 0);
				}
				goToChampHitLeft();
			} else if (champ.aniState == IDLE) {
				if (!cheat) {
					playSoundA(BlockSound,BLOCKSOUNDLEN,BLOCKSOUNDFREQ, 0);
				}
				if (cheat) {
					playSoundA(CheatBlockSound,CHEATBLOCKSOUNDLEN,CHEATBLOCKSOUNDFREQ, 0);
				}
				goToChampBlock();
			}
		} 

		if (champ.aniState == BLOCK) {
			player.punchExtension = 10;
		}
		
	}

	

	if (!cheat) {
		if (player.aniCounter > 8) {
			player.row = PLAYERSTARTVOFF - 20;
			DMANow(3,PunchLeft0Tiles,&CHARBLOCK[0],PunchLeft0TilesLen/2);
	    	DMANow(3,PunchLeft0Map,&SCREENBLOCK[7],PunchLeft0MapLen/2);
		}

		if (player.aniCounter > 17 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF - 18;
			DMANow(3,PunchLeft1Tiles,&CHARBLOCK[0],PunchLeft1TilesLen/2);
	    	DMANow(3,PunchLeft1Map,&SCREENBLOCK[7],PunchLeft1MapLen/2);
		}
		if (player.aniCounter >= 16 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 11;
		}
		if (player.aniCounter > 23 + player.punchExtension) {
				player.row = PLAYERSTARTVOFF + 11;

			DMANow(3,PunchLeft2Tiles,&CHARBLOCK[0],PunchLeft2TilesLen/2);
	    	DMANow(3,PunchLeft2Map,&SCREENBLOCK[7],PunchLeft2MapLen/2);
		}
		if (player.aniCounter > 27 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 8;
			DMANow(3,PunchLeft3Tiles,&CHARBLOCK[0],PunchLeft3TilesLen/2);
	    	DMANow(3,PunchLeft3Map,&SCREENBLOCK[7],PunchLeft3MapLen/2);
		}
	}

	if (cheat) {
		if (player.aniCounter > 8) {
			player.row = PLAYERSTARTVOFF - 20;
			DMANow(3,PunchLeftS0Tiles,&CHARBLOCK[0],PunchLeftS0TilesLen/2);
    		DMANow(3,PunchLeftS0Map,&SCREENBLOCK[7],PunchLeftS0MapLen/2);
		}
		if (player.aniCounter > 17 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF - 18;
			DMANow(3,PunchLeftS1Tiles,&CHARBLOCK[0],PunchLeftS1TilesLen/2);
	    	DMANow(3,PunchLeftS1Map,&SCREENBLOCK[7],PunchLeftS1MapLen/2);
		}
		if (player.aniCounter >= 16 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 11;
		}
		if (player.aniCounter > 23 + player.punchExtension) {
				player.row = PLAYERSTARTVOFF + 11;

			DMANow(3,PunchLeftS2Tiles,&CHARBLOCK[0],PunchLeftS2TilesLen/2);
	    	DMANow(3,PunchLeftS2Map,&SCREENBLOCK[7],PunchLeftS2MapLen/2);
		}
		if (player.aniCounter > 27 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 8;
			DMANow(3,PunchLeftS3Tiles,&CHARBLOCK[0],PunchLeftS3TilesLen/2);
	    	DMANow(3,PunchLeftS3Map,&SCREENBLOCK[7],PunchLeftS3MapLen/2);
		}
	}


	// Dodge Buffer
	if (BUTTON_PRESSED_GAME(BUTTON_LEFT)) {
		player.buffer = DODGELEFT;
	}

	if (BUTTON_PRESSED_GAME(BUTTON_RIGHT)) {
		player.buffer = DODGERIGHT;
	}
	
	if (player.aniCounter > 30 + player.punchExtension && !player.buffer) {
		player.aniState = IDLE;
	} else if (player.aniCounter > 30 + player.punchExtension && player.buffer == DODGELEFT) {
		goToPlayerDodgeLeft();
	} else if (player.aniCounter > 30 + player.punchExtension && player.buffer == DODGERIGHT) {
		goToPlayerDodgeRight();
	}




	player.aniCounter++;

}

void goToPlayerPunchLeft() {
	champ.feintCount = 0;

	player.buffer = 0;
	player.aniCounter = 0;
	player.punchExtension = 0;
	player.aniState = PUNCHLEFT;

	
}


void playerPunchRight() {

	// player.row = PLAYERSTARTVOFF + 11;
	player.col = PLAYERSTARTHOFF;

	if (player.aniCounter == 10) {
		if (champ.aniState != BLOCK) {
			if ((champ.aniState == PUNCHLEFT || champ.aniState == PUNCHRIGHT) && champ.aniCounter >= 33) {
				champ.health -= SOFTHIT;
				if (!cheat) {
					playSoundA(PlayerPunchSound2,PLAYERPUNCHSOUND2LEN,PLAYERPUNCHSOUND2FREQ, 0);
				}
				if (cheat) {
					playSoundA(CheatPunchSound,CHEATPUNCHSOUNDLEN,CHEATPUNCHSOUNDFREQ, 0);
				}
				goToChampHitRight();
			}

			if (champ.aniState == IDLE && ((rand() % 10) == 0)) {
				champ.health -= SOFTHIT;
				if (!cheat) {
					playSoundA(PlayerPunchSound1,PLAYERPUNCHSOUND1LEN,PLAYERPUNCHSOUND1FREQ, 0);
				}
				if (cheat) {
					playSoundA(CheatPunchSound,CHEATPUNCHSOUNDLEN,CHEATPUNCHSOUNDFREQ, 0);
				}
				goToChampHitRight();
			} else if (champ.aniState == IDLE) {
				if (!cheat) {
					playSoundA(BlockSound,BLOCKSOUNDLEN,BLOCKSOUNDFREQ, 0);
				}
				if (cheat) {
					playSoundA(CheatBlockSound,CHEATBLOCKSOUNDLEN,CHEATBLOCKSOUNDFREQ, 0);
				}
				goToChampBlock();
			}
		}

		if (champ.aniState == BLOCK) {
			player.punchExtension = 10;
		}
	}


	if (!cheat) {
		if (player.aniCounter > 8) {
			player.row = PLAYERSTARTVOFF - 18;
			DMANow(3,PunchRight0Tiles,&CHARBLOCK[0],PunchRight0TilesLen/2);
	    	DMANow(3,PunchRight0Map,&SCREENBLOCK[7],PunchRight0MapLen/2);
		}

		if (player.aniCounter > 13 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF - 25;

			DMANow(3,PunchRight1Tiles,&CHARBLOCK[0],PunchRight1TilesLen/2);
	    	DMANow(3,PunchRight1Map,&SCREENBLOCK[7],PunchRight1MapLen/2);
		}

		if (player.aniCounter == 18 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF;
		}
		if (player.aniCounter > 18 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF;

			DMANow(3,PunchRight2Tiles,&CHARBLOCK[0],PunchRight2TilesLen/2);
	    	DMANow(3,PunchRight2Map,&SCREENBLOCK[7],PunchRight2MapLen/2);
		}
		if (player.aniCounter == 23 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 1;
		}
		if (player.aniCounter > 23 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 1;

			DMANow(3,PunchRight3Tiles,&CHARBLOCK[0],PunchRight3TilesLen/2);
	    	DMANow(3,PunchRight3Map,&SCREENBLOCK[7],PunchRight3MapLen/2);
		}
	}

	if (cheat) {
		if (player.aniCounter > 8) {
			player.row = PLAYERSTARTVOFF - 18;
			DMANow(3,PunchRightS0Tiles,&CHARBLOCK[0],PunchRightS0TilesLen/2);
	    	DMANow(3,PunchRightS0Map,&SCREENBLOCK[7],PunchRightS0MapLen/2);
		}

		if (player.aniCounter > 13 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF - 25;

			DMANow(3,PunchRightS1Tiles,&CHARBLOCK[0],PunchRightS1TilesLen/2);
	    	DMANow(3,PunchRightS1Map,&SCREENBLOCK[7],PunchRightS1MapLen/2);
		}

		if (player.aniCounter == 18 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF;
		}
		if (player.aniCounter > 18 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF;

			DMANow(3,PunchRightS2Tiles,&CHARBLOCK[0],PunchRightS2TilesLen/2);
	    	DMANow(3,PunchRightS2Map,&SCREENBLOCK[7],PunchRightS2MapLen/2);
		}
		if (player.aniCounter == 23 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 1;
		}
		if (player.aniCounter > 23 + player.punchExtension) {
			player.row = PLAYERSTARTVOFF + 1;

			DMANow(3,PunchRightS3Tiles,&CHARBLOCK[0],PunchRightS3TilesLen/2);
	    	DMANow(3,PunchRightS3Map,&SCREENBLOCK[7],PunchRightS3MapLen/2);
		}
	}

	// Dodge Buffer
	if (BUTTON_PRESSED_GAME(BUTTON_LEFT)) {
		player.buffer = DODGELEFT;
	}

	if (BUTTON_PRESSED_GAME(BUTTON_RIGHT)) {
		player.buffer = DODGERIGHT;
	}

	if (player.aniCounter > 30 + player.punchExtension && !player.buffer) {
		player.aniState = IDLE;
	} else if (player.aniCounter > 30 + player.punchExtension && player.buffer == DODGELEFT) {
		goToPlayerDodgeLeft();
	} else if (player.aniCounter > 30 + player.punchExtension && player.buffer == DODGERIGHT) {
		goToPlayerDodgeRight();
	}



	player.aniCounter++;
}

void goToPlayerPunchRight() {
	champ.feintCount = 0;

	player.buffer = 0;
	player.punchExtension = 0;
	player.aniCounter = 0;
	player.aniState = PUNCHRIGHT;

}


void playerHitLeft() {
	player.row = PLAYERSTARTVOFF + 20;

	if (player.aniCounter > 0) {
		DMANow(3,PlayerHitLeft0Tiles,&CHARBLOCK[0],PlayerHitLeft0TilesLen/2);
    	DMANow(3,PlayerHitLeft0Map,&SCREENBLOCK[7],PlayerHitLeft0MapLen/2);
	}

	if (player.aniCounter > 4) {
		DMANow(3,PlayerHitLeft1Tiles,&CHARBLOCK[0],PlayerHitLeft1TilesLen/2);
    	DMANow(3,PlayerHitLeft1Map,&SCREENBLOCK[7],PlayerHitLeft1MapLen/2);
	}
	if (player.aniCounter > 8) {
		DMANow(3,PlayerHitLeft2Tiles,&CHARBLOCK[0],PlayerHitLeft2TilesLen/2);
    	DMANow(3,PlayerHitLeft2Map,&SCREENBLOCK[7],PlayerHitLeft2MapLen/2);
	}
	if (player.aniCounter > 12) {
		DMANow(3,PlayerHitLeft3Tiles,&CHARBLOCK[0],PlayerHitLeft3TilesLen/2);
    	DMANow(3,PlayerHitLeft3Map,&SCREENBLOCK[7],PlayerHitLeft3MapLen/2);
	}

	if (player.aniCounter > 16) {
		DMANow(3,PlayerHitLeft4Tiles,&CHARBLOCK[0],PlayerHitLeft4TilesLen/2);
    	DMANow(3,PlayerHitLeft4Map,&SCREENBLOCK[7],PlayerHitLeft4MapLen/2);
	}

	if (player.aniCounter > 30) {
		if (player.health > 8) {
			player.aniState = IDLE;
		} else {
			goToPlayerKO();
		}
	}

	player.aniCounter++;
}

void goToPlayerHitLeft() {
	smoothOffset += PLAYERHITOFFSET;

	player.aniCounter = 0;
	player.aniState = HITLEFT;
}


void playerHitRight() {
player.row = PLAYERSTARTVOFF + 20;

	if (player.aniCounter > 0) {
		DMANow(3,PlayerHitRight0Tiles,&CHARBLOCK[0],PlayerHitRight0TilesLen/2);
    	DMANow(3,PlayerHitRight0Map,&SCREENBLOCK[7],PlayerHitRight0MapLen/2);
	}

	if (player.aniCounter > 4) {
		DMANow(3,PlayerHitRight1Tiles,&CHARBLOCK[0],PlayerHitRight1TilesLen/2);
    	DMANow(3,PlayerHitRight1Map,&SCREENBLOCK[7],PlayerHitRight1MapLen/2);
	}
	if (player.aniCounter > 8) {
		DMANow(3,PlayerHitRight2Tiles,&CHARBLOCK[0],PlayerHitRight2TilesLen/2);
    	DMANow(3,PlayerHitRight2Map,&SCREENBLOCK[7],PlayerHitRight2MapLen/2);
	}
	if (player.aniCounter > 12) {
		DMANow(3,PlayerHitRight3Tiles,&CHARBLOCK[0],PlayerHitRight3TilesLen/2);
    	DMANow(3,PlayerHitRight3Map,&SCREENBLOCK[7],PlayerHitRight3MapLen/2);
	}

	if (player.aniCounter > 30) {
		if (player.health > 8) {
			player.aniState = IDLE;
		} else {
			goToPlayerKO();
		}
	}

	player.aniCounter++;
}

void goToPlayerHitRight() {
	smoothOffset -= PLAYERHITOFFSET;


	player.aniCounter = 0;
	player.aniState = HITRIGHT;
}


void playerKO() {
	if (player.aniCounter > 0) {
			player.row = PLAYERSTARTVOFF - 28;
			player.col = PLAYERSTARTHOFF - 48;

			DMANow(3,PlayerKO0Tiles,&CHARBLOCK[0],PlayerKO0TilesLen/2);
	    	DMANow(3,PlayerKO0Map,&SCREENBLOCK[7],PlayerKO0MapLen/2);
		}

		if (player.aniCounter > 6) {
			// player.row = PLAYERSTARTVOFF - 25;

			player.col = PLAYERSTARTHOFF - 78;


			DMANow(3,PlayerKO1Tiles,&CHARBLOCK[0],PlayerKO1TilesLen/2);
	    	DMANow(3,PlayerKO1Map,&SCREENBLOCK[7],PlayerKO1MapLen/2);
		}

		if (player.aniCounter > 18) {
			player.row = PLAYERSTARTVOFF - 18;
			DMANow(3,PlayerKO2Tiles,&CHARBLOCK[0],PlayerKO2TilesLen/2);
	    	DMANow(3,PlayerKO2Map,&SCREENBLOCK[7],PlayerKO2MapLen/2);
		}

		player.aniCounter++;
}

void goToPlayerKO() {

	player.row = PLAYERSTARTVOFF - 28;
	// player.col = PLAYERSTARTHOFF - 68;


	player.aniCounter = 0;
	player.aniState = KO;
}




















// Updates Champ
void updateChamp() {
	// State Machine
        switch(champ.aniState) {
            case IDLE:
                champIdle();
                break;
            case BLOCK:
                champBlock();
                break;
            case DODGELEFT:
                champDodgeLeft();
                break;
            case DODGERIGHT:
                champDodgeRight();
                break;
            case PUNCHLEFT:
                champPunchLeft();
                break;
            case PUNCHRIGHT:
                champPunchRight();
                break;
            case HITLEFT:
                champHitLeft();
                break;
            case HITRIGHT:
            	champHitRight();
            	break;
            case KO:
                champKO();
                break;
        }

    // player.aniState = IDLE;


    // if (champ.aniState == IDLE && (player.aniState == PUNCHLEFT || player.aniState == PUNCHRIGHT)) {
    // 	goToChampBlock();
    // }



    // if (BUTTON_PRESSED_GAME(BUTTON_L)) {
    // 	goToChampPunchLeft();
    // }

    // if (BUTTON_PRESSED_GAME(BUTTON_R)) {
    // 	goToChampPunchRight();
    // }

    // if (BUTTON_PRESSED_GAME(BUTTON_RIGHT) && (player.aniState == IDLE || player.aniState == BLOCK)) {
    // 	goToPlayerDodgeRight();
    // }

    // if (BUTTON_PRESSED_GAME(BUTTON_B) && (player.aniState == IDLE || player.aniState == BLOCK)) {
    // 	goToPlayerPunchLeft();
    // }

    // if (BUTTON_PRESSED_GAME(BUTTON_A) && (player.aniState == IDLE || player.aniState == BLOCK)) {
    // 	goToPlayerPunchRight();
    // }



	// 	shadowOAM[0].attr0 = player.row | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
	//     shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
	//     shadowOAM[0].attr2 = ATTR2_TILEID(player.aniState*2,0) | ATTR2_PALROW(1);
}









void champIdle() {
	champ.row = 0;
	champ.col = 0;

	// DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
 //    DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);

	if (champ.curFrame < 10) {
		DMANow(3,ChampIdle1Tiles,&CHARBLOCK[1],ChampIdle1TilesLen/2);
    	DMANow(3,ChampIdle1Map,&SCREENBLOCK[15],ChampIdle1MapLen/2);
	} else if (champ.curFrame < 20) {
		DMANow(3,ChampIdle2Tiles,&CHARBLOCK[1],ChampIdle2TilesLen/2);
    	DMANow(3,ChampIdle2Map,&SCREENBLOCK[15],ChampIdle2MapLen/2);
	} else if (champ.curFrame < 30) {
		DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
    	DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);
	} else if (champ.curFrame < 40 || champ.curFrame < 5) {
		DMANow(3,ChampIdle3Tiles,&CHARBLOCK[1],ChampIdle3TilesLen/2);
    	DMANow(3,ChampIdle3Map,&SCREENBLOCK[15],ChampIdle3MapLen/2);
	} else if (champ.curFrame < 50) {
		DMANow(3,ChampIdle4Tiles,&CHARBLOCK[1],ChampIdle4TilesLen/2);
    	DMANow(3,ChampIdle4Map,&SCREENBLOCK[15],ChampIdle4MapLen/2);
	} else if (champ.curFrame < 60) {
		DMANow(3,ChampIdle3Tiles,&CHARBLOCK[1],ChampIdle3TilesLen/2);
    	DMANow(3,ChampIdle3Map,&SCREENBLOCK[15],ChampIdle3MapLen/2);
	} else if (champ.curFrame < 70) {
		DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
    	DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);
	} else if (champ.curFrame <= 80) {
		DMANow(3,ChampIdle2Tiles,&CHARBLOCK[1],ChampIdle2TilesLen/2);
    	DMANow(3,ChampIdle2Map,&SCREENBLOCK[15],ChampIdle2MapLen/2);
	}


	// if (((champ.curFrame / 10) > 1)) {
	// 	champ.colOffset++;
	// } else {
	// 	champ.colOffset--;
	// }


	// Random Attack chance
	if ((rand() % 100 == 0 || champ.timeoutPunch > 200) && gameplayState == GAMEPLAY) {
		champ.timeoutPunch = 0;
		champAI();
	}



	if (champ.curFrame >= 80) {
		champ.curFrame = 1;
	}

    champ.curFrame++;
    champ.timeoutPunch++;


}


// Controls the champ offensively
void champAI() {
	if (player.aniState != KO) {
		champ.punchType = 0;
		// Level 0 AI 50-50s
		if (champ.barHealth > (MAXHEALTH/2) + 8) {
			if(rand() & 1) {
				goToChampPunchLeft();
			} else {
				goToChampPunchRight();
			}
		} else if (champ.barHealth > MAXHEALTH/3) {
			if(rand() % 4 > 1) {
				champ.feintCount = 1;
			}
			if (rand() & 1) {
				goToChampPunchLeft();
			} else {
				goToChampPunchRight();
			}
		} else {
			champ.feintCount = rand() % 10;
			if (rand() & 1) {
				goToChampPunchLeft();
			} else {
				goToChampPunchRight();
			}
		}
	}
}


void goToChampIdle() {
	champ.aniState = IDLE;
	champ.curFrame = 0;
	champ.colOffset = 0;
	champ.timeoutPunch = 0;

}


void champBlock() {
	champ.col = 0;
	champ.row = 15;


	if (champ.aniCounter > 0) {
		DMANow(3,ChampBlock0Tiles,&CHARBLOCK[1],ChampBlock0TilesLen/2);
   		DMANow(3,ChampBlock0Map,&SCREENBLOCK[15],ChampBlock0MapLen/2);
   	}

   	// if (player.aniState == PUNCHLEFT || player.aniState == PUNCHRIGHT) {
   	// 	champ.aniCounter = 0;
   	// }

   	if (champ.aniCounter > 10) {
   		if (rand() % 3 > 0) {
   			champAI();
   		} else {
   			goToChampIdle();
   		}
   	}

   	champ.aniCounter++;
}


void goToChampBlock() {
	champ.aniCounter = 0;
	champ.aniState = BLOCK;

}

void champDodgeLeft() {
}
void champDodgeRight() {
}

void champPunchLeft() {
	champ.row = 10;
	champ.col = -40;

	if (champ.aniCounter == 1) {
		if (champ.feintCount > 0) {
			playSoundA(ChampFeintSound,CHAMPFEINTSOUNDLEN,CHAMPFEINTSOUNDFREQ, 0);
		} else {
			playSoundA(ChampWindSound,CHAMPWINDSOUNDLEN,CHAMPWINDSOUNDFREQ, 0);
		}
	}

	// DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
 //    DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);

	if (champ.aniCounter < 5) {
		DMANow(3,ChampLeftPunch0Tiles,&CHARBLOCK[1],ChampLeftPunch0TilesLen/2);
    	DMANow(3,ChampLeftPunch0Map,&SCREENBLOCK[15],ChampLeftPunch0MapLen/2);
	} else if (champ.aniCounter < 30) {
		DMANow(3,ChampLeftPunch1Tiles,&CHARBLOCK[1],ChampLeftPunch1TilesLen/2);
    	DMANow(3,ChampLeftPunch1Map,&SCREENBLOCK[15],ChampLeftPunch1MapLen/2);
	} else if (champ.aniCounter < 35) {
		DMANow(3,ChampLeftPunch2Tiles,&CHARBLOCK[1],ChampLeftPunch2TilesLen/2);
    	DMANow(3,ChampLeftPunch2Map,&SCREENBLOCK[15],ChampLeftPunch2MapLen/2);
	} else if (champ.aniCounter < 65) {
		champ.col = -10;
		DMANow(3,ChampLeftPunch3Tiles,&CHARBLOCK[1],ChampLeftPunch3TilesLen/2);
    	DMANow(3,ChampLeftPunch3Map,&SCREENBLOCK[15],ChampLeftPunch3MapLen/2);
    	if (champ.aniCounter == 64) {
    		champ.col = 0;
			champ.row = 20;
    	}
	} else if (champ.aniCounter <= 75) {
		champ.col = 0;
		champ.row = 20;
		DMANow(3,ChampLeftPunch4Tiles,&CHARBLOCK[1],ChampLeftPunch4TilesLen/2);
    	DMANow(3,ChampLeftPunch4Map,&SCREENBLOCK[15],ChampLeftPunch4MapLen/2);
	}


	// if (((champ.curFrame / 10) > 1)) {
	// 	champ.colOffset++;
	// } else {
	// 	champ.colOffset--;
	// }



	// Level 1 Champ AI
	if (champ.aniCounter == 10 && champ.punchType == 1) {
		champ.punchType = 0;
		playSoundA(ChampFeintSound,CHAMPFEINTSOUNDLEN,CHAMPFEINTSOUNDFREQ, 0);
		goToChampPunchRight();
	}
	// Level 2 Champ AI
	if (champ.aniCounter == 12 && champ.feintCount > 0) {
		champ.feintCount--;
		// playSoundA(ChampFeintSound,CHAMPFEINTSOUNDLEN,CHAMPFEINTSOUNDFREQ, 0);
		goToChampPunchRight();
	}


	if (champ.aniCounter == 20 && cheat) {
		goToPlayerDodgeLeft();
	}


	if (champ.aniCounter == 32) {
		if (player.aniState != BLOCK && player.aniState != DODGELEFT && !cheat) {
			playSoundA(ChampPunchSound0,CHAMPPUNCHSOUND0LEN,CHAMPPUNCHSOUND0FREQ, 0);
			goToPlayerHitLeft();
			player.health -= HARDHIT;
		}
		if (player.aniState == BLOCK && !cheat) {
			player.health -= SOFTHIT;
			playSoundA(BlockSound,BLOCKSOUNDLEN,BLOCKSOUNDFREQ, 0);
			player.blockExtension = 43;
		}

    }

	if (champ.aniCounter < 7 && (player.aniState == DODGELEFT || player.aniState == DODGERIGHT)) {
    	champ.feintCount = 0;
    } 

    if (champ.aniCounter >= 75) {
		goToChampIdle();
	}

    champ.aniCounter++;

}


void goToChampPunchLeft() {
	champ.aniCounter = 0;
	champ.aniState = PUNCHLEFT;

}


void champPunchRight() {
	champ.row = 20;
	champ.col = 34;


	if (champ.aniCounter == 1) {
		if (champ.feintCount > 0) {
			playSoundA(ChampFeintSound,CHAMPFEINTSOUNDLEN,CHAMPFEINTSOUNDFREQ, 0);
		} else {
			playSoundA(ChampWindSound,CHAMPWINDSOUNDLEN,CHAMPWINDSOUNDFREQ, 0);
		}
	}

	// DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
 //    DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);

	if (champ.aniCounter < 5) {
		champ.row = 30;
		DMANow(3,ChampRightPunch0Tiles,&CHARBLOCK[1],ChampRightPunch0TilesLen/2);
    	DMANow(3,ChampRightPunch0Map,&SCREENBLOCK[15],ChampRightPunch0MapLen/2);
	} else if (champ.aniCounter < 10) {
		DMANow(3,ChampRightPunch1Tiles,&CHARBLOCK[1],ChampRightPunch1TilesLen/2);
    	DMANow(3,ChampRightPunch1Map,&SCREENBLOCK[15],ChampRightPunch1MapLen/2);

	} else if (champ.aniCounter < 30) {
			// champ.col = -50;

		DMANow(3,ChampRightPunch2Tiles,&CHARBLOCK[1],ChampRightPunch2TilesLen/2);
    	DMANow(3,ChampRightPunch2Map,&SCREENBLOCK[15],ChampRightPunch2MapLen/2);
    	if (champ.aniCounter == 29) {
    		champ.col = -50;
			champ.row = 10;
    	}
	} else if (champ.aniCounter < 35) {
			champ.col = -50;
			champ.row = 10;
		DMANow(3,ChampRightPunch3Tiles,&CHARBLOCK[1],ChampRightPunch3TilesLen/2);
    	DMANow(3,ChampRightPunch3Map,&SCREENBLOCK[15],ChampRightPunch3MapLen/2);
	} else if (champ.aniCounter < 65) {
		champ.col = -50;
		champ.row = 0;
		DMANow(3,ChampRightPunch4Tiles,&CHARBLOCK[1],ChampRightPunch4TilesLen/2);
    	DMANow(3,ChampRightPunch4Map,&SCREENBLOCK[15],ChampRightPunch4MapLen/2);
    	if (champ.aniCounter == 64) {
    		champ.col = 0;
			champ.row = 20;
    	}
	} else if (champ.aniCounter <= 75) {
		champ.col = 0;
		champ.row = 20;
		DMANow(3,ChampRightPunch5Tiles,&CHARBLOCK[1],ChampRightPunch5TilesLen/2);
    	DMANow(3,ChampRightPunch5Map,&SCREENBLOCK[15],ChampRightPunch5MapLen/2);
	}


	// if (((champ.curFrame / 10) > 1)) {
	// 	champ.colOffset++;
	// } else {
	// 	champ.colOffset--;
	// }

	// Level 1 Champ AI
	if (champ.aniCounter == 10 && champ.punchType == 1) {
		champ.punchType = 0;
		playSoundA(ChampFeintSound,CHAMPFEINTSOUNDLEN,CHAMPFEINTSOUNDFREQ, 0);
		goToChampPunchLeft();
	}

	// Level 2 Champ AI
	if (champ.aniCounter == 12 && champ.feintCount > 0) {
		champ.feintCount--;
		// playSoundA(ChampFeintSound,CHAMPFEINTSOUNDLEN,CHAMPFEINTSOUNDFREQ, 0);
		goToChampPunchLeft();
	}


	if (champ.aniCounter == 20 && cheat) {
		goToPlayerDodgeRight();
	}

	if (champ.aniCounter == 32) {
		if (player.aniState != BLOCK && player.aniState != DODGERIGHT && !cheat) {
			playSoundA(ChampPunchSound0,CHAMPPUNCHSOUND0LEN,CHAMPPUNCHSOUND0FREQ, 0);
			goToPlayerHitRight();
			player.health -= HARDHIT;
		}
		if (player.aniState == BLOCK && !cheat) {
			player.health -= SOFTHIT;
			playSoundA(BlockSound,BLOCKSOUNDLEN,BLOCKSOUNDFREQ, 0);
			player.blockExtension = 43;
		}

    }

    if (champ.aniCounter < 7 && (player.aniState == DODGELEFT || player.aniState == DODGERIGHT)) {
    	champ.feintCount = 0;
    } 

	if (champ.aniCounter >= 75) {
		goToChampIdle();
	}

    champ.aniCounter++;

}


void goToChampPunchRight() {
	champ.aniCounter = 0;
	champ.aniState = PUNCHRIGHT;
}


void champHitLeft() {
	champ.row = 0;

	champ.col = 0;

	if (champ.aniCounter == 0) {
		champ.row = 11;
	}

	if (champ.aniCounter > 0) {
		if (champ.aniCounter < 5) {
			champ.row = 11;
			DMANow(3,ChampHitLeft0Tiles,&CHARBLOCK[1],ChampHitLeft0TilesLen/2);
	    	DMANow(3,ChampHitLeft0Map,&SCREENBLOCK[15],ChampHitLeft0MapLen/2);
		} else if (champ.aniCounter < 10) {
			DMANow(3,ChampHitLeft1Tiles,&CHARBLOCK[1],ChampHitLeft1TilesLen/2);
	    	DMANow(3,ChampHitLeft1Map,&SCREENBLOCK[15],ChampHitLeft1MapLen/2);
		} else if (champ.aniCounter <= 20) {
			DMANow(3,ChampHitLeft2Tiles,&CHARBLOCK[1],ChampHitLeft2TilesLen/2);
	    	DMANow(3,ChampHitLeft2Map,&SCREENBLOCK[15],ChampHitLeft2MapLen/2);
		}
	}


	// if (((champ.curFrame / 10) > 1)) {
	// 	champ.colOffset++;
	// } else {
	// 	champ.colOffset--;
	// }


	if (champ.aniCounter >= 20) {
		if (champ.health > 8) {
			goToChampIdle();
		} else {
			goToChampKO();
		}
	}

	champ.aniCounter++;

}


void goToChampHitLeft() {
	champ.aniCounter = 0;
	smoothOffset += CHAMPHITOFFSET;

	champ.aniState = HITLEFT;

}

void champHitRight() {
	champ.row = 0;
	champ.col = -10;

	if (champ.aniCounter < 5 || champ.aniCounter >= 14) {
		champ.row = 10;
	}

	if (champ.aniCounter < 5) {
		champ.row = 10;
		DMANow(3,ChampHitRight0Tiles,&CHARBLOCK[1],ChampHitRight0TilesLen/2);
    	DMANow(3,ChampHitRight0Map,&SCREENBLOCK[15],ChampHitRight0MapLen/2);
	} else if (champ.aniCounter < 15) {
		DMANow(3,ChampHitRight1Tiles,&CHARBLOCK[1],ChampHitRight1TilesLen/2);
    	DMANow(3,ChampHitRight1Map,&SCREENBLOCK[15],ChampHitRight1MapLen/2);
	} else if (champ.aniCounter <= 20) {
		champ.row = 10;
		DMANow(3,ChampHitRight2Tiles,&CHARBLOCK[1],ChampHitRight2TilesLen/2);
    	DMANow(3,ChampHitRight2Map,&SCREENBLOCK[15],ChampHitRight2MapLen/2);
	}


	// if (((champ.curFrame / 10) > 1)) {
	// 	champ.colOffset++;
	// } else {
	// 	champ.colOffset--;
	// }


	if (champ.aniCounter >= 20) {
		if (champ.health > 8) {
			goToChampIdle();
		} else {
			goToChampKO();
		}
	}

	champ.aniCounter++;


}


void goToChampHitRight() {

	champ.aniCounter = 0;
	smoothOffset -= CHAMPHITOFFSET;

	champ.aniState = HITRIGHT;

}


void champKO() {

	if (champ.aniCounter < 5) {
		DMANow(3,ChampKO0Tiles,&CHARBLOCK[1],ChampKO0TilesLen/2);
    	DMANow(3,ChampKO0Map,&SCREENBLOCK[15],ChampKO0MapLen/2);
    	if (champ.aniCounter == 4) {
    		champ.row = 20;
    	}
	} else if (champ.aniCounter < 10) {
		DMANow(3,ChampKO1Tiles,&CHARBLOCK[1],ChampKO1TilesLen/2);
    	DMANow(3,ChampKO1Map,&SCREENBLOCK[15],ChampKO1MapLen/2);
	} else if (champ.aniCounter < 15) {
		DMANow(3,ChampKO2Tiles,&CHARBLOCK[1],ChampKO2TilesLen/2);
    	DMANow(3,ChampKO2Map,&SCREENBLOCK[15],ChampKO2MapLen/2);
	} else if (champ.aniCounter < 20) {
		DMANow(3,ChampKO3Tiles,&CHARBLOCK[1],ChampKO3TilesLen/2);
    	DMANow(3,ChampKO3Map,&SCREENBLOCK[15],ChampKO3MapLen/2);
    	if (champ.aniCounter == 19) {
    		champ.row = 35;
    	}
	} else if (champ.aniCounter < 25) {
		DMANow(3,ChampKO4Tiles,&CHARBLOCK[1],ChampKO4TilesLen/2);
    	DMANow(3,ChampKO4Map,&SCREENBLOCK[15],ChampKO4MapLen/2);
    	if (champ.aniCounter == 24) {
    		champ.row = 50;
    	}
	} else if (champ.aniCounter < 30) {
		DMANow(3,ChampKO5Tiles,&CHARBLOCK[1],ChampKO5TilesLen/2);
    	DMANow(3,ChampKO5Map,&SCREENBLOCK[15],ChampKO5MapLen/2);
	}

	champ.aniCounter++;


}


void goToChampKO() {

	champ.row = 0;
	champ.col = 0;

	champ.aniCounter = 0;

	champ.aniState = KO;

}


