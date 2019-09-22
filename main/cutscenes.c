#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "title.h"
#include "backgrounds.h"
#include "player.h"
#include "champ.h"
#include "spritesheets.h"
#include "sounds.h"
#include "music.h"
#include "cutscenes.h"

enum {CHEATCUTSCENEID};

int cutsceneID;
int currentTime;
int currentTime2;
int shakeCycle;

u32 fixedNum = 0x80;
u32 fixedNum2 = 0;

int trigger0 = 0;
int trigger1 = 0;
int toggle0 = 0;
int goFlag = 0;

int countDownTime;
int countDownSeconds = -1;

int scrambleIndex;

int cornerfaceSpriteRow;
int playerSpriteRow;

// int hOff2;
// int vOff2;

// int hOff3;
// int vOff3;



void cheatCutscene() {
	// cutsceneID = 0;
	if (currentTime < 150) {
		fadeInWhite(0x01);
	}

	if (currentTime == CHEATCUTSCENESTARTTIME - 80) {
		playSoundB(UltraFightMusic,ULTRAFIGHTMUSICLEN,ULTRAFIGHTMUSICFREQ, 1);
	}


	if (currentTime > CHEATCUTSCENESTARTTIME - 40 && currentTime < CHEATCUTSCENESTARTTIME + 200) {
		if (shakeCycle > 9) {
			hOff1 = 475;
		} else {
			hOff1 = 470;
		}
	}

 //    if (currentTime == 300) {
	// 	hOff1 = 10;
 //    	vOff1 = 65;
	// }

    if (currentTime == CHEATCUTSCENESTARTTIME + 150) {
		REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;
		REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;


		hOff0 = 10;
    	vOff0 = 65;
 
    	DMANow(3,PlayerEyesCloseTiles,&CHARBLOCK[0],PlayerEyesCloseTilesLen/2);
    	DMANow(3,PlayerEyesCloseMap,&SCREENBLOCK[7],PlayerEyesCloseMapLen/2);
	}

	if (currentTime == CHEATCUTSCENESTARTTIME + 175) {
    	DMANow(3,PlayerEyesCloseYellow0Tiles,&CHARBLOCK[0],PlayerEyesCloseYellow0TilesLen/2);
    	DMANow(3,PlayerEyesCloseYellow0Map,&SCREENBLOCK[7],PlayerEyesCloseYellow0MapLen/2);
	}


	if (currentTime == CHEATCUTSCENESTARTTIME + 192) {
		REG_BLDALPHA = BLD_EVA((0x80)/8) | BLD_EVB((0x00)/8);

		REG_BLDCNT = BLD_BG0a | BLD_BG1b | BLD_BG2b | BLD_BG3b | BLD_BDb |  BLD_STD;

    	DMANow(3,PlayerEyesOpenYellow0Tiles,&CHARBLOCK[0],PlayerEyesOpenYellow0TilesLen/2);
    	DMANow(3,PlayerEyesOpenYellow0Map,&SCREENBLOCK[7],PlayerEyesOpenYellow0MapLen/2);
    	DMANow(3,PlayerUltra0Tiles,&CHARBLOCK[1],PlayerUltra0TilesLen/2);
    	DMANow(3,PlayerUltra0Map,&SCREENBLOCK[15],PlayerUltra0MapLen/2);
	}

	if (currentTime == CHEATCUTSCENESTARTTIME + 240) {
		trigger0 = 1;
	}

	if (trigger0) {
		if (fixedNum > 0x00 && !trigger1) {
			fixedNum -= 0x01;
			REG_BLDALPHA = (BLD_EVA((fixedNum)/8) | BLD_EVB((0x00-fixedNum)/8));
		} else {
			trigger1 = 1;
			REG_DISPCTL = MODE0 | BG1_ENABLE;
			hOff0 = 0;
    		vOff0 = 40;
		}
		if (hOff1 > 214 && trigger1) {
			hOff1-=1;
			REG_BLDCNT = BLD_BG1a | BLD_WHITE;
			if (hOff1 < 450 && currentTime & 1 && fixedNum < 0x81) {
				fixedNum+=1;
			}
        	REG_BLDY = BLD_EY((fixedNum)/8);
		} else if (currentTime >= CHEATCUTSCENESTARTTIME + 800 && currentTime < CHEATCUTSCENESTARTTIME + 1000) { 
			DMANow(3,PlayerUltra1Tiles,&CHARBLOCK[1],PlayerUltra1TilesLen/2);
    		DMANow(3,PlayerUltra1Map,&SCREENBLOCK[15],PlayerUltra1MapLen/2);
			if (fixedNum > 0x00) {
				fixedNum -= 0x01;
			}
        	REG_BLDY = BLD_EY((fixedNum)/8);
		}

		if (currentTime >= CHEATCUTSCENESTARTTIME + 1000 && currentTime < CHEATCUTSCENESTARTTIME + 1200) { 
			REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE;
			REG_BLDCNT = BLD_BG0a | BLD_BG1b | BLD_BG2b | BLD_BG3b | BLD_BDb |  BLD_STD;


			if (fixedNum < 0x80) {
				fixedNum+=1;
			}


			REG_BLDALPHA = (BLD_EVA((fixedNum)/8) | BLD_EVB((0x80-fixedNum)/8));

			

			DMANow(3,PlayerUltraCloseUp0Tiles,&CHARBLOCK[0],PlayerUltraCloseUp0TilesLen/2);
    		DMANow(3,PlayerUltraCloseUp0Map,&SCREENBLOCK[7],PlayerUltraCloseUp0MapLen/2);
		}

		if (currentTime >= CHEATCUTSCENESTARTTIME + 1200 && currentTime < CHEATCUTSCENESTARTTIME + 1450) { 
			REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE;
   	 		REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_BDa | BLD_WHITE;
			
   	 		if (currentTime == CHEATCUTSCENESTARTTIME + 1200) {
   	 			fixedNum = 0x00;
   	 		}


			if (fixedNum < 0x80) {
				fixedNum+=1;
			}

        	REG_BLDY = BLD_EY((fixedNum)/8);
		}
	}

	if (currentTime >= CHEATCUTSCENESTARTTIME + 1450) { 
        hideSprites();
		goFlag = 1;
	}



	// if (hOff1 <= 214) {
 //    	REG_BLDCNT = BLD_BG1a | BLD_WHITE;

 //        REG_BLDY = BLD_EY((0x80)/8);


	// }

	// waitForVBlank();
   waitForVBlank();


    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

	currentTime++;
	shakeCycle++;

	if (shakeCycle > 20) {
		shakeCycle = 0;
	}
}

void goToCheatCutscene() {
	stopSound();
    hideSprites();
	    // playSoundB(TitleMusic2,TITLEMUSIC2LEN,TITLEMUSIC2FREQ, 1);
	currentTime = 0;
	trigger0 = 0;
	trigger1 = 0;
	shakeCycle = 0;

	fixedNum = 0x80;

	// cutsceneID = 1;
	REG_DISPCTL = MODE0 | BG1_ENABLE;

	REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG20Pal,PALETTE,BackgroundBG20PalLen/2);
    DMANow(3,PlayerKO0Tiles,&CHARBLOCK[1],PlayerKO0TilesLen/2);
    DMANow(3,PlayerKO0Map,&SCREENBLOCK[15],PlayerKO0MapLen/2);

    hOff1 = 470;
    vOff1 = 500;


	hOff0 = 10;
    vOff0 = 65;
 

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;


}











/*--------------------------------------------------*/










void countDownCutscene() {

	if (currentTime > 180 && countDownTime == -1 && !fadeInWhite(0x01)) {
        toggle0 = 1;
	}

    if (toggle0) {
        cutsceneCountDownTimer();
    }



    // Timer
    if (countDownSeconds < 10) {
        shadowOAM[0].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ((SCREENWIDTH/2 - 14)) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_TILEID((countDownSeconds/10)*2,9) | ATTR2_PALROW(3);

        shadowOAM[1].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[1].attr1 = ((SCREENWIDTH/2) - 2) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_TILEID((countDownSeconds%10)*2,9) | ATTR2_PALROW(3);
    } else if (countDownSeconds == 10) {
    	REG_MOSAIC = MOS_BH(1) | MOS_BV(1);

        shadowOAM[0].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ((SCREENWIDTH/2 - 14)) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_TILEID(9*2,9) | ATTR2_PALROW(3);

        shadowOAM[1].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[1].attr1 = ((SCREENWIDTH/2) - 2) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_TILEID(9*2,9) | ATTR2_PALROW(3);
    } else if (countDownSeconds == 11) {
    	REG_MOSAIC = MOS_BH(3) | MOS_BV(3);

        shadowOAM[0].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ((SCREENWIDTH/2 - 14)) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_TILEID(1,10) | ATTR2_PALROW(0);

        shadowOAM[1].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[1].attr1 = ((SCREENWIDTH/2) - 2) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_TILEID(0,29) | ATTR2_PALROW(3);
    }

    if (countDownTime == 4) {
    	vOff3 = 56;
		vOff2 = 128;
    }

    if (countDownTime > 3 && countDownTime < 8) {

    	hOff2+=2;
    	hOff3+=1;



    	hOff0-=2;

    	if (hOff0 < 256) {


    		vOff0 = 484;
    		if (!cheat) {
				DMANow(3,PlayerKO0WideTiles,&CHARBLOCK[0],PlayerKO0WideTilesLen/2);
    			DMANow(3,PlayerKO0WideMap,&SCREENBLOCK[7],PlayerKO0WideMapLen/2);
			}
			if (cheat) {
				DMANow(3,PlayerUltra1WideTiles,&CHARBLOCK[0],PlayerUltra1WideTilesLen/2);
    			DMANow(3,PlayerUltra1WideMap,&SCREENBLOCK[7],PlayerUltra1WideMapLen/2);
			}
    		hOff0 = 688;
    	}
    }


    if (countDownTime > 7 && countDownTime < 11) {
    	REG_BLDCNT = BLD_BG2a | BLD_BG3a | BLD_BLACK;

    	if (fixedNum < 0x81) {
        	fixedNum+=0x01;
        	REG_BLDY = BLD_EY((fixedNum)/8);
        }

    	vOff2 = 215;
    	vOff3 = 100;
    	REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    	DMANow(3,ChampKO6Tiles,&CHARBLOCK[1],ChampKO6TilesLen/2);
    	DMANow(3,ChampKO6Map,&SCREENBLOCK[15],ChampKO6MapLen/2);
    }

    // Yes, all of this is on purpose. I'm so sorry.
    if (countDownTime > 12 && countDownTime < 14) {
    	REG_BLDY = BLD_EY((0x00)/8);

    	DMANow(3,&BackgroundBG20KOTiles[scrambleIndex],&CHARBLOCK[2],BackgroundBG20KOTilesLen/2);
    	DMANow(3,&BackgroundBG20KOMap[scrambleIndex],&SCREENBLOCK[23],BackgroundBG20KOMapLen/2);

    	DMANow(3,&BackgroundBG30Tiles[scrambleIndex],&CHARBLOCK[3],BackgroundBG30TilesLen/2);
    	DMANow(3,&BackgroundBG30Map[scrambleIndex],&SCREENBLOCK[31],BackgroundBG30MapLen/2);

    	DMANow(3,&ChampKO6Tiles[scrambleIndex],&CHARBLOCK[1],ChampKO6TilesLen/2);
    	DMANow(3,&ChampKO6Map[scrambleIndex],&SCREENBLOCK[15],ChampKO6MapLen/2);

    	scrambleIndex++;

    	playCornerfaceB(CornerfaceTiles, CHAMPKNOCKDOWNMUSICLEN, CHAMPKNOCKDOWNMUSICFREQ, 0);
    }

    if (countDownTime == 14) {
    	// stopSound();
    	REG_DISPCTL = 0;
    }

    if (countDownTime == 15) {
    	DMANow(3,CornerfaceTiles,&CHARBLOCK[1],CornerfaceTilesLen/2);
    	DMANow(3,CornerfaceMap,&SCREENBLOCK[15],CornerfaceMapLen/2);
    	hOff1 = 226;
    	vOff1 = 0;
    	fixedNum = 0x80;
    	hOff0 = 502;
   		vOff0 = 454;
    	stopSound();
    }


    if (countDownTime >= MYSTERYSCIENCECONVERSATION + 17 && countDownTime < MYSTERYSCIENCECONVERSATION + 22) {
        REG_BLDCNT = BLD_BG1a | BLD_BLACK;



    	if (fixedNum > 0x00 && (currentTime & 1)) {
        	fixedNum-=0x01;
        	REG_MOSAIC = MOS_BH(fixedNum>>1) | MOS_BV(fixedNum>>1);
        	REG_BLDY = BLD_EY((fixedNum)/8);
        	REG_DISPCTL = BG1_ENABLE;
        }
    }

    if (countDownTime == MYSTERYSCIENCECONVERSATION + 22) {
    	REG_BLDCNT = BLD_BG0a | BLD_BG2a | BLD_BG3a | BLD_BLACK;
    	fixedNum = 0x80;
    	REG_BLDY = BLD_EY((fixedNum)/8);
       	REG_DISPCTL = BG1_ENABLE | BG0_ENABLE;
    }


    if (countDownTime >= MYSTERYSCIENCECONVERSATION + 22 && countDownTime < MYSTERYSCIENCECONVERSATION + 25) {
    	REG_BLDCNT = BLD_BG0a | BLD_BG2a | BLD_BG3a | BLD_BLACK;
    	if (hOff0 > 462) {
    		hOff0--;
    	}
    	if (fixedNum > 0x00) {
        	fixedNum-=0x01;
        	REG_BLDY = BLD_EY((fixedNum)/8);
        	REG_DISPCTL = BG1_ENABLE | BG0_ENABLE;
        }


		REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;

    	if (!cheat) {
    		DMANow(3,Idle0Tiles,&CHARBLOCK[0],Idle0TilesLen/2);
    		DMANow(3,Idle0Map,&SCREENBLOCK[7],Idle0MapLen/2);
    	}

    	if (cheat) {
    		DMANow(3,IdleS0Tiles,&CHARBLOCK[0],IdleS0TilesLen/2);
    		DMANow(3,IdleS0Map,&SCREENBLOCK[7],IdleS0MapLen/2);
    	}

    	if (hOff1 > 160 && currentTime & 1) {
    		hOff1--;
    	}

    }


    if (countDownTime >= MYSTERYSCIENCECONVERSATION + 25 && countDownTime < MYSTERYSCIENCECONVERSATION + 27) {
    	if (vOff1 < 112) {
    		vOff1+=2;
    	} else {
    		// hOff0 = 482;
    		REG_DISPCTL = BG0_ENABLE;
    		REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_TALL;
    		if (!cheat) {
    			DMANow(3,PlayerKO0TallTiles,&CHARBLOCK[0],PlayerKO0TallTilesLen/2);
    			DMANow(3,PlayerKO0TallMap,&SCREENBLOCK[7],PlayerKO0TallMapLen/2);
    		}
    		if (cheat) {
    			DMANow(3,PlayerUltra1TallTiles,&CHARBLOCK[0],PlayerUltra1TallTilesLen/2);
    			DMANow(3,PlayerUltra1TallMap,&SCREENBLOCK[7],PlayerUltra1TallMapLen/2);
    		}
    	}
    	hideSprites();
    }

    if (countDownTime >= MYSTERYSCIENCECONVERSATION + 27 && countDownTime < MYSTERYSCIENCECONVERSATION + 30) {
    	vOff0+=2;
    }


    // New Scene
    if (countDownTime == MYSTERYSCIENCECONVERSATION + 30) {


    	REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_BLACK;

    	REG_BLDY = BLD_EY((0x80)/8);


    	REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    	REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;
    	REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(17) | BG_4BPP | BG_SIZE_WIDE | BG_MOSAIC_ENABLE;
    	REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;

    	DMANow(3,StreetPal,PALETTE,StreetPalLen/2);


    	DMANow(3,TitleTextTiles,&CHARBLOCK[0],TitleTextTilesLen/2);
    	DMANow(3,TitleTextMap,&SCREENBLOCK[7],TitleTextMapLen/2);

    	DMANow(3,CityTiles,&CHARBLOCK[1],CityTilesLen/2);
    	DMANow(3,CityMap,&SCREENBLOCK[17],CityMapLen/2);


    	DMANow(3,StreetTiles,&CHARBLOCK[3],StreetTilesLen/2);
    	DMANow(3,StreetMap,&SCREENBLOCK[30],StreetMapLen/2);

    	hOff0 = 240;
	    vOff0 = 254;

	    hOff2 = 0;
	    vOff2 = 75;

	    hOff1 = 163;
	    vOff1 = 75;

	    REG_BG0HOFF = hOff0;
	    REG_BG0VOFF = vOff0;

	    REG_BG1HOFF = hOff1;
	    REG_BG1VOFF = vOff1;


    }


    if (countDownTime >= MYSTERYSCIENCECONVERSATION + 31 && !trigger0) {
    	REG_BLDY = BLD_EY((0x00)/8);

    	DMANow(3,spritesheetendPal,SPRITEPALETTE,spritesheetendPalLen/2);
    	DMANow(3,spritesheetendTiles,&CHARBLOCK[4],spritesheetendTilesLen/2);

    	if (vOff1 > 30) {
    		vOff1--;
    		vOff2--;
    	} else {
    		shadowOAM[0].attr0 = (cornerfaceSpriteRow & ROWMASK) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        	shadowOAM[0].attr1 = 116 | ATTR1_TINY;
        	shadowOAM[0].attr2 = ATTR2_TILEID(0,0) | ATTR2_PALROW(0);


        	// if (cornerfaceSpriteRow > 0) {
        		cornerfaceSpriteRow--;
        	// } else {
        	// 	shadowOAM[0].attr0 = ATTR0_HIDE;
        	// }

        	if (cornerfaceSpriteRow < 50) {
        		if (!cheat) {
        			shadowOAM[1].attr0 = ((playerSpriteRow - 8) & ROWMASK) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        			shadowOAM[1].attr1 = 115 | ATTR1_SMALL;
        			shadowOAM[1].attr2 = ATTR2_TILEID(0,1) | ATTR2_PALROW(4);
        		}

        		if (cheat) {
        			shadowOAM[1].attr0 = ((playerSpriteRow - 8) & ROWMASK) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        			shadowOAM[1].attr1 = 115 | ATTR1_SMALL;
        			shadowOAM[1].attr2 = ATTR2_TILEID(0,3) | ATTR2_PALROW(4);
        		}

        		if (playerSpriteRow > 0) {
        			playerSpriteRow--;
        		} else {
        			// shadowOAM[1].attr0 = ATTR0_HIDE;
                    playerSpriteRow--;


        				if (vOff1 >= 0) {
	        				REG_MOSAIC = MOS_BH((15-vOff1)) | MOS_BV(15-vOff1);
	        			} else {
	        				scrambleIndex = 15;
	        				hOff1 = 176;
	        				hOff0 = 432;
	        				fixedNum = 0x80;
	        				trigger0 = 1;
	        			}

	        			vOff1--;
	        			vOff2--;
        		}
        	}
    	}
    }

    if (trigger0) {
    	// REG_BLDCNT = 0;

		DMANow(3,BackgroundBG20Pal,PALETTE,BackgroundBG20PalLen/2);

    	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE;
    	// hOff0 = 432;
   		vOff0 = 434;
		REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;
		REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;
    	REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(22) | BG_4BPP | BG_SIZE_TALL | BG_MOSAIC_ENABLE;
    	REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;



    	if (!cheat) {
    		DMANow(3,PunchRight0Tiles,&CHARBLOCK[0],PunchRight0TilesLen/2);
    		DMANow(3,PunchRight0Map,&SCREENBLOCK[7],PunchRight0MapLen/2);
    	}

    	if (cheat) {
    		DMANow(3,PunchRightS0Tiles,&CHARBLOCK[0],PunchRightS0TilesLen/2);
    		DMANow(3,PunchRightS0Map,&SCREENBLOCK[7],PunchRightS0MapLen/2);
    	}



    	if (currentTime%20 > 9) {
    		hOff1++;
    		hOff0--;
    	} else {
    		hOff0++;
    		hOff1--;
    	}
    	// hOff1 = 176;
    	vOff1 = 0;

    	DMANow(3,CloudsTiles,&CHARBLOCK[2],CloudsTilesLen/2);
    	DMANow(3,CloudsMap,&SCREENBLOCK[22],CloudsMapLen/2);

    	hOff2 = 10;
    	vOff2-=3;

    	DMANow(3,SkyTiles,&CHARBLOCK[3],SkyTilesLen/2);
    	DMANow(3,SkyMap,&SCREENBLOCK[31],SkyMapLen/2);

    	DMANow(3,CornerfaceSmallTiles,&CHARBLOCK[1],CornerfaceSmallTilesLen/2);
    	DMANow(3,CornerfaceSmallMap,&SCREENBLOCK[15],CornerfaceSmallMapLen/2);




   		// REG_MOSAIC = MOS_BH(0) | MOS_BV(0);
   		if (scrambleIndex > 0) {
   			scrambleIndex--;
   			REG_MOSAIC = MOS_BH(scrambleIndex) | MOS_BV(scrambleIndex);
   		}

   		if (scrambleIndex <= 0) {
   			REG_MOSAIC = MOS_BH(0) | MOS_BV(0);
   		}

    	if (countDownTime >= MYSTERYSCIENCECONVERSATION + 37 && countDownTime < MYSTERYSCIENCECONVERSATION + 40) {
    		if (fixedNum > 0x00) {
    			REG_BLDCNT = BLD_BG2a | BLD_BG3b | BLD_STD;
    			fixedNum-=0x01;
				REG_BLDALPHA = (BLD_EVA((fixedNum)/8) | BLD_EVB((0x80)/8));
    		}
    	}

    	if (countDownTime >= MYSTERYSCIENCECONVERSATION + 40 && countDownTime < MYSTERYSCIENCECONVERSATION + 42) {
    		REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE;
    		REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(22) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;

    		DMANow(3,SkyTiles,&CHARBLOCK[2],SkyTilesLen/2);
    		DMANow(3,SkyMap,&SCREENBLOCK[22],SkyMapLen/2);



    		if (fixedNum < 0x81) {
    			REG_BLDCNT = BLD_BG2a | BLD_BLACK;
    			fixedNum+=0x01;
				// REG_BLDALPHA = (BLD_EVA((0x80-fixedNum)/8) | BLD_EVB((0x80)/8));
				REG_BLDY = BLD_EY((fixedNum)/8);
    		}
    	}

    	if (countDownTime >= MYSTERYSCIENCECONVERSATION + 42) {
    		DMANow(3,StarsTiles,&CHARBLOCK[3],StarsTilesLen/2);
    		DMANow(3,StarsMap,&SCREENBLOCK[31],StarsMapLen/2);
    		REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG3_ENABLE;


    		if (fixedNum > 0x00) {
    			REG_BLDCNT = BLD_BG3a | BLD_BLACK;
    			fixedNum-=0x01;
				// REG_BLDALPHA = (BLD_EVA((0x80-fixedNum)/8) | BLD_EVB((0x80)/8));
				REG_BLDY = BLD_EY((fixedNum)/8);
    		}

    	}

    	if (countDownTime >= MYSTERYSCIENCECONVERSATION + 45) {
    		goFlag = 2;
    	}

    }


















	waitForVBlank();

    DMANow(3,shadowOAM,OAM,128*4);

    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;
    
    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;

	currentTime++;
}

void goToCountDownCutscene() {
	// cheat = 1;
	currentTime = 0;
    toggle0 = 0;
	countDownTime = -1;
	trigger0 = 0;
	trigger1 = 0;
	shakeCycle = 0;
	hideSprites();
	fixedNum = 0x00;

	cornerfaceSpriteRow = 90;
	playerSpriteRow = 90;




	// countDownTime = MYSTERYSCIENCECONVERSATION + 30;


	DMANow(3,spritesheetPal,SPRITEPALETTE,spritesheetPalLen/2);
    DMANow(3,spritesheetTiles,&CHARBLOCK[4],spritesheetTilesLen/2);

	REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;

	REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_WIDE;

	DMANow(3,BackgroundBG20Pal,PALETTE,BackgroundBG20PalLen/2);

	if (!cheat) {
		DMANow(3,Idle0WideTiles,&CHARBLOCK[0],Idle0WideTilesLen/2);
    	DMANow(3,Idle0WideMap,&SCREENBLOCK[7],Idle0WideMapLen/2);
	}

	if (cheat) {
		DMANow(3,IdleS0WideTiles,&CHARBLOCK[0],IdleS0WideTilesLen/2);
    	DMANow(3,IdleS0WideMap,&SCREENBLOCK[7],IdleS0WideMapLen/2);
	}



	REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL | BG_MOSAIC_ENABLE;

	// REG_MOSAIC = MOS_BH(0) | MOS_BV(0);

    DMANow(3,ChampKO6Tiles,&CHARBLOCK[1],ChampKO6TilesLen/2);
    DMANow(3,ChampKO6Map,&SCREENBLOCK[15],ChampKO6MapLen/2);

    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(23) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG20KOTiles,&CHARBLOCK[2],BackgroundBG20KOTilesLen/2);
    DMANow(3,BackgroundBG20KOMap,&SCREENBLOCK[23],BackgroundBG20KOMapLen/2);


    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG30Tiles,&CHARBLOCK[3],BackgroundBG30TilesLen/2);
    DMANow(3,BackgroundBG30Map,&SCREENBLOCK[31],BackgroundBG30MapLen/2);


    hOff1 = 490;
    vOff1 = 460;


    vOff2 = 215;
    vOff3 = 100;


    hOff0 = 432;
    vOff0 = 454;

    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;
 
    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;


    countDownSeconds = -1;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;

    REG_TM2D = -0x4000;


    REG_TM3CNT = TIMER_ON | TM_CASCADE;

}


void cutsceneCountDownTimer() {
    REG_TM2CNT = TM_FREQ_1024| TIMER_ON;

    if (REG_TM3D != countDownSeconds) {
        countDownSeconds = REG_TM3D;
            countDownTime++;
            switch(countDownTime) {
            	case 0:
            		playSoundB(ChampKnockDownMusic, CHAMPKNOCKDOWNMUSICLEN, CHAMPKNOCKDOWNMUSICFREQ, 0);
            		break;
                case 1:
                    playSoundA(OneCountSound,ONECOUNTSOUNDLEN,ONECOUNTSOUNDFREQ, 0);
                    break;
                case 2:
                    playSoundA(TwoCountSound,TWOCOUNTSOUNDLEN,TWOCOUNTSOUNDFREQ, 0);
                    break;
                case 3:
                    playSoundA(ThreeCountSound,THREECOUNTSOUNDLEN,THREECOUNTSOUNDFREQ, 0);
                    break;
                case 4:
                    playSoundA(FourCountSound,FOURCOUNTSOUNDLEN,FOURCOUNTSOUNDFREQ, 0);
                    if (!cheat) {
						DMANow(3,Idle0WideTiles,&CHARBLOCK[0],Idle0WideTilesLen/2);
    					DMANow(3,Idle0WideMap,&SCREENBLOCK[7],Idle0WideMapLen/2);
					}
					if (cheat) {
						DMANow(3,IdleS0WideTiles,&CHARBLOCK[0],IdleS0WideTilesLen/2);
    					DMANow(3,IdleS0WideMap,&SCREENBLOCK[7],IdleS0WideMapLen/2);
					}
                    REG_DISPCTL = MODE0 | BG0_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
                    break;
                case 5:
                    playSoundA(FiveCountSound,FIVECOUNTSOUNDLEN,FIVECOUNTSOUNDFREQ, 0);
                    break;
                case 6:
                    playSoundA(SixCountSound,SIXCOUNTSOUNDLEN,SIXCOUNTSOUNDFREQ, 0);
                    break;
                case 7:
                    playSoundA(SevenCountSound,SEVENCOUNTSOUNDLEN,SEVENCOUNTSOUNDFREQ, 0);
                    break;
                case 8:
                    playSoundA(EightCountSound,EIGHTCOUNTSOUNDLEN,EIGHTCOUNTSOUNDFREQ, 0);
                    break;
                case 9:
                    playSoundA(NineCountSound,NINECOUNTSOUNDLEN,NINECOUNTSOUNDFREQ, 0);
                    break;
                case 10:
                    playSoundA(NineCountSound,NINECOUNTSOUNDLEN,NINECOUNTSOUNDFREQ, 0);
                    break;
                case 11:
                    playSoundB(NineCountSound,NINECOUNTSOUNDLEN,NINECOUNTSOUNDFREQ, 0);
                    break;
                case 19:
                    playSoundA(CorruptionAudio0,CORRUPTIONAUDIO0LEN,CORRUPTIONAUDIO0FREQ, 0);
                    break;
                case 31:
                    playSoundA(CorruptionAudio1,CORRUPTIONAUDIO1LEN,CORRUPTIONAUDIO1FREQ, 0);
                    break;
                case 38:
                    playSoundA(CorruptionAudio2,CORRUPTIONAUDIO2LEN,CORRUPTIONAUDIO2FREQ, 0);
                    break;
                case 43:
                    playSoundA(CorruptionAudio3,CORRUPTIONAUDIO3LEN,CORRUPTIONAUDIO3FREQ, 0);
                    break;
                case (MYSTERYSCIENCECONVERSATION + 17):
                	playSoundB(CornerfaceAppears,CORNERFACEAPPEARSLEN,CORNERFACEAPPEARSFREQ, 0);
                	break;
                case (MYSTERYSCIENCECONVERSATION + 31):
                	playSoundB(CornerfaceChase,CORNERFACECHASELEN,CORNERFACECHASEFREQ, 0);
                	break;
            }
    }
}








/*--------------------------------------------------*/


void spaceCutscene() {

    cutsceneSpaceTimer();

    if (hOff0 > 40) {
        hOff0--;
    }


    if (cheat) {

        if (countDownTime > 3 && countDownTime <=5) {
            REG_BLDCNT = BLD_BG0a | BLD_WHITE;
            
            if (fixedNum < 0x81) {
                fixedNum+=0x02;
            }
    
            REG_BLDY = BLD_EY((fixedNum)/8);
        }

        if (countDownTime > 5 && countDownTime <= 7) {
            DMANow(3,PlayerUltra0Tiles,&CHARBLOCK[0],PlayerUltra0TilesLen/2);
            DMANow(3,PlayerUltra0Map,&SCREENBLOCK[6],PlayerUltra0MapLen/2);

            if (fixedNum > 0x00) {
                fixedNum-=0x02;
            } else {
                stopSoundA();
            }
    
            REG_BLDY = BLD_EY((fixedNum)/8);
        }

    }

    if (countDownTime == 7) {
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(6) | BG_4BPP | BG_SIZE_WIDE;

        DMANow(3,PlayerNeutral1Tiles,&CHARBLOCK[0],PlayerNeutral1TilesLen/2);
        DMANow(3,PlayerNeutral1Map,&SCREENBLOCK[6],PlayerNeutral1MapLen/2);
    }

    if (countDownTime == 8) {
        DMANow(3,PlayerNeutral0Tiles,&CHARBLOCK[0],PlayerNeutral0TilesLen/2);
        DMANow(3,PlayerNeutral0Map,&SCREENBLOCK[6],PlayerNeutral0MapLen/2);
    }

    if (countDownTime == 10) {
        // DMANow(3,PlayerSad0Tiles,&CHARBLOCK[0],PlayerSad0TilesLen/2);
        // DMANow(3,PlayerSad0Map,&SCREENBLOCK[6],PlayerSad0MapLen/2);
        if (currentTime & 1) {
            hOff0--;
            hOff2 = hOff0;
        }


        DMANow(3,PlayerSad1HeadTiles,&CHARBLOCK[2],PlayerSad1HeadTilesLen/2);
        DMANow(3,PlayerSad1HeadMap,&SCREENBLOCK[22],PlayerSad1HeadMapLen/2);
    }

    if (countDownTime == 11) {
        // DMANow(3,PlayerSad0Tiles,&CHARBLOCK[0],PlayerSad0TilesLen/2);
        // DMANow(3,PlayerSad0Map,&SCREENBLOCK[6],PlayerSad0MapLen/2);
    }

    // if (countDownTime > 11) {
    //     // DMANow(3,PlayerSad1BodyTiles,&CHARBLOCK[0],PlayerSad1BodyTilesLen/2);
    //     // DMANow(3,PlayerSad1BodyMap,&SCREENBLOCK[6],PlayerSad1BodyMapLen/2);

    //     // REG_DISPCTL = MODE0 | BG0_ENABLE | BG2_ENABLE | BG1_ENABLE | BG3_ENABLE;

    // }



    if (countDownTime > 12 && countDownTime < 16) {


        if (hOff2 < -20) {

        DMANow(3,PlayerSad1HeadTiles,&CHARBLOCK[2],PlayerSad1HeadTilesLen/2);
        DMANow(3,PlayerSad1HeadMap,&SCREENBLOCK[22],PlayerSad1HeadMapLen/2);
            DMANow(3,PlayerSad1BodyTiles,&CHARBLOCK[0],PlayerSad1BodyTilesLen/2);
            DMANow(3,PlayerSad1BodyMap,&SCREENBLOCK[6],PlayerSad1BodyMapLen/2);

            REG_DISPCTL = MODE0 | BG0_ENABLE | BG2_ENABLE | BG1_ENABLE | BG3_ENABLE;
        } else {
            REG_DISPCTL = MODE0 | BG2_ENABLE | BG1_ENABLE | BG3_ENABLE;

            DMANow(3,PlayerSad0Tiles,&CHARBLOCK[2],PlayerSad0TilesLen/2);
            DMANow(3,PlayerSad0Map,&SCREENBLOCK[22],PlayerSad0MapLen/2);
        }

        if ((currentTime & 1) && hOff2 > -65) {
            hOff2--;
            hOff0--;
        }
    }

    if (countDownTime == 16 && countDownTime < 17) {
        // DMANow(3,PlayerEyesCloseTiles,&CHARBLOCK[0],PlayerEyesCloseTilesLen/2);
        // DMANow(3,PlayerEyesCloseMap,&SCREENBLOCK[6],PlayerEyesCloseMapLen/2);
        if (currentTime2 <= 14) {
            currentTime2++;
        }

        if (currentTime2 > 14) {
            hOff0 = 10;
            vOff0 = 65;
            DMANow(3,PlayerEyesCloseTiles,&CHARBLOCK[0],PlayerEyesCloseTilesLen/2);
            DMANow(3,PlayerEyesCloseMap,&SCREENBLOCK[6],PlayerEyesCloseMapLen/2);
        }

    }

    if (countDownTime == 17) {
        currentTime2 = 0;
    }

    if (countDownTime >= 18 && countDownTime < 22) {
        if (currentTime2 == 5) {
            DMANow(3,PlayerEyesTear0Tiles,&CHARBLOCK[0],PlayerEyesTear0TilesLen/2);
            DMANow(3,PlayerEyesTear0Map,&SCREENBLOCK[6],PlayerEyesTear0MapLen/2);
            REG_DISPCTL = MODE1 | BG2_ENABLE | BG0_ENABLE;
            REG_BG2PA = (1<<8);

            REG_BG2PD = (1<<8);



            REG_BLDCNT = 0;

            REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(23) | BG_8BPP | BG_SIZE_WIDE;

            DMANow(3,PlayerSad1CornerfaceFullFinalTiles,&CHARBLOCK[2],PlayerSad1CornerfaceFullFinalTilesLen/2);
            DMANow(3,PlayerSad1CornerfaceFullFinalMap,&SCREENBLOCK[23],PlayerSad1CornerfaceFullFinalMapLen/2);

        }

        if (currentTime2 == 25) {
            DMANow(3,PlayerEyesTear1Tiles,&CHARBLOCK[0],PlayerEyesTear1TilesLen/2);
            DMANow(3,PlayerEyesTear1Map,&SCREENBLOCK[6],PlayerEyesTear1MapLen/2);
        }

        if (currentTime2 == 35) {
            DMANow(3,PlayerEyesTear2Tiles,&CHARBLOCK[0],PlayerEyesTear2TilesLen/2);
            DMANow(3,PlayerEyesTear2Map,&SCREENBLOCK[6],PlayerEyesTear2MapLen/2);
        }

        if (currentTime2 == 70) {
            DMANow(3,PlayerEyesTear3Tiles,&CHARBLOCK[0],PlayerEyesTear3TilesLen/2);
            DMANow(3,PlayerEyesTear3Map,&SCREENBLOCK[6],PlayerEyesTear3MapLen/2);
            fixedNum = 0x80;
        }

        if (currentTime2 >= 85) {
            // DMANow(3,PlayerEyesTear3Tiles,&CHARBLOCK[0],PlayerEyesTear3TilesLen/2);
            // DMANow(3,PlayerEyesTear3Map,&SCREENBLOCK[6],PlayerEyesTear3MapLen/2);

            REG_BLDCNT = BLD_BG0a | BLD_BG1b | BLD_BG2b | BLD_BG3b | BLD_BDb |  BLD_STD;

            if (fixedNum > 0x00) {
                fixedNum-=0x01;
                REG_BLDALPHA = (BLD_EVA((fixedNum)/8) | BLD_EVB((0x80-fixedNum)/8));
            } else {
                // REG_DISPCTL = MODE1 | BG2_ENABLE;
                // REG_BG2PA = (1<<8);

                // REG_BG2PD = (1<<8);
            }

        }

        if (currentTime2 > 35 && vOff0 < 95) {
            vOff0++;
        }

        currentTime2++;

    }


    if (countDownTime == 22) {
        fixedNum = (1<<8);
        fixedNum2 = 0;
        currentTime2 = 0;
    }

    if (countDownTime >= 23) {
        if (currentTime2 >= 25) {
            REG_BG2PA = ((fixedNum<<0));
            REG_BG2PD = ((fixedNum<<0));


            REG_BG2X = ((fixedNum2<<0)*fixedNum);
            REG_BG2Y = ((fixedNum2<<0));

            fixedNum-=0x000000001;
            fixedNum2+=0x000000001;
        }

        currentTime2++;

    }


    if (countDownTime >= 28) {
        REG_DISPCTL = 0;
        goFlag = 3;
    }


    //PlayerSad1CornerfaceFullFinal





    // if (currentTime > 49 && currentTime & 1) {
    //     vOff3++;
    // } else if (currentTime & 1){
    //     vOff3--;
    // }


    waitForVBlank();


    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;
 
    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;


    currentTime++;

    if (currentTime >= 100) {
        hOff3++;
        vOff3--;
        currentTime = 0;
    }

}

void goToSpaceCutscene() {
    stopSound();
    playSoundB(RecordScratch, RECORDSCRATCHLEN, RECORDSCRATCHFREQ, 0);

    currentTime = 0;
    currentTime2 = 0;
    countDownTime = -1;
    trigger0 = 0;
    trigger1 = 0;
    shakeCycle = 0;
    hideSprites();
    fixedNum = 0x00;
    fixedNum2 = 0;

    vOff0 = 0;
    hOff0 = 200;


    hOff1 = 140;
    vOff1 = 240;

    hOff2 = 40;
    vOff2 = 0;

    hOff3 = 140;
    vOff3 = 60;


    cheat = 1;



    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG3_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(6) | BG_4BPP | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(22) | BG_4BPP | BG_SIZE_TALL;
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;


    DMANow(3,PlayerEyesTear0Pal,PALETTE,PlayerEyesTear0PalLen/2);

    DMANow(3,StarsTiles,&CHARBLOCK[3],StarsTilesLen/2);
    DMANow(3,StarsMap,&SCREENBLOCK[31],StarsMapLen/2);



    DMANow(3,CornerfaceTiles,&CHARBLOCK[1],CornerfaceTilesLen/2);
    DMANow(3,CornerfaceMap,&SCREENBLOCK[15],CornerfaceMapLen/2);



    if (!cheat) {
        DMANow(3,PlayerKO0Tiles,&CHARBLOCK[0],PlayerKO0TilesLen/2);
        DMANow(3,PlayerKO0Map,&SCREENBLOCK[6],PlayerKO0MapLen/2);
    } else {
        DMANow(3,PlayerUltra1WideTiles,&CHARBLOCK[0],PlayerUltra1WideTilesLen/2);
        DMANow(3,PlayerUltra1WideMap,&SCREENBLOCK[6],PlayerUltra1WideMapLen/2);
    }








    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;
 
    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;


    countDownSeconds = -1;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;

    REG_TM2D = -0x4000;


    REG_TM3CNT = TIMER_ON | TM_CASCADE;


}



void cutsceneSpaceTimer() {
    REG_TM2CNT = TM_FREQ_1024| TIMER_ON;

    if (REG_TM3D != countDownSeconds) {
        countDownSeconds = REG_TM3D;
            countDownTime++;
            switch(countDownTime) {
                case 4:
                    if (cheat) {
                        // playSoundA(CheatAura, CHEATAURALEN, CHEATAURAFREQ, 0);
                    }
                    playSoundB(ThePromise, THEPROMISELEN-1000, THEPROMISEFREQ, 0);
                    break;
                // case 11:

            }
    }
}













/*----------------------------------------------------*/













// void affineCutscene() {



//     // REG_BG2PA = (fixedNum<<0);
//     // REG_BG2PD = (fixedNum<<0);

//     REG_BG2PA = (1<<8);
//     REG_BG2PD = (1<<8);

//     // REG_BG2X = (((1)<<27));
//     // REG_BG2Y = (((1)<<27) | (20<<8));
//     // REG_BG2PB = (vOff3<<8);
//     // REG_BG2PC = (hOff3<<8);

//     waitForVBlank();


//     fixedNum-=0x001;
//     // hOff2--;
//     // vOff2--;

//     // currentTime++;
// }



// void goToAffineCutscene() {
//     currentTime = 1;
//     countDownTime = -1;
//     trigger0 = 0;
//     trigger1 = 0;
//     shakeCycle = 0;
//     hideSprites();
//     fixedNum = 0x001;

//     hOff2 = 10;
//     vOff2 = 0;

//     hOff3 = -1;
//     vOff3 = 2;


//     REG_DISPCTL = MODE2 | BG2_ENABLE;


//     REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_8BPP | BG_SIZE_SMALL;



//     DMANow(3,PlayerCornerFaceFullAffinePal,PALETTE,PlayerCornerFaceFullAffinePalLen/2);

//     // DMANow(3,PlayerCornerFaceFullAffineTiles,&CHARBLOCK[0],PlayerCornerFaceFullAffineTilesLen/2);
//     // DMANow(3,PlayerCornerFaceFullAffineMap,&SCREENBLOCK[8],PlayerCornerFaceFullAffineMapLen/2);

//     DMANow(3,AffineTest2Tiles,&CHARBLOCK[0],AffineTest2TilesLen/2);
//     DMANow(3,AffineTest2Map,&SCREENBLOCK[8],AffineTest2MapLen/2);

//     // REG_BG2X = ((10)<<0);
//     // REG_BG2Y = ((10)<<0);


//     // fill per 256 screen entries (=32x4 bands)
//     // u32 pse= (u32)SCREENBLOCK;
//     // u32 ses= 0x01010101;
//     // for(int ii=0; ii<16; ii++)
//     // {
//     //     DMANow(3, &pse, &ses, AffineTest2MapLen/4);
//     //     pse += AffineTest2MapLen/4;
//     //     ses += 0x01010101;
//     // }

//     // REG_BG2PA = (5<<8);

//     // REG_BG2PD = (5<<8);

// }









void playCornerfaceB( const unsigned short* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
    
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;
    
        soundB.data = (unsigned char*)sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.loops = loops;
        soundB.isPlaying = 1;
        soundB.duration = ((VBLANK_FREQ * length) / frequency);
        soundB.vBlankCount = 0;
}