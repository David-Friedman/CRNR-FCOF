
//{{BLOCK(AffineTest2)

//======================================================================
//
//	AffineTest2, 128x128@8, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ affine map, not compressed, 16x16 
//	Total size: 512 + 128 + 256 = 896
//
//	Time-stamp: 2018-04-09, 23:17:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_AFFINETEST2_H
#define GRIT_AFFINETEST2_H

#define AffineTest2TilesLen 128
extern const unsigned short AffineTest2Tiles[64];

#define AffineTest2MapLen 256
extern const unsigned short AffineTest2Map[128];

#define AffineTest2PalLen 512
extern const unsigned short AffineTest2Pal[256];

#endif // GRIT_AFFINETEST2_H

//}}BLOCK(AffineTest2)
