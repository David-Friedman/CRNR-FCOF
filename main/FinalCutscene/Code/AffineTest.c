
//{{BLOCK(AffineTest)

//======================================================================
//
//	AffineTest, 256x256@4, 
//	+ 5 tiles (t|f|p reduced) not compressed
//	+ affine map, not compressed, 32x32 
//	Total size: 160 + 1024 = 1184
//
//	Time-stamp: 2018-04-09, 14:36:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short AffineTestTiles[80] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,
	0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xBBBB,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
};

const unsigned short AffineTestMap[512] __attribute__((aligned(4)))=
{
	0x0201,0x0203,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0302,0x0204,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0402,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,

	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
	0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,0x0202,
};

//}}BLOCK(AffineTest)
