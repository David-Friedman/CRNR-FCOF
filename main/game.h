// Player Struct
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
    int rowOffset;
    int colOffset;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int health;
    int barHealth;
    int barColor;
    int punchExtension;
    int blockExtension;
    int punchType;
    int timeoutPunch;
    int feintCount;
    int buffer;
} PLAYER;




// Constants
#define PLAYERSTARTVOFF 450
#define PLAYERSTARTHOFF 442
#define CHAMPSTARTVOFF 490
#define CHAMPSTARTHOFF 460
#define HEALTHBARTILES 10
#define MAXHEALTH 80
#define HARDHIT 17
#define SOFTHIT 5
#define BLOCKHIT 1
#define HEALTHROW 4
#define HEALTHCOL 0
#define HEALTHROW2 4
#define HEALTHCOL2 152
#define HEALTHBARSPRITES 10
#define DODGEOFFSET 8
#define CHAMPHITOFFSET 20
#define PLAYERHITOFFSET 13


// Variables
extern PLAYER player;
extern PLAYER champ;
extern int lives;
extern int loseGame;
extern int enemiesLeft;
extern int enemyOffset;
extern int cheat;
extern int smoothOffset;
extern int gameplayState;
extern int gameTime;
extern int loseTime;
extern int timeUpTime;
extern int cheatRedo;


// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];


// Prototypes
void initGame();
void initTimer();
void updateGame();
void updateGameStart();
void updateSprites();
void updateTime();
void updatePlayer();
void updateChamp();
void drawPlayer();
void drawGame();
void drawDeath();
void initPlayer();




// Player State Machine prototypes
void playerIdle();
void goToPlayerIdle();
void playerBlock();
void goToPlayerBlock();
void playerDodgeLeft();
void goToPlayerDodgeLeft();
void playerDodgeRight();
void goToPlayerDodgeRight();
void playerPunchLeft();
void goToPlayerPunchLeft();
void playerPunchRight();
void goToPlayerPunchRight();
void playerHitLeft();
void goToPlayerHitLeft();
void playerHitRight();
void goToPlayerHitRight();
void playerKO();
void goToPlayerKO();

int fadeInWhite(u32 increment);





// Champ State Machine prototypes
void champIdle();
void goToChampIdle();
void champBlock();
void goToChampBlock();
void champDodgeLeft();
void goToChampDodgeLeft();
void champDodgeRight();
void goToChampDodgeRight();
void champPunchLeft();
void goToChampPunchLeft();
void champPunchRight();
void goToChampPunchRight();
void champHitLeft();
void goToChampHitLeft();
void champHitRight();
void goToChampHitRight();
void champKO();
void goToChampKO();

void champAI();
