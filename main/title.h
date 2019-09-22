
//{{BLOCK(title)

//======================================================================
//
//	title, 256x256@4,
//	+ palette 256 entries, not compressed
//	+ 75 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32
//	Total size: 512 + 2400 + 2048 = 4960
//
//	Time-stamp: 2018-03-20, 16:20:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLE_H
#define GRIT_TITLE_H

#define titleTilesLen 2400
extern const unsigned short titleTiles[1200];

#define titleMapLen 2048
extern const unsigned short titleMap[1024];

#define titlePalLen 512
extern const unsigned short titlePal[256];

#endif // GRIT_TITLE_H

//}}BLOCK(title)


//{{BLOCK(City)

//======================================================================
//
//	City, 512x256@4,
//	+ 55 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32
//	Total size: 1760 + 4096 = 5856
//
//	Time-stamp: 2018-04-01, 16:33:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CITY_H
#define GRIT_CITY_H

#define CityTilesLen 1760
extern const unsigned short CityTiles[880];

#define CityMapLen 4096
extern const unsigned short CityMap[2048];

#endif // GRIT_CITY_H

//}}BLOCK(City)

//{{BLOCK(Street)

//======================================================================
//
//	Street, 512x256@4,
//	+ palette 256 entries, not compressed
//	+ 32 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32
//	Total size: 512 + 1024 + 4096 = 5632
//
//	Time-stamp: 2018-04-01, 16:36:19
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STREET_H
#define GRIT_STREET_H

#define StreetTilesLen 1024
extern const unsigned short StreetTiles[512];

#define StreetMapLen 4096
extern const unsigned short StreetMap[2048];

#define StreetPalLen 512
extern const unsigned short StreetPal[256];

#endif // GRIT_STREET_H

//}}BLOCK(Street)


//{{BLOCK(TitleText)

//======================================================================
//
//	TitleText, 256x256@4,
//	+ 184 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32
//	Total size: 5888 + 2048 = 7936
//
//	Time-stamp: 2018-04-01, 18:38:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLETEXT_H
#define GRIT_TITLETEXT_H

#define TitleTextTilesLen 5888
extern const unsigned short TitleTextTiles[2944];

#define TitleTextMapLen 2048
extern const unsigned short TitleTextMap[1024];

#endif // GRIT_TITLETEXT_H

//}}BLOCK(TitleText)
