
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

// Prototypes
void initialize();

// State Prototypes
void start();
void goToStart();
void game();
void goToGame();
void continueGame();
void pause();
void goToPause();
void win();
void goToWin();
void trueWin();
void goToTrueWin();
void lose();
void loseTimer();
void goToLose();
void instructions();
void goToInstructions();
void intro();
void goToIntro();
void stats();
void goToStats();
void updateCutscenes();
void goToCutscenes();
int fadeOut(u32 increment);
int fadeIn(u32 increment);
int fadeOutWhite(u32 increment);
int fadeInWhite(u32 increment);
void setTint(u32 floatNum);
void setTintWhite(u32 floatNum);


// States
enum {START, GAME, PAUSE, LOSE, WIN, INSTRUCTIONS, CUTSCENE};
void (*state)();

// Variables for Background Offsets
int vOff0;
int hOff0;
int vOff1;
int hOff1;
int vOff2;
int hOff2;
int vOff3;
int hOff3;

u32 fadeNum = 0x00;
u32 fpaNum2;

int cutsceneID;

int lossCount;
int winCount;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;
unsigned short gameButtons;
unsigned short gameOldButtons;


// Random Seed
int seed;
int timeVar;
int timeVar2;
int frameNum;
int pauseBlink;


// Menu Variables
int menuNum;
int sliderNum;
int vOffmenu;
int hOffmenu;
int vOffmenu2;
int hOffmenu2;
int goTime;
int cheat;
int smoothOffset;
int loseTime;
u32 second;


int main() {

    initialize();

    while(1) {
        // Updates button variables
        if (!(state == pause)) {
            gameOldButtons = gameButtons;
            gameButtons = BUTTONS;
        }


        oldButtons = buttons;
        buttons = BUTTONS;

                
        // State Pointer
        state();
        
               
    }
}

// Sets up GBA
void initialize() {
    // REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    // REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    winCount = 0;
    setupSounds();
    setupInterrupts();

    // cutsceneID = 1;
    // goToCutscenes();

    // goToWin();

    goToStart();

    // goToIntro();

    // goToStats();

}

// Title Screen
void start() {
    seed++;

    if (winCount == 1) {
        REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_BDa | BLD_WHITE;

        if (fpaNum2 > 0x00) {
            REG_BLDY = BLD_EY((fpaNum2)/8);
            fpaNum2-=0x01;
        }
    }


    if (goTime == 0 && fpaNum2 <= 0 && !fadeIn(0x01)) {
        if((BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A)) && menuNum == 1) {
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);

            goTime++;
            // goToGame();
        } else if ((BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A)) && menuNum == 0) {
            //goToInstructions();
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);
            goTime--;
        }

        if (BUTTON_PRESSED(BUTTON_SELECT) || BUTTON_PRESSED(BUTTON_LEFT) || BUTTON_PRESSED(BUTTON_RIGHT) || BUTTON_PRESSED(BUTTON_UP) || BUTTON_PRESSED(BUTTON_DOWN)) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum ^= 1;
        }
    }

    if (goTime > 0) {
        goTime++;
        vOffmenu+=2;
        if (!fadeOutWhite(0x01)) {
            goToIntro();
        }
    }

    if (goTime < 0) {
        goTime--;
        vOffmenu+=2;
        if (!fadeOutWhite(0x01)) {
            if (winCount == 1) {
                winCount = 2;
            }
            goToInstructions();
        }
    }

    if (vOff0 < 254) {
        vOff0++;
    }

    if ((timeVar == 0 || timeVar == 3) && goTime == 0) {
        hOff2++;
    }

    if (timeVar == 0 && goTime == 0) {
        hOff1++;
    }

    // Guy
    // shadowOAM[0].attr0 = (115) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    // shadowOAM[0].attr1 = (((SCREENWIDTH/2)-8) + goTime) | ATTR1_MEDIUM;
    
    shadowOAM[0].attr0 = (115) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[0].attr2 = ATTR2_TILEID((frameNum*4),2) | ATTR2_PALROW(1);

    if (!winCount) {
        if (goTime >= 0) {
            shadowOAM[0].attr1 = ((((SCREENWIDTH/2)-8) + goTime) & COLMASK) | ATTR1_MEDIUM;
        } else {
            shadowOAM[0].attr1 = ((((SCREENWIDTH/2)-8) + goTime) & COLMASK) | ATTR1_MEDIUM | ATTR1_HFLIP;
        }

        // if ((((SCREENWIDTH/2)-8) + goTime) > 0) {
        //     shadowOAM[0].attr0 = (115) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        // } else {
        //     shadowOAM[0].attr0 = ATTR0_HIDE;
        // }
    } else {
        shadowOAM[0].attr0 = (115) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL | ATTR0_BLEND;
        shadowOAM[0].attr2 = ATTR2_TILEID((frameNum*4),2) | ATTR2_PALROW(1);

        if (goTime >= 0) {
            shadowOAM[0].attr1 = (170 + goTime) | ATTR1_MEDIUM;
        } else {
            shadowOAM[0].attr1 = (170 + goTime) | ATTR1_MEDIUM | ATTR1_HFLIP;
        }


        shadowOAM[5].attr0 = (115 + sliderNum) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND;
        shadowOAM[5].attr1 = ((50 + goTime) & COLMASK) | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_TILEID(2,4) | ATTR2_PALROW(1);
    }


    // Start
    shadowOAM[1].attr0 = (149) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[1].attr1 = ((SCREENWIDTH/2)+40) | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_TILEID(0,8) | ATTR2_PALROW(1);


    // Instructions
    shadowOAM[2].attr0 = (149) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[2].attr1 = ((SCREENWIDTH/2)-80) | ATTR1_SMALL;
    shadowOAM[2].attr2 = ATTR2_TILEID(2,8) | ATTR2_PALROW(1);

    shadowOAM[3].attr0 = (149) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[3].attr1 = ((SCREENWIDTH/2)-48) | ATTR1_SMALL;
    shadowOAM[3].attr2 = ATTR2_TILEID(2,12) | ATTR2_PALROW(1);

    // Cursor
    shadowOAM[4].attr0 = (145) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    // shadowOAM[4].attr1 = ((SCREENWIDTH/2)+15) | ATTR1_MEDIUM;
    shadowOAM[4].attr2 = ATTR2_TILEID(0,4) | ATTR2_PALROW(1);

    if ((((timeVar2 % 20) > 9) || goTime != 0)) {
        if (menuNum) {
            shadowOAM[4].attr1 = (120 + 15 + vOffmenu) | ATTR1_MEDIUM;
            shadowOAM[1].attr2 = ATTR2_TILEID(0,8) | ATTR2_PALROW(1);
        } else {
            shadowOAM[4].attr1 = (15 + vOffmenu) | ATTR1_MEDIUM;
            shadowOAM[2].attr2 = ATTR2_TILEID(2,8) | ATTR2_PALROW(1);
            shadowOAM[3].attr2 = ATTR2_TILEID(2,12) | ATTR2_PALROW(1);

        }
    } else {
        if (menuNum) {
            shadowOAM[4].attr1 = (120 + 16) | ATTR1_MEDIUM;
            shadowOAM[1].attr2 = ATTR2_TILEID(1,8) | ATTR2_PALROW(1);

        } else {
            shadowOAM[4].attr1 = (16) | ATTR1_MEDIUM;
            shadowOAM[2].attr2 = ATTR2_TILEID(3,8) | ATTR2_PALROW(1);
            shadowOAM[3].attr2 = ATTR2_TILEID(3,12) | ATTR2_PALROW(1);
        }
    }



    if (timeVar == 0) {
        frameNum++;
    }

    if (frameNum > 3) {
        frameNum = 0;
    }


    if (frameNum > 1) {
        sliderNum = 2;
    } else {
        sliderNum = 0;
    }


    waitForVBlank();

    DMANow(3,shadowOAM,OAM,128*4);

    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    timeVar++;
    timeVar2++;

    if (timeVar > 6) {
        timeVar = 0;
    }

}
void goToStart() {
    if (winCount != 1) {
        stopSound();
        playSoundB(TitleMusic2,TITLEMUSIC2LEN,TITLEMUSIC2FREQ, 1);
        hideSprites();
        setTint(0x80);
        fpaNum2 = 0;
    }

    if (winCount == 1) {
        REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_BDa | BLD_WHITE;
        fpaNum2 = 0x80;

    }


    cheatRedo = 0;


    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;




    DMANow(3,menuspritesheetPal,SPRITEPALETTE,menuspritesheetPalLen/2);
    DMANow(3,menuspritesheetTiles,&CHARBLOCK[4],menuspritesheetTilesLen/2);


    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(17) | BG_4BPP | BG_SIZE_WIDE;
    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;


    DMANow(3,StreetPal,PALETTE,StreetPalLen/2);


    DMANow(3,TitleTextTiles,&CHARBLOCK[0],TitleTextTilesLen/2);
    DMANow(3,TitleTextMap,&SCREENBLOCK[7],TitleTextMapLen/2);

    DMANow(3,CityTiles,&CHARBLOCK[1],CityTilesLen/2);
    DMANow(3,CityMap,&SCREENBLOCK[17],CityMapLen/2);


    DMANow(3,StreetTiles,&CHARBLOCK[3],StreetTilesLen/2);
    DMANow(3,StreetMap,&SCREENBLOCK[30],StreetMapLen/2);




    hOff0 = 240;
    if (winCount != 1) {
        vOff0 = 70;
    } else {
        vOff0 = 254;
    }


    hOff2 = 0;
    vOff2 = 75;

    hOff1 = 233;
    vOff1 = 75;

    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    DMANow(3,shadowOAM,OAM,128*4);

    waitForVBlank();

    timeVar = 0;
    timeVar2 = 0;
    menuNum = 1;
    vOffmenu = 0;
    frameNum = 0;
    cheat = 0;
    lossCount = 0;
    goTime = 0;
    state = start;
    sliderNum = 0;
}


// Main state for gameplay
void game() {
    updateGame();

    REG_BLDALPHA = BLD_EVA((0x80)/8) | BLD_EVB((0x22)/8);
    // REG_BLDY = BLD_EY((fpaNum)/8);

    // fpaNum += 0x01;



    // hOff2 = hOff2 + 1;
    //     hOff3 = hOff3 - 1;
    waitForVBlank();

    // drawPlayer();

    if (hOff2 - 8 < smoothOffset) {
        hOff2+=1;
        if (hOff2 & 1) {
            hOff3++;
        }
        // champ.col+=1;
    }

    if (hOff2 - 8 > smoothOffset) {
        hOff2-=1;
        if (hOff2 & 1) {
            hOff3--;
        }
        // champ.col-=1;
    }



    REG_BG0HOFF = PLAYERSTARTHOFF*2 - (player.col + player.colOffset/4);
    REG_BG0VOFF = PLAYERSTARTVOFF*2 - (player.row + player.rowOffset);

    REG_BG1HOFF = CHAMPSTARTHOFF - (champ.col + champ.colOffset/4);
    REG_BG1VOFF = CHAMPSTARTVOFF - (champ.row + champ.rowOffset);



    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;

    if (player.health <= 8 && gameplayState == 1) {
        if (gameplayState == 1) {
            playSoundA(KOSound,KOSOUNDLEN,KOSOUNDFREQ, 0);
        }
        gameplayState = 2;
    }

    if (champ.health <= 8 && gameplayState == 1) {
        if (gameplayState == 1 && !cheat) {
            playSoundB(KOSound,KOSOUNDLEN,KOSOUNDFREQ, 0);
        }

        if (gameplayState == 1 && cheat) {
            playSoundB(CheatKOSound,CHEATKOSOUNDLEN,CHEATKOSOUNDFREQ, 0);
        }        

        gameplayState = 3;
    }


    if ((player.health <= 8 && player.aniState == 8) || timeUpTime <= 40) {
        //vOff2++;
        if (!fadeOut(0x01)) {
            goToLose();
        }
    } else if (gameplayState == 1) {
        REG_BLDY = BLD_EY((0x00)/8);
    }

    if (champ.health <= 8 && champ.aniState == 8) {
        if (!fadeOutWhite(0x01)) {
            // goToWin();
            if (cheat){
                cutsceneID = 1;
                goToCutscenes();
            } else {
                goToWin();
            }
        }
    }

        DMANow(3,shadowOAM,OAM,128*4);


    if (gameplayState == 0) {
        fadeInWhite(0x01);
    }


    if (gameplayState == 1) {
        REG_BLDCNT = BLD_BG0a | BLD_BG1b | BLD_BG2b | BLD_BG3b | BLD_STD;
        if(BUTTON_PRESSED(BUTTON_START) && player.health > 8) {
            // pauseSound();
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);
            goToPause();
        }
    }



}
void goToGame() {
    // if (!cheat || cheatRedo) {
    //     playSoundB(AudienceSounds,AUDIENCESOUNDSLEN,AUDIENCESOUNDSFREQ, 1);
    // }


    fadeNum = 0;
    smoothOffset = 0;

    timeVar = 0;

    DMANow(3,spritesheetPal,SPRITEPALETTE,spritesheetPalLen/2);
    DMANow(3,spritesheetTiles,&CHARBLOCK[4],spritesheetTilesLen/2);

            DMANow(3,shadowOAM,OAM,128*4);


    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    

    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG20Pal,PALETTE,BackgroundBG20PalLen/2);

    DMANow(3,BackgroundBG20Tiles,&CHARBLOCK[3],BackgroundBG20TilesLen/2);
    DMANow(3,BackgroundBG20Map,&SCREENBLOCK[31],BackgroundBG20MapLen/2);

    hOff2 = 8;
    vOff2 = 128;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;


    REG_BG3CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(23) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG30Tiles,&CHARBLOCK[2],BackgroundBG30TilesLen/2);
    DMANow(3,BackgroundBG30Map,&SCREENBLOCK[23],BackgroundBG30MapLen/2);

    hOff3 = 8;
    vOff3 = 56;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;


    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,Idle0Tiles,&CHARBLOCK[0],Idle0TilesLen/2);
    DMANow(3,Idle0Map,&SCREENBLOCK[7],Idle0MapLen/2);

    hOff0 = 432;
    vOff0 = 454;

    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    // REG_BLDCNT = BLD_BG0a | BLD_BG1b | BLD_BG2b | BLD_BG3b | BLD_STD;



    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
    DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);

    hOff1 = 460;
    vOff1 = 490;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    initGame();


    waitForVBlank();

    // DMANow(3,spritesheetPal,SPRITEPALETTE,spritesheetPalLen/2);
    // DMANow(3,spritesheetTiles,&CHARBLOCK[4],spritesheetTilesLen/2);

    // hideSprites();
    setTintWhite(0x80);




    state = game;


    // fadeOut(0x01);
}


void continueGame() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    

    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG20Pal,PALETTE,BackgroundBG20PalLen/2);

    DMANow(3,BackgroundBG20Tiles,&CHARBLOCK[3],BackgroundBG20TilesLen/2);
    DMANow(3,BackgroundBG20Map,&SCREENBLOCK[31],BackgroundBG20MapLen/2);


    REG_BG3CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(23) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,BackgroundBG30Tiles,&CHARBLOCK[2],BackgroundBG30TilesLen/2);
    DMANow(3,BackgroundBG30Map,&SCREENBLOCK[23],BackgroundBG30MapLen/2);



    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,Idle0Tiles,&CHARBLOCK[0],Idle0TilesLen/2);
    DMANow(3,Idle0Map,&SCREENBLOCK[7],Idle0MapLen/2);



    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
    DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);



    DMANow(3,spritesheetPal,SPRITEPALETTE,spritesheetPalLen/2);
    DMANow(3,spritesheetTiles,&CHARBLOCK[4],spritesheetTilesLen/2);

    waitForVBlank();


    gameOldButtons = 0;
    gameButtons = 0;
    state = game;

}

// Pauses game at various states
void pause() {
    // if (pauseBlink < 50) {
    //     shadowOAM[127].attr0 = (SCREENHEIGHT-7) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    // }

    // if (pauseBlink > 50) {
    //     shadowOAM[127].attr0 = ATTR0_HIDE;
    // }

    // waitForVBlank();

    // DMANow(3,shadowOAM,OAM,128*4);

    // pauseBlink++;

    // if (pauseBlink > 100) {
    //     pauseBlink = 0;
    // }

    // Selection
    if (menuNum == 0) {
        shadowOAM[0].attr0 = 81 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    } else if (menuNum == 1) {
        shadowOAM[0].attr0 = 96 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    } else if (menuNum == 2) {
        shadowOAM[0].attr0 = 116 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    }
    // shadowOAM[0].attr1 = (SCREENWIDTH - 29) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(0,4) | ATTR2_PALROW(1);
    if (((timeVar % 20) > 9) || goTime > 0) {
        shadowOAM[0].attr1 = ((SCREENWIDTH/3 - 20)) | ATTR1_MEDIUM;
    } else {
        shadowOAM[0].attr1 = (SCREENWIDTH/3 - 21) | ATTR1_MEDIUM;
    }

    // Continue
    shadowOAM[1].attr0 = 85 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[1].attr1 = (SCREENWIDTH/2 - 23) | ATTR1_SMALL;
    // shadowOAM[1].attr2 = ATTR2_TILEID(4,8) | ATTR2_PALROW(1);
    shadowOAM[2].attr0 = 85 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[2].attr1 = (SCREENWIDTH/2 + 9) | ATTR1_TINY;
    // shadowOAM[2].attr2 = ATTR2_TILEID(4,12) | ATTR2_PALROW(1);

    if (menuNum != 0 || (timeVar % 20) > 9) {
        shadowOAM[1].attr2 = ATTR2_TILEID(4,8) | ATTR2_PALROW(1);
        shadowOAM[2].attr2 = ATTR2_TILEID(4,12) | ATTR2_PALROW(1);
    } else {
        shadowOAM[1].attr2 = ATTR2_TILEID(5,8) | ATTR2_PALROW(1);
        shadowOAM[2].attr2 = ATTR2_TILEID(5,12) | ATTR2_PALROW(1);
    }

    // Quit
    shadowOAM[3].attr0 = 100 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[3].attr1 = (SCREENWIDTH/2 - 23) | ATTR1_SMALL;
    // shadowOAM[3].attr2 = ATTR2_TILEID(6,8) | ATTR2_PALROW(1);

    if (menuNum != 1 || (timeVar % 20) > 9) {
        shadowOAM[3].attr2 = ATTR2_TILEID(6,8) | ATTR2_PALROW(1);
    } else {
        shadowOAM[3].attr2 = ATTR2_TILEID(7,8) | ATTR2_PALROW(1);
    }


    waitForVBlank();

    DMANow(3,shadowOAM,OAM,128*4);

    if (timeVar % 9 == 0 || timeVar % 9 == 3 || timeVar % 9 == 6) {
        hOffmenu++;
        vOffmenu--;
        REG_BG3HOFF = hOffmenu;
        REG_BG3VOFF = vOffmenu;
    }

    timeVar++;

        if (BUTTON_PRESSED(BUTTON_START)) {
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);
            continueGame();
        }

        if (((BUTTON_PRESSED(BUTTON_A)) && menuNum == 0) || BUTTON_PRESSED(BUTTON_B)) {
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);
            continueGame();
        }
        if ((BUTTON_PRESSED(BUTTON_A)) && menuNum == 1) {
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);
            goToStart();
        }
        if (BUTTON_PRESSED(BUTTON_SELECT) && menuNum == 1) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum = 0;
        } else if (BUTTON_PRESSED(BUTTON_SELECT) && menuNum < 1) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum++;
        }
        if (BUTTON_PRESSED(BUTTON_DOWN) && menuNum < 1) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum++;
        } else if (BUTTON_PRESSED(BUTTON_DOWN) && menuNum == 1) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum = 0;
        }
        if (BUTTON_PRESSED(BUTTON_UP) && menuNum > 0) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum--;
        } else if (BUTTON_PRESSED(BUTTON_UP) && menuNum == 0) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
            menuNum = 1;
        }

    // if(BUTTON_PRESSED(BUTTON_SELECT)) {
    //     goToStart();
    // }

}
void goToPause() {
    
    REG_DISPCTL = MODE0 | BG3_ENABLE | SPRITE_ENABLE;
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    vOffmenu = 0;
    hOffmenu = 0;
    timeVar = 0;
    menuNum = 0;

    hideSprites();

    DMANow(3,PolkaBluePal,PALETTE,PolkaBluePalLen/2);
    DMANow(3,LogicalOrangeTiles,&CHARBLOCK[3],LogicalOrangeTilesLen/2);
    DMANow(3,LogicalOrangeMap,&SCREENBLOCK[31],LogicalOrangeMapLen/2);

    DMANow(3,menuspritesheetPal,SPRITEPALETTE,menuspritesheetPalLen/2);
    DMANow(3,menuspritesheetTiles,&CHARBLOCK[4],menuspritesheetTilesLen/2);

    state = pause;


    // shadowOAM[127].attr0 = (SCREENHEIGHT-7) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    // shadowOAM[127].attr1 = (SCREENWIDTH - 32) | ATTR1_SMALL;
    // shadowOAM[127].attr2 = ATTR2_TILEID(0,15) | ATTR2_PALROW(2) | ATTR2_PRIORITY(0);

    // waitForVBlank();

    // DMANow(3,shadowOAM,OAM,128*4);

    // pauseBlink = 0;
}

// Lose Screen
void lose() {

    // Lose Screen Sprites
    // Timer
    if (loseTime < 11) {
        shadowOAM[125].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[125].attr1 = ((SCREENWIDTH/2 - 14)) | ATTR1_SMALL;
        shadowOAM[125].attr2 = ATTR2_TILEID((loseTime/10)*2,16) | ATTR2_PALROW(1);

        shadowOAM[126].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[126].attr1 = ((SCREENWIDTH/2) - 2) | ATTR1_SMALL;
        shadowOAM[126].attr2 = ATTR2_TILEID((loseTime%10)*2,16) | ATTR2_PALROW(1);
    } else if (loseTime == 11) {
        shadowOAM[125].attr0 = 40 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[125].attr1 = ((SCREENWIDTH/2 - 14)) | ATTR1_MEDIUM;
        shadowOAM[125].attr2 = ATTR2_TILEID(0,18) | ATTR2_PALROW(1);
        shadowOAM[126].attr0 = ATTR0_HIDE;
    }


    // Selection
    if (menuNum == 0) {
        shadowOAM[0].attr0 = 81 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
    } else if (menuNum == 1) {
        shadowOAM[0].attr0 = 96 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
    } else if (menuNum == 2) {
        shadowOAM[0].attr0 = 116 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
    }
    // shadowOAM[0].attr1 = (SCREENWIDTH - 29) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(0,4) | ATTR2_PALROW(1);
    if (((timeVar % 20) > 9) || goTime > 0) {
        shadowOAM[0].attr1 = ((SCREENWIDTH/3 - 20) + goTime) | ATTR1_MEDIUM;
    } else {
        shadowOAM[0].attr1 = (SCREENWIDTH/3 - 21) | ATTR1_MEDIUM;
    }

    // Continue
    shadowOAM[1].attr0 = 85 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
    shadowOAM[1].attr1 = (SCREENWIDTH/2 - 23) | ATTR1_SMALL;
    // shadowOAM[1].attr2 = ATTR2_TILEID(4,8) | ATTR2_PALROW(1);
    shadowOAM[2].attr0 = 85 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
    shadowOAM[2].attr1 = (SCREENWIDTH/2 + 9) | ATTR1_TINY;
    // shadowOAM[2].attr2 = ATTR2_TILEID(4,12) | ATTR2_PALROW(1);

    if (menuNum != 0 || (timeVar % 20) > 9) {
        shadowOAM[1].attr2 = ATTR2_TILEID(4,8) | ATTR2_PALROW(1);
        shadowOAM[2].attr2 = ATTR2_TILEID(4,12) | ATTR2_PALROW(1);
    } else {
        shadowOAM[1].attr2 = ATTR2_TILEID(5,8) | ATTR2_PALROW(1);
        shadowOAM[2].attr2 = ATTR2_TILEID(5,12) | ATTR2_PALROW(1);
    }

    // Quit
    shadowOAM[3].attr0 = 100 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
    shadowOAM[3].attr1 = (SCREENWIDTH/2 - 23) | ATTR1_SMALL;
    // shadowOAM[3].attr2 = ATTR2_TILEID(6,8) | ATTR2_PALROW(1);

    if (menuNum != 1 || (timeVar % 20) > 9) {
        shadowOAM[3].attr2 = ATTR2_TILEID(6,8) | ATTR2_PALROW(1);
    } else {
        shadowOAM[3].attr2 = ATTR2_TILEID(7,8) | ATTR2_PALROW(1);
    }


    if (!cheat && lossCount >= 2) {
        // Cheat
        shadowOAM[4].attr0 = 115 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE | ATTR0_BLEND;
        shadowOAM[4].attr1 = (SCREENWIDTH/2 - 23) | ATTR1_LARGE;
        shadowOAM[4].attr2 = ATTR2_TILEID(8,8) | ATTR2_PALROW(1);

        if (menuNum != 2 || (timeVar % 20) > 9) {
            shadowOAM[4].attr2 = ATTR2_TILEID(8,8) | ATTR2_PALROW(1);
        } else {
            shadowOAM[4].attr2 = ATTR2_TILEID(12,8) | ATTR2_PALROW(1);
        }   
    }

    waitForVBlank();

    DMANow(3,shadowOAM,OAM,128*4);



    if (timeVar % 9 == 0 || timeVar % 9 == 3 || timeVar % 9 == 6) {
        hOffmenu++;
        vOffmenu--;
        REG_BG3HOFF = hOffmenu;
        REG_BG3VOFF = vOffmenu;
    }

    timeVar++;


    if (goTime > 0) {
        goTime+=2;

        if (menuNum == 0 && !fadeOutWhite(0x01)) {
            goToStats();
        } else if (menuNum == 1 && !fadeOut(0x01)) {
            goToStart();
        } else if (menuNum == 2 && !fadeOutWhite(0x01)) {
            cheat = 1;
            cutsceneID = 0;
            goToCutscenes();
        }
    }

    if (loseTime > 10 && !fadeOut(0x01)) {
        goToStart();
    }



    if (goTime == 0 && loseTime < 11 && !fadeIn(0x01))  {
        loseTimer();
        if (loseTime < 10) {
            if ((BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A))) {
                goTime++;
            }

            if (lossCount >= 2) {
                if (BUTTON_PRESSED(BUTTON_SELECT) && menuNum == 2 && !cheat) {
                    menuNum = 0;
                } else if (BUTTON_PRESSED(BUTTON_SELECT) && menuNum < 2 && !cheat) {
                    menuNum++;
                }
            }

            if (BUTTON_PRESSED(BUTTON_SELECT) && menuNum < 1 && ((cheat) || lossCount < 2)) {
                menuNum++;
            } else if (BUTTON_PRESSED(BUTTON_SELECT) && menuNum == 1 && ((cheat) || lossCount < 2)) {
                menuNum = 0;
            }

            if (lossCount >= 2) {
                if (BUTTON_PRESSED(BUTTON_DOWN) && menuNum < 2 && !cheat) {
                    menuNum++;
                } else if (BUTTON_PRESSED(BUTTON_DOWN) && menuNum == 2 && !cheat) {
                    menuNum = 0;
                }
            }

            if (BUTTON_PRESSED(BUTTON_DOWN) && menuNum < 1 && ((cheat) || lossCount < 2)) {
                menuNum++;
            } else if (BUTTON_PRESSED(BUTTON_DOWN) && menuNum == 1 && ((cheat) || lossCount < 2)) {
                menuNum = 0;
            }

            if (BUTTON_PRESSED(BUTTON_UP) && menuNum > 0) {
                menuNum--;
            } else if (BUTTON_PRESSED(BUTTON_UP) && menuNum == 0) {
                if (!cheat && lossCount >= 2) {
                    menuNum = 2;
                } else if (((cheat) || lossCount < 2)) {
                    menuNum = 1;
                }
            }
        }
    }
}

void loseTimer() {
    REG_TM2CNT = TM_FREQ_1024| TIMER_ON;

    if (REG_TM3D != second) {
        second = REG_TM3D;
        if (loseTime < 11 && goTime == 0) {
            loseTime++;
            switch(loseTime) {
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
                    playSoundA(TenCountSound,TENCOUNTSOUNDLEN,TENCOUNTSOUNDFREQ, 0);
                    break;
                case 11:
                    playSoundA(KnockoutCountSound,KNOCKOUTCOUNTSOUNDLEN,KNOCKOUTCOUNTSOUNDFREQ, 0);
                    break;
            }

        }
    }
}

void goToLose() {
    playSoundB(PlayerKnockDownMusic,PLAYERKNOCKDOWNMUSICLEN,PLAYERKNOCKDOWNMUSICFREQ, 0);


    REG_DISPCTL = MODE0 | BG3_ENABLE | SPRITE_ENABLE;
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,PolkaBluePal,PALETTE,PolkaBluePalLen/2);
    DMANow(3,BudsDarkTiles,&CHARBLOCK[3],BudsDarkTilesLen/2);
    DMANow(3,BudsDarkMap,&SCREENBLOCK[31],BudsDarkMapLen/2);

    DMANow(3,menuspritesheetPal,SPRITEPALETTE,menuspritesheetPalLen/2);
    DMANow(3,menuspritesheetTiles,&CHARBLOCK[4],menuspritesheetTilesLen/2);

    hideSprites();
    vOffmenu = 0;
    hOffmenu = 0;
    timeVar = 0;
    menuNum = 0;
    goTime = 0;

    loseTime = 0;


    second = -1;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;

    REG_TM2D = -0x4000;

    lossCount++;


    REG_TM3CNT = TIMER_ON | TM_CASCADE;

    state = lose;
}


// Win Screen
void goToWin() {
    hideSprites();
    REG_DISPCTL = MODE0 | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    vOffmenu = 0;
    hOffmenu = 0;
    timeVar = 0;

    hOff2 = 0;
    vOff2 = 0;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    winCount = 0;

    DMANow(3,ChampionBeltPal,PALETTE,ChampionBeltPalLen/2);
    DMANow(3,BudsGreenTiles,&CHARBLOCK[3],BudsGreenTilesLen/2);
    DMANow(3,BudsGreenMap,&SCREENBLOCK[31],BudsGreenMapLen/2);
    DMANow(3,ChampionBeltTiles,&CHARBLOCK[0],ChampionBeltTilesLen/2);
    DMANow(3,ChampionBeltMap,&SCREENBLOCK[7],ChampionBeltMapLen/2);
    state = win;
}

void win() {
    waitForVBlank();

    if (timeVar % 9 == 0 || timeVar % 9 == 3 || timeVar % 9 == 6) {
        hOffmenu++;
        vOffmenu--;
        REG_BG3HOFF = hOffmenu;
        REG_BG3VOFF = vOffmenu;
    }

    timeVar++;

    if (timeVar == 400) {
        playSoundB(VictoryMusic,VICTORYMUSICLEN,VICTORYMUSICFREQ, 0);
    }

    if(timeVar > 400 && !fadeInWhite(0x01)) {


        if (BUTTON_PRESSED(BUTTON_START)) {
            goToStart();
        }
    }
}


// Win Screen
void goToTrueWin() {
    hideSprites();
    REG_DISPCTL = MODE0 | BG3_ENABLE;
    REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    vOffmenu = 0;
    hOffmenu = 0;
    timeVar = 0;
    sliderNum = 0;

    fpaNum2 = 0;

    hOff2 = 240;
    vOff2 = 254;

    hOff3 = 240;
    vOff3 = 254;

    winCount = 1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;

    REG_BLDCNT = BLD_BG3a | BLD_BDb | BLD_STD;
    REG_BLDALPHA = (BLD_EVA((0x00)/8) | BLD_EVB((0x00)/8));



    DMANow(3,menuspritesheetPal,SPRITEPALETTE,menuspritesheetPalLen/2);
    DMANow(3,menuspritesheetTiles,&CHARBLOCK[4],menuspritesheetTilesLen/2);



    DMANow(3,TitleTextEndPal,PALETTE,TitleTextEndPalLen/2);
    DMANow(3,TitleTextEndTiles,&CHARBLOCK[3],TitleTextEndTilesLen/2);
    DMANow(3,TitleTextEndMap,&SCREENBLOCK[31],TitleTextEndMapLen/2);
    DMANow(3,EndTextTiles,&CHARBLOCK[0],EndTextTilesLen/2);
    DMANow(3,EndTextMap,&SCREENBLOCK[7],EndTextMapLen/2);
    state = trueWin;
}





void trueWin() {
    if (timeVar > 30 && timeVar < 300) {
        REG_BLDCNT = BLD_BG3a | BLD_BDb |  BLD_STD;
        if (fpaNum2 < 0x81 && (timeVar & 1)) {
            fpaNum2+=0x01;
            REG_BLDALPHA = (BLD_EVA((fpaNum2)/8) | BLD_EVB((0x00)/8));
        }
    }

    if (timeVar == 300) {
        fpaNum2 = 0;
    }

    if (timeVar > 420 && timeVar < 550) {
        REG_BLDCNT = BLD_BG2a | BLD_BDb |  BLD_STD;

        if (fpaNum2 < 0x81 && (timeVar & 1)) {
            fpaNum2+=0x01;
            REG_BLDALPHA = (BLD_EVA((fpaNum2)/8) | BLD_EVB((0x00)/8));
            REG_DISPCTL = MODE0 | BG3_ENABLE | BG2_ENABLE;
        }
    }


    if (timeVar == 550) {
        fpaNum2 = 0;
        REG_BLDCNT = BLD_OBJa | BLD_BDb |  BLD_STD;

    }

    if(timeVar > 550) {


        if (fpaNum2 < 0x81 && (timeVar & 1)) {
            fpaNum2+=0x01;
            REG_BLDALPHA = (BLD_EVA((fpaNum2)/8) | BLD_EVB((0x00)/8));
            REG_DISPCTL = MODE0 | BG3_ENABLE | BG2_ENABLE | SPRITE_ENABLE;
        }


        shadowOAM[0].attr0 = (115) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL | ATTR0_BLEND;
        shadowOAM[0].attr1 = (170) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_TILEID((frameNum*4),2) | ATTR2_PALROW(1);

        shadowOAM[5].attr0 = (115 + sliderNum) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND;
        shadowOAM[5].attr1 = (50) | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_TILEID(2,4) | ATTR2_PALROW(1);
    }


    if (timeVar == 1800) {
        REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_BDa | BLD_WHITE;

        REG_BLDY = BLD_EY((0x80)/8);
    }

    if (timeVar == 1820) {
        REG_BLDY = BLD_EY((0x00)/8);
    }


    if (timeVar == 1840) {
        REG_BLDY = BLD_EY((0x80)/8);
    }


    if (timeVar == 1860) {
        REG_BLDY = BLD_EY((0x00)/8);
    }

    if (timeVar == 1880) {
        REG_BLDY = BLD_EY((0x80)/8);
    }


    if (timeVar > 1890) {
        goToStart();
    }





    if (timeVar2 == 0) {
        frameNum++;

    }

    if (frameNum > 3) {
        frameNum = 0;
    }

    if (frameNum > 1) {
        sliderNum = 2;
    } else {
        sliderNum = 0;
    }


    waitForVBlank();

    DMANow(3,shadowOAM,OAM,128*4);





    // if (timeVar % 9 == 0 || timeVar % 9 == 3 || timeVar % 9 == 6) {
    //     hOffmenu++;
    //     vOffmenu--;
    //     REG_BG3HOFF = hOffmenu;
    //     REG_BG3VOFF = vOffmenu;
    // }

    // timeVar++;

    // if (timeVar == 400) {
    //     playSoundB(VictoryMusic,VICTORYMUSICLEN,VICTORYMUSICFREQ, 0);
    // }

    // if(timeVar > 400 && !fadeInWhite(0x01)) {


    // if (BUTTON_PRESSED(BUTTON_START)) {
    //         goToStart();
    //     }
    // }

    timeVar2++;
    timeVar++;


    if (timeVar2 > 6) {
        timeVar2 = 0;
    }
}



void instructions() {
    shadowOAM[2].attr0 = ATTR0_HIDE;
    shadowOAM[3].attr0 = ATTR0_HIDE;
    shadowOAM[4].attr0 = ATTR0_HIDE;
    shadowOAM[5].attr0 = ATTR0_HIDE;




    shadowOAM[0].attr0 = 133 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    // shadowOAM[0].attr1 = (SCREENWIDTH - 29) | ATTR1_SMALL | ATTR1_HFLIP;
    shadowOAM[0].attr2 = ATTR2_TILEID(0,0) | ATTR2_PALROW(0) |ATTR2_PRIORITY(0);

    shadowOAM[1].attr0 = 133 | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    // shadowOAM[1].attr1 = 13 | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_TILEID(0,0) | ATTR2_PALROW(0) |ATTR2_PRIORITY(0);


    if ((timeVar % 20) > 9) {
        shadowOAM[0].attr1 = (SCREENWIDTH - 28) | ATTR1_SMALL | ATTR1_HFLIP;
        shadowOAM[1].attr1 = 12 | ATTR1_SMALL;
    } else {
        shadowOAM[0].attr1 = (SCREENWIDTH - 29) | ATTR1_SMALL | ATTR1_HFLIP;
        shadowOAM[1].attr1 = 13 | ATTR1_SMALL;
    }


    if (sliderNum == 0) {
        if (menuNum == 0) {
            shadowOAM[1].attr0 = ATTR0_HIDE;
        }

        if (menuNum == 3) {
            shadowOAM[0].attr0 = ATTR0_HIDE;
        }


   
    if (!goTime && !fadeInWhite(0x01)) {        
        if(BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_B)) {
            // goToStart();
            playSoundA(StartSound,STARTSOUNDLEN,STARTSOUNDFREQ, 0);
            goTime = 1;
        }


            if(BUTTON_PRESSED(BUTTON_RIGHT) && menuNum < 3) {
            playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);

            if (menuNum == 1) {
                DMANow(3,TutorialBoards1Tiles,&CHARBLOCK[0],TutorialBoards1TilesLen/2);
                DMANow(3,TutorialBoards1Map,&SCREENBLOCK[15],TutorialBoards1MapLen/2);
            } else if (menuNum == 2) {
                DMANow(3,TutorialBoards2Tiles,&CHARBLOCK[0],TutorialBoards2TilesLen/2);
                DMANow(3,TutorialBoards2Map,&SCREENBLOCK[15],TutorialBoards2MapLen/2);
            }
                sliderNum = 256;
                menuNum++;
            }
            if(BUTTON_PRESSED(BUTTON_LEFT) && menuNum > 0) {
                playSoundA(SelectSound,SELECTSOUNDLEN,SELECTSOUNDFREQ, 0);
                if (menuNum == 1) {
                    DMANow(3,TutorialBoards0Tiles,&CHARBLOCK[0],TutorialBoards0TilesLen/2);
                    DMANow(3,TutorialBoards0Map,&SCREENBLOCK[15],TutorialBoards0MapLen/2);
                } else if (menuNum == 2) {
                    DMANow(3,TutorialBoards1Tiles,&CHARBLOCK[0],TutorialBoards1TilesLen/2);
                    DMANow(3,TutorialBoards1Map,&SCREENBLOCK[15],TutorialBoards1MapLen/2);
                }
                sliderNum = -256;
                menuNum--;
            }
        }
    }


    if (goTime && !fadeOut(0x01)) {
        goToStart();
    }


    waitForVBlank();

    if (timeVar % 9 == 0 || timeVar % 9 == 3 || timeVar % 9 == 6) {
        hOffmenu++;
        vOffmenu--;
        REG_BG3HOFF = hOffmenu;
        REG_BG3VOFF = vOffmenu;


    }

    if (sliderNum > 0) {
        hideSprites();
        hOffmenu2+=2;
        REG_BG2HOFF = hOffmenu2;
        sliderNum-=2;
    }

    if (sliderNum < 0) {
        hideSprites();
        hOffmenu2-=2;
        REG_BG2HOFF = hOffmenu2;
        sliderNum+=2;
    }

    DMANow(3,shadowOAM,OAM,128*4);

    timeVar++;


}

void goToInstructions() {
    stopSound();
    playSoundB(InstructionsMusic,INSTRUCTIONSMUSICLEN,INSTRUCTIONSMUSICFREQ, 1);

    REG_BG2HOFF = 0;
    REG_BG2VOFF = 0;
    REG_BG3HOFF = 0;
    REG_BG3VOFF = 0;


    sliderNum = 0;
    goTime = 0;
    menuNum = 0;
    hOffmenu2 = 0;
    vOffmenu2 = 0;
    vOff2 = 0;
    hOff2 = -1;
    hOff3 = 0;
    vOff3 = 0;


    REG_DISPCTL = MODE0 | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;



    REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_WIDE;

    DMANow(3,PolkaBluePal,PALETTE,PolkaBluePalLen/2);
    DMANow(3,TutorialBoards0Tiles,&CHARBLOCK[0],TutorialBoards0TilesLen/2);
    DMANow(3,TutorialBoards0Map,&SCREENBLOCK[15],TutorialBoards0MapLen/2);


    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    vOffmenu = 0;
    hOffmenu = 0;
    timeVar = 0;

    DMANow(3,PolkaBluePal,PALETTE,PolkaBluePalLen/2);
    DMANow(3,PolkaBlueTiles,&CHARBLOCK[3],PolkaBlueTilesLen/2);
    DMANow(3,PolkaBlueMap,&SCREENBLOCK[31],PolkaBlueMapLen/2);


    DMANow(3,menuspritesheetPal,SPRITEPALETTE,menuspritesheetPalLen/2);
    DMANow(3,menuspritesheetTiles,&CHARBLOCK[4],menuspritesheetTilesLen/2);


    hideSprites();


    state = instructions;
}



void intro() {


    if (menuNum == 0 && !fadeInWhite(0x01)) {

        if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_RIGHT)) {
            menuNum = 1;
        }
    }

    if (menuNum == 1 && !fadeOut(0x01)) {
        REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG3_ENABLE;

        hOff0 = 32;

        DMANow(3,Belt1Pal,PALETTE,Belt1PalLen/2);
        DMANow(3,Belt1Tiles,&CHARBLOCK[1],Belt1TilesLen/2);
        DMANow(3,Belt1Map,&SCREENBLOCK[15],Belt1MapLen/2);

        DMANow(3,Belt1BGTextTiles,&CHARBLOCK[0],Belt1BGTextTilesLen/2);
        DMANow(3,Belt1BGTextMap,&SCREENBLOCK[7],Belt1BGTextMapLen/2);


        DMANow(3,Belt1StarBackdropTiles,&CHARBLOCK[2],Belt1StarBackdropTilesLen/2);
        DMANow(3,Belt1StarBackdropMap,&SCREENBLOCK[23],Belt1StarBackdropMapLen/2);


        menuNum = 2;
    }

    if (menuNum == 2 && !fadeIn(0x01)) {
        if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_RIGHT)) {
            menuNum = 3;
        } 
    }

    if (menuNum == 3 && !fadeOut(0x01)) {
        REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE;

        hOff0 = 240;
        vOff0 = 8;

        vOff1 = 230;
        // hOff1 = 0;
        hOff1 = 210;

        DMANow(3,BackgroundBG20Pal,PALETTE,BackgroundBG20PalLen/2);
        DMANow(3,PlayerHoodie0ShadowTiles,&CHARBLOCK[1],PlayerHoodie0ShadowTilesLen/2);
        DMANow(3,PlayerHoodie0ShadowMap,&SCREENBLOCK[15],PlayerHoodie0ShadowMapLen/2);

        DMANow(3,PlayerHoodieTextTiles,&CHARBLOCK[0],PlayerHoodieTextTilesLen/2);
        DMANow(3,PlayerHoodieTextMap,&SCREENBLOCK[7],PlayerHoodieTextMapLen/2);

        DMANow(3,BlueBackTiles,&CHARBLOCK[3],BlueBackTilesLen/2);
        DMANow(3,BlueBackMap,&SCREENBLOCK[31],BlueBackMapLen/2);

        menuNum = 4;
    }

    if (menuNum == 4 && !fadeIn(0x01)) {

        if (timeVar == 40) {
            DMANow(3,PlayerHoodie1ShadowTiles,&CHARBLOCK[1],PlayerHoodie1ShadowTilesLen/2);
            DMANow(3,PlayerHoodie1ShadowMap,&SCREENBLOCK[15],PlayerHoodie1ShadowMapLen/2);
        }

        if (timeVar == 60) {
            DMANow(3,PlayerHoodie1Tiles,&CHARBLOCK[1],PlayerHoodie1TilesLen/2);
            DMANow(3,PlayerHoodie1Map,&SCREENBLOCK[15],PlayerHoodie1MapLen/2);
        }

        if (timeVar == 80) {
            DMANow(3,PlayerHoodie2Tiles,&CHARBLOCK[1],PlayerHoodie2TilesLen/2);
            DMANow(3,PlayerHoodie2Map,&SCREENBLOCK[15],PlayerHoodie2MapLen/2);
        }


        if (timeVar > 120) {
            if (hOff1 < 256) {
                hOff1++;
            } else {

                if (fpaNum2 < 0x80) {
                    fpaNum2+=0x01;
                    REG_BLDCNT = BLD_BG0a | BLD_BG2b | BLD_STD;
                    REG_BLDALPHA = (BLD_EVA((fpaNum2)/8) | BLD_EVB((0x80-fpaNum2)/8));
                } else {
                    if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_RIGHT)) {
                        menuNum = 5;
                    } 
                }


                REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | BG0_ENABLE;
            }
        }


        // if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_RIGHT)) {
        //     menuNum = 5;
        // } 


        timeVar++;
    }

    if (menuNum == 5 && !fadeOutWhite(0x01)) {
        goToStats();
    }

    hOff3++;

    waitForVBlank();


    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;

}


void goToIntro() {
    winCount = 0;

    timeVar = 0;
    menuNum = 0;
    fpaNum2 = 0;

    srand(seed);



    REG_DISPCTL = MODE0 | BG0_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG3CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(23) | BG_4BPP | BG_SIZE_SMALL;


    hOff0 = 0;
    vOff0 = 0;

    hOff1 = 0;
    vOff1 = 0;

    hOff2 = 0;
    vOff2 = 0;

    hOff3 = 0;
    vOff3 = 0;



    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;


    



    // DMANow(3,BackgroundBG20Tiles,&CHARBLOCK[3],BackgroundBG20TilesLen/2);
    // DMANow(3,BackgroundBG20Map,&SCREENBLOCK[31],BackgroundBG20MapLen/2);



    // DMANow(3,BackgroundBG30Tiles,&CHARBLOCK[2],BackgroundBG30TilesLen/2);
    // DMANow(3,BackgroundBG30Map,&SCREENBLOCK[23],BackgroundBG30MapLen/2);



    DMANow(3,Belt0WithTextPal,PALETTE,Belt0WithTextPalLen/2);
    DMANow(3,Belt0WithTextTiles,&CHARBLOCK[0],Belt0WithTextTilesLen/2);
    DMANow(3,Belt0WithTextMap,&SCREENBLOCK[7],Belt0WithTextMapLen/2);




    // DMANow(3,ChampIdle0Tiles,&CHARBLOCK[1],ChampIdle0TilesLen/2);
    // DMANow(3,ChampIdle0Map,&SCREENBLOCK[15],ChampIdle0MapLen/2);



    // DMANow(3,spritesheetPal,SPRITEPALETTE,spritesheetPalLen/2);
    // DMANow(3,spritesheetTiles,&CHARBLOCK[4],spritesheetTilesLen/2);

    playSoundB(SpreadWings,SPREADWINGSLEN,SPREADWINGSFREQ, 1);

    state = intro;
}


void stats() {

    if (sliderNum == 0) {
        fadeInWhite(0x01);
    }

    if (hOff0 > 0) {
        hOff0--;
    } else if (hOff1 < 512) {
        // REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(6) | BG_8BPP | BG_SIZE_SMALL;
        if (hOff1 == 365) {
            REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE;

            menuNum = rand()%3;
            if (menuNum == 0) {
                DMANow(3,VersusScreen2Quote0Tiles,&CHARBLOCK[2],VersusScreen2Quote0TilesLen/2);
                DMANow(3,VersusScreen2Quote0Map,&SCREENBLOCK[22],VersusScreen2Quote0MapLen/2);
            }
            if (menuNum == 1) {
                DMANow(3,VersusScreen2Quote1Tiles,&CHARBLOCK[2],VersusScreen2Quote1TilesLen/2);
                DMANow(3,VersusScreen2Quote1Map,&SCREENBLOCK[22],VersusScreen2Quote1MapLen/2);
            }
            if (menuNum == 2) {
                DMANow(3,VersusScreen2Quote2Tiles,&CHARBLOCK[2],VersusScreen2Quote2TilesLen/2);
                DMANow(3,VersusScreen2Quote2Map,&SCREENBLOCK[22],VersusScreen2Quote2MapLen/2);
            }

        }
        hOff1++;
    }


    if ((BUTTON_PRESSED(BUTTON_A) || (BUTTON_PRESSED(BUTTON_START))) && timeVar > 400) {
        sliderNum = 1;
    }

    if (sliderNum && !fadeOutWhite(0x01)) {
        goToGame();
    }

    // if (hOff1 < 256) {
    //     hOff1--;
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

    timeVar++;

}

void goToStats() {
    sliderNum = 0;
    menuNum = 0;
    timeVar = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG2_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(9) | BG_8BPP | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(22) | BG_4BPP | BG_SIZE_WIDE;
    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;
    // REG_BG3CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(23) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3,VersusIconPal,PALETTE,VersusIconPalLen/2);

    if (!cheat) {
        menuNum = (rand()%3);
        if (menuNum == 0) {
            DMANow(3,VersusScreen1Quote0Tiles,&CHARBLOCK[0],VersusScreen1Quote0TilesLen/2);
            DMANow(3,VersusScreen1Quote0Map,&SCREENBLOCK[9],VersusScreen1Quote0MapLen/2);
        }
        if (menuNum == 1) {
            DMANow(3,VersusScreen1Quote1Tiles,&CHARBLOCK[0],VersusScreen1Quote1TilesLen/2);
            DMANow(3,VersusScreen1Quote1Map,&SCREENBLOCK[9],VersusScreen1Quote1MapLen/2);
        }

        if (menuNum == 2) {
            DMANow(3,VersusScreen1Quote2Tiles,&CHARBLOCK[0],VersusScreen1Quote2TilesLen/2);
            DMANow(3,VersusScreen1Quote2Map,&SCREENBLOCK[9],VersusScreen1Quote2MapLen/2);
        }
    } else {
        DMANow(3,VersusScreen1QuoteSTiles,&CHARBLOCK[0],VersusScreen1QuoteSTilesLen/2);
        DMANow(3,VersusScreen1QuoteSMap,&SCREENBLOCK[9],VersusScreen1QuoteSMapLen/2);
    }


    // DMANow(3,VersusScreen2Quote0Tiles,&CHARBLOCK[2],VersusScreen2Quote0TilesLen/2);
    // DMANow(3,VersusScreen2Quote0Map,&SCREENBLOCK[22],VersusScreen2Quote0MapLen/2);

    DMANow(3,VersusIconTiles,&CHARBLOCK[3],VersusIconTilesLen/2);
    DMANow(3,VersusIconMap,&SCREENBLOCK[30],VersusIconMapLen/2);

    hOff0 = 144;
     // hOff0 = 30;
    vOff0 = 0;

    hOff1 = 365;
    vOff1 = 0;

    hOff2 = 0;
    vOff2 = 0;

    hOff3 = 0;
    vOff3 = 0;



    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = vOff0;

    REG_BG1HOFF = hOff1;
    REG_BG1VOFF = vOff1;

    REG_BG2HOFF = hOff2;
    REG_BG2VOFF = vOff2;

    REG_BG3HOFF = hOff3;
    REG_BG3VOFF = vOff3;

    playSoundA(IntroMontage,INTROMONTAGELEN,INTROMONTAGEFREQ, 0);

    playSoundB(AudienceSounds,AUDIENCESOUNDSLEN,AUDIENCESOUNDSFREQ, 1);


    state = stats;
}





void updateCutscenes() {
    if (cutsceneID == 0 && !goFlag) {
        cheatCutscene();
    }

    if (cutsceneID == 1 && !goFlag) {
        countDownCutscene();
    }

    if (cutsceneID == 2 && !goFlag) {
        spaceCutscene();
    }

    if (goFlag == 1) {
        goToGame();
    }

    if (goFlag == 2) {
        cutsceneID = 2;
        goToCutscenes();
    }

    if (goFlag == 3) {
        goToTrueWin();
    }
}

void goToCutscenes() {
    if (cutsceneID == 0) {
        goFlag = 0;
        goToCheatCutscene();
        state = updateCutscenes;
        cheat = 1;
    }

    if (cutsceneID == 1) {
        goFlag = 0;
        goToCountDownCutscene();
        state = updateCutscenes;
    }


    if (cutsceneID == 2) {
        goToSpaceCutscene();
        goFlag = 0;
        state = updateCutscenes;
    }
}


int fadeOut(u32 increment) {
    REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_OBJa | BLD_BDa | BLD_BLACK;

    if (fadeNum < 0x81) {
        fadeNum+=increment;
        REG_BLDY = BLD_EY((fadeNum)/8);
        return 1;
    } else {
        return 0;
    }
}

int fadeIn(u32 increment) {
    REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_OBJa | BLD_BDa | BLD_BLACK;

    if (fadeNum > 0x00) {
        fadeNum-=increment;
        REG_BLDY = BLD_EY((fadeNum)/8);
        return 1;
    } else {
        return 0;
    }
}


int fadeOutWhite(u32 increment) {
    REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_OBJa | BLD_BDa | BLD_WHITE;

    if (fadeNum < 0x81) {
        fadeNum+=increment;
        REG_BLDY = BLD_EY((fadeNum)/8);
        return 1;
    } else {
        return 0;
    }
}

int fadeInWhite(u32 increment) {
    REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_OBJa | BLD_BDa | BLD_WHITE;

    if (fadeNum > 0x00) {
        fadeNum-=increment;
        REG_BLDY = BLD_EY((fadeNum)/8);
        return 1;
    } else {
        return 0;
    }
}

void setTint(u32 floatNum) {
    REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_OBJa | BLD_BLACK;
    fadeNum = floatNum;
    REG_BLDY = BLD_EY((floatNum)/8);
}

void setTintWhite(u32 floatNum) {
    REG_BLDCNT = BLD_BG0a | BLD_BG1a | BLD_BG2a | BLD_BG3a | BLD_OBJa | BLD_WHITE;
    fadeNum = floatNum;
    REG_BLDY = BLD_EY((floatNum)/8);
}