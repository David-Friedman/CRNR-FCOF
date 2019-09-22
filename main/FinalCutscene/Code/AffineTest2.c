
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

const unsigned short AffineTest2Tiles[64] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,
	0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,
	0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,
	0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,0x1A1A,
};

const unsigned short AffineTest2Map[128] __attribute__((aligned(4)))=
{
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,

	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
	0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,0x0101,
};

const unsigned short AffineTest2Pal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x03E0,0x0000,0x0004,0x0881,0x0000,0x0442,0x10AC,0x0840,
	0x0826,0x0CAC,0x109D,0x0434,0x6B5A,0x03FF,0x037B,0x0000,
	0x03E0,0x0000,0x2CA3,0x0058,0x0CD0,0x3A76,0x039E,0x65CB,
	0x7FFF,0x4D48,0x0009,0x007C,0x4F3D,0x0000,0x0000,0x0000,
	0x03E0,0x0442,0x2529,0x6EF6,0x5A73,0x739C,0x1CC7,0x458B,
	0x6318,0x3949,0x66B5,0x7BDE,0x3D6A,0x6739,0x5E94,0x49AC,

	0x0442,0x41EE,0x4A52,0x2AD5,0x1880,0x5AB3,0x0D3B,0x1D2A,
	0x2DF2,0x7314,0x31CA,0x2A0F,0x635B,0x2A35,0x18A5,0x5EF7,
	0x03E0,0x0000,0x190A,0x0867,0x256F,0x0442,0x3A33,0x318C,
	0x4ED8,0x63BF,0x109D,0x0434,0x6B5A,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(AffineTest2)