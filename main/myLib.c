#include "myLib.h"

// The start of the video memory
unsigned short *videoBuffer = (unsigned short *)0x6000000;

// The start of DMA registers
DMA *dma = (DMA *)0x40000B0;

// Set a pixel on the screen in Mode 3
void setPixel3(int row, int col, unsigned short color) {
	videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

// Set a pixel on the screen in Mode 4
void setPixel4(int row, int col, unsigned char colorIndex) {

    unsigned short pixelData = videoBuffer[OFFSET(row, col, SCREENWIDTH)/2];
    if (col & 1) {
        pixelData &= 0x00FF;
        pixelData |= (colorIndex << 8);
    } else {
        pixelData &= 0xFF00;
        pixelData |= colorIndex;
    }
    videoBuffer[OFFSET(row, col, SCREENWIDTH)/2] = pixelData;
}

// Draw a rectangle at the specified location and size in Mode 3
void drawRect3(int row, int col, int height, int width, volatile unsigned short color) {

	for(int r = 0; r < height; r++) {
        DMANow(3, &color, &videoBuffer[OFFSET(row+r, col, SCREENWIDTH)], DMA_SOURCE_FIXED | width);
	}
}

// Draw a rectangle at the specified location and size in Mode 4
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex) {

    volatile unsigned short pixelData = colorIndex | (colorIndex<<8);
    for (int r = 0; r < height; r++) {
        if (col & 1) {
            if (width & 1) {  // Odd col, odd width
                setPixel4(row + r, col, colorIndex);
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col+1, SCREENWIDTH)/2], DMA_SOURCE_FIXED | width/2);
                }
            } else {  // Odd col, even width
                setPixel4(row + r, col, colorIndex);
                if (width > 2) {
                    DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col+1, SCREENWIDTH)/2], DMA_SOURCE_FIXED | (width/2-1));
                }
                setPixel4(row + r, col+width-1, colorIndex);
            }
        } else {
            if (width & 1) {  // Even col, odd width
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col, SCREENWIDTH)/2], DMA_SOURCE_FIXED | width/2);
                }
                setPixel4(row + r, col+width-1, colorIndex);
            } else {  // Even col, even width
                DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col, SCREENWIDTH)/2], DMA_SOURCE_FIXED | width/2);
            }
        }
    }
}

// Fill the entire screen with a single color in Mode 3
void fillScreen3(volatile unsigned short color) {

	DMANow(3, &color, videoBuffer, DMA_SOURCE_FIXED | (SCREENWIDTH * SCREENHEIGHT));
}

// Fill the entire screen with a single color in Mode 4
void fillScreen4(volatile unsigned char colorIndex) {

    volatile unsigned short pixelData = colorIndex | (colorIndex<<8);
    DMANow(3, &pixelData, videoBuffer, DMA_SOURCE_FIXED | (SCREENWIDTH * SCREENHEIGHT / 2));
}

// Draw an image at the specified location and size in Mode 3
void drawImage3(int row, int col, int height, int width, const unsigned short *image) {

    for(int r = 0; r < height; r++) {
        DMANow(3, &image[OFFSET(r, 0, width)], &videoBuffer[OFFSET(row+r, col, SCREENWIDTH)], width);
    }
}

// Draw an image at the specified location and size in Mode 4 (must be even col and width)
void drawImage4(int row, int col, int height, int width, const unsigned short *image) {

    for(int r = 0; r < height; r++) {
        DMANow(3, &image[OFFSET(r, 0, width)/2], &videoBuffer[OFFSET(row+r, col, SCREENWIDTH)/2], width/2);
    }
}

// Fill the entire screen with an image in Mode 3
void drawFullscreenImage3(const unsigned short *image) {

    DMANow(3, image, videoBuffer, SCREENWIDTH * SCREENHEIGHT);
}

// Fill the entire screen with an image in Mode 4
void drawFullscreenImage4(const unsigned short *image) {

    DMANow(3, image, videoBuffer, SCREENWIDTH * SCREENHEIGHT / 2);
}

// Pause code execution until vertical blank begins
void waitForVBlank() {

	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}

// Flips the page
void flipPage() {

    if (REG_DISPCTL & DISP_BACKBUFFER) {
        videoBuffer = BACKBUFFER;
    } else {
        videoBuffer = FRONTBUFFER;
    }
    REG_DISPCTL ^= DISP_BACKBUFFER;
}

// Set up and begin a DMA transfer
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    // Turn DMA off
    dma[channel].cnt = 0;

    // Set source and destination
    dma[channel].src = src;
    dma[channel].dst = dst;

    // Set control and begin
    dma[channel].cnt = cnt | DMA_ON;
}

// Return true if the two rectangular areas are overlapping
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {
    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}

// Hides all sprites in the shadowOAM
void hideSprites() {
    for(int i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
}





// *** Sound ====================================================

double timefactors[] = {0.059604, 3.811, 15.259, 59.382};
extern double timefactors[];

void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_TO_BOTH | 
                     DSA_TIMER0 | 
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 | 
                     DSB_OUTPUT_TO_BOTH | 
                     DSB_TIMER1 | 
                     DSB_FIFO_RESET;

    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;
    
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
    
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
    
        REG_TM0CNT = 0;
    
        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.loops = loops;
        soundA.isPlaying = 1;
        soundA.duration = ((VBLANK_FREQ * length) / frequency);
        soundA.vBlankCount = 0;
        
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
    
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;
    
        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.loops = loops;
        soundB.isPlaying = 1;
        soundB.duration = ((VBLANK_FREQ * length) / frequency);
        soundB.vBlankCount = 0;
}


void setupInterrupts()
{
    REG_IME = 0;
    
    REG_INTERRUPT = (unsigned int)interruptHandler;



    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler() {

    REG_IME = 0;

    if(REG_IF & INT_VBLANK) {
        if (soundA.isPlaying) {

            soundA.vBlankCount++;
            if (soundA.vBlankCount + 3 > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = 0;
                }
            }
        }



        if (soundB.isPlaying) {

            soundB.vBlankCount++;
            if (soundB.vBlankCount + 3 > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = 0;
                }
            }
            
        }
        

        REG_IF = INT_VBLANK; 
    }

    REG_IME = 1;
}

void pauseSound() {

    soundA.isPlaying = 0;
    REG_TM0CNT = 0;



    soundB.isPlaying = 0;
    REG_TM1CNT = 0;

    
}

void unpauseSound() {

    soundA.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;


    soundB.isPlaying = 1;
    REG_TM1CNT = TIMER_ON;
    
}

void stopSound() {

    soundA.isPlaying = 0;
    REG_TM0CNT = 0;
    dma[1].cnt = 0;


    soundB.isPlaying = 0;
    REG_TM1CNT = 0;
    dma[2].cnt = 0;
    
}

void stopSoundA() {
    soundA.isPlaying = 0;
    REG_TM0CNT = 0;
    dma[1].cnt = 0;
}

void stopSoundB() {
    soundB.isPlaying = 0;
    REG_TM1CNT = 0;
    dma[2].cnt = 0;
}



