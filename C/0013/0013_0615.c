                                                             
#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSHS00IW03HW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3;
};

struct GSHS00IW03HW00 gshs00iw03hw00_0[2] = {{ { 1, 2 }, 3, 4 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03HW00 gshs00iw03hw00_1[2] = {{ { 1, 2 }, 3, 4 }};
struct GSHS00IW03HW00 gshs00iw03hw00_2[2] = {{ { 1 }, 3, 4 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03HW00 gshs00iw03hw00_3[2] = {{ { 1 }, 3, 4 }};
struct GSHS00IW03HW00 gshs00iw03hw00_4[2] = {{ { 1, 2 }, 3 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03HW00 gshs00iw03hw00_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03HW00 gshs00iw03hw00_6[2] = {{ { 1 }, 3 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03HW00 gshs00iw03hw00_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03HW00 gshs00iw03hw00_8[2] = {{ { 1, 2 }, 3, 4 },{ { 5 }, 7, 8 }};
struct GSHS00IW03HW00 gshs00iw03hw00_16[2] = {{ { 1, 2 }, 3, 4 },{ { 5, 6 }, 7 }};
struct GSHS00IW03HW00 gshs00iw03hw00_24[2] = {{ { 1, 2 }, 3, 4 },{ { 5 }, 7 }};

struct GSHS00IW03IW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3:3;
};

struct GSHS00IW03IW03 gshs00iw03iw03_0[2] = {{ { 1, 2 }, 3, 4 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW03 gshs00iw03iw03_1[2] = {{ { 1, 2 }, 3, 4 }};
struct GSHS00IW03IW03 gshs00iw03iw03_2[2] = {{ { 1 }, 3, 4 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW03 gshs00iw03iw03_3[2] = {{ { 1 }, 3, 4 }};
struct GSHS00IW03IW03 gshs00iw03iw03_4[2] = {{ { 1, 2 }, 3 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW03 gshs00iw03iw03_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03IW03 gshs00iw03iw03_6[2] = {{ { 1 }, 3 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW03 gshs00iw03iw03_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03IW03 gshs00iw03iw03_8[2] = {{ { 1, 2 }, 3, 4 },{ { 5 }, 7, 8 }};
struct GSHS00IW03IW03 gshs00iw03iw03_16[2] = {{ { 1, 2 }, 3, 4 },{ { 5, 6 }, 7 }};
struct GSHS00IW03IW03 gshs00iw03iw03_24[2] = {{ { 1, 2 }, 3, 4 },{ { 5 }, 7 }};

struct GSHS00IW03IW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3:29;
};

struct GSHS00IW03IW29 gshs00iw03iw29_0[2] = {{ { 1, 2 }, 3, 4 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW29 gshs00iw03iw29_1[2] = {{ { 1, 2 }, 3, 4 }};
struct GSHS00IW03IW29 gshs00iw03iw29_2[2] = {{ { 1 }, 3, 4 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW29 gshs00iw03iw29_3[2] = {{ { 1 }, 3, 4 }};
struct GSHS00IW03IW29 gshs00iw03iw29_4[2] = {{ { 1, 2 }, 3 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW29 gshs00iw03iw29_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03IW29 gshs00iw03iw29_6[2] = {{ { 1 }, 3 },{ { 5, 6 }, 7, 8 }};
struct GSHS00IW03IW29 gshs00iw03iw29_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03IW29 gshs00iw03iw29_8[2] = {{ { 1, 2 }, 3, 4 },{ { 5 }, 7, 8 }};
struct GSHS00IW03IW29 gshs00iw03iw29_16[2] = {{ { 1, 2 }, 3, 4 },{ { 5, 6 }, 7 }};
struct GSHS00IW03IW29 gshs00iw03iw29_24[2] = {{ { 1, 2 }, 3, 4 },{ { 5 }, 7 }};

struct GSHS00IW03HS00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	struct SUB_SHB00HW00 m3;
};

struct GSHS00IW03HS00 gshs00iw03hs00_0[2] = {{ { 1, 2 }, 3, { 4, 5 } },{ { 6, 7 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_1[2] = {{ { 1, 2 }, 3, { 4, 5 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_2[2] = {{ { 1 }, 3, { 4, 5 } },{ { 6, 7 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_3[2] = {{ { 1 }, 3, { 4, 5 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_4[2] = {{ { 1, 2 }, 3 },{ { 6, 7 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03HS00 gshs00iw03hs00_6[2] = {{ { 1 }, 3 },{ { 6, 7 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03HS00 gshs00iw03hs00_8[2] = {{ { 1, 2 }, 3, { 4 } },{ { 6, 7 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_9[2] = {{ { 1, 2 }, 3, { 4 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_10[2] = {{ { 1 }, 3, { 4 } },{ { 6, 7 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_11[2] = {{ { 1 }, 3, { 4 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_16[2] = {{ { 1, 2 }, 3, { 4, 5 } },{ { 6 }, 8, { 9, 10 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_32[2] = {{ { 1, 2 }, 3, { 4, 5 } },{ { 6, 7 }, 8 }};
struct GSHS00IW03HS00 gshs00iw03hs00_48[2] = {{ { 1, 2 }, 3, { 4, 5 } },{ { 6 }, 8 }};
struct GSHS00IW03HS00 gshs00iw03hs00_64[2] = {{ { 1, 2 }, 3, { 4, 5 } },{ { 6, 7 }, 8, { 9 } }};
struct GSHS00IW03HS00 gshs00iw03hs00_80[2] = {{ { 1, 2 }, 3, { 4, 5 } },{ { 6 }, 8, { 9 } }};

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct GSHS00IW03HU00 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	union SUB_UHB00HW00 m3;
};

struct GSHS00IW03HU00 gshs00iw03hu00_0[2] = {{ { 1, 2 }, 3, { 4 } },{ { 5, 6 }, 7, { 8 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_1[2] = {{ { 1, 2 }, 3, { 4 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_2[2] = {{ { 1 }, 3, { 4 } },{ { 5, 6 }, 7, { 8 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_3[2] = {{ { 1 }, 3, { 4 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_4[2] = {{ { 1, 2 }, 3 },{ { 5, 6 }, 7, { 8 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03HU00 gshs00iw03hu00_6[2] = {{ { 1 }, 3 },{ { 5, 6 }, 7, { 8 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03HU00 gshs00iw03hu00_8[2] = {{ { 1, 2 }, 3 },{ { 5 }, 7, { 8 } }};
struct GSHS00IW03HU00 gshs00iw03hu00_16[2] = {{ { 1, 2 }, 3 },{ { 5, 6 }, 7 }};
struct GSHS00IW03HU00 gshs00iw03hu00_24[2] = {{ { 1, 2 }, 3 },{ { 5 }, 7 }};

struct GSHS00IW03HA01 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned char m3[3];
};

struct GSHS00IW03HA01 gshs00iw03ha01_0[2] = {{ { 1, 2 }, 3, "45" },{ { 6, 7 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_1[2] = {{ { 1, 2 }, 3, "45" }};
struct GSHS00IW03HA01 gshs00iw03ha01_2[2] = {{ { 1 }, 3, "45" },{ { 6, 7 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_3[2] = {{ { 1 }, 3, "45" }};
struct GSHS00IW03HA01 gshs00iw03ha01_4[2] = {{ { 1, 2 }, 3 },{ { 6, 7 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03HA01 gshs00iw03ha01_6[2] = {{ { 1 }, 3 },{ { 6, 7 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03HA01 gshs00iw03ha01_8[2] = {{ { 1, 2 }, 3, "4" },{ { 6, 7 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_9[2] = {{ { 1, 2 }, 3, "4" }};
struct GSHS00IW03HA01 gshs00iw03ha01_10[2] = {{ { 1 }, 3, "4" },{ { 6, 7 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_11[2] = {{ { 1 }, 3, "4" }};
struct GSHS00IW03HA01 gshs00iw03ha01_16[2] = {{ { 1, 2 }, 3, "45" },{ { 6 }, 8, "90" }};
struct GSHS00IW03HA01 gshs00iw03ha01_32[2] = {{ { 1, 2 }, 3, "45" },{ { 6, 7 }, 8 }};
struct GSHS00IW03HA01 gshs00iw03ha01_48[2] = {{ { 1, 2 }, 3, "45" },{ { 6 }, 8 }};
struct GSHS00IW03HA01 gshs00iw03ha01_64[2] = {{ { 1, 2 }, 3, "45" },{ { 6, 7 }, 8, "9" }};
struct GSHS00IW03HA01 gshs00iw03ha01_80[2] = {{ { 1, 2 }, 3, "45" },{ { 6 }, 8, "9" }};

struct GSHS00IW03HA04 {
	struct SUB_SHB00HW00 m1;
	unsigned long m2:3;
	unsigned long m3[2];
};

struct GSHS00IW03HA04 gshs00iw03ha04_0[2] = {{ { 1, 2 }, 3, {4,5} },{ { 6, 7 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_1[2] = {{ { 1, 2 }, 3, {4,5} }};
struct GSHS00IW03HA04 gshs00iw03ha04_2[2] = {{ { 1 }, 3, {4,5} },{ { 6, 7 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_3[2] = {{ { 1 }, 3, {4,5} }};
struct GSHS00IW03HA04 gshs00iw03ha04_4[2] = {{ { 1, 2 }, 3 },{ { 6, 7 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_5[2] = {{ { 1, 2 }, 3 }};
struct GSHS00IW03HA04 gshs00iw03ha04_6[2] = {{ { 1 }, 3 },{ { 6, 7 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_7[2] = {{ { 1 }, 3 }};
struct GSHS00IW03HA04 gshs00iw03ha04_8[2] = {{ { 1, 2 }, 3, {4} },{ { 6, 7 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_9[2] = {{ { 1, 2 }, 3, {4} }};
struct GSHS00IW03HA04 gshs00iw03ha04_10[2] = {{ { 1 }, 3, {4} },{ { 6, 7 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_11[2] = {{ { 1 }, 3, {4} }};
struct GSHS00IW03HA04 gshs00iw03ha04_16[2] = {{ { 1, 2 }, 3, {4,5} },{ { 6 }, 8, {9,10} }};
struct GSHS00IW03HA04 gshs00iw03ha04_32[2] = {{ { 1, 2 }, 3, {4,5} },{ { 6, 7 }, 8 }};
struct GSHS00IW03HA04 gshs00iw03ha04_48[2] = {{ { 1, 2 }, 3, {4,5} },{ { 6 }, 8 }};
struct GSHS00IW03HA04 gshs00iw03ha04_64[2] = {{ { 1, 2 }, 3, {4,5} },{ { 6, 7 }, 8, {9} }};
struct GSHS00IW03HA04 gshs00iw03ha04_80[2] = {{ { 1, 2 }, 3, {4,5} },{ { 6 }, 8, {9} }};

int main() {

	printf("%u\n"  , gshs00iw03hw00_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_0[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_0[0].m2);
	printf("%lu\n" , gshs00iw03hw00_0[0].m3);
	printf("%u\n"  , gshs00iw03hw00_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_0[1].m1.m2);
	printf("%d\n" , gshs00iw03hw00_0[1].m2);
	printf("%lu\n" , gshs00iw03hw00_0[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_1[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_1[0].m2);
	printf("%lu\n" , gshs00iw03hw00_1[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_2[0].m1.m1);
	printf("%d\n" , gshs00iw03hw00_2[0].m2);
	printf("%lu\n" , gshs00iw03hw00_2[0].m3);
	printf("%u\n"  , gshs00iw03hw00_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_2[1].m1.m2);
	printf("%d\n" , gshs00iw03hw00_2[1].m2);
	printf("%lu\n" , gshs00iw03hw00_2[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_3[0].m1.m1);
	printf("%d\n" , gshs00iw03hw00_3[0].m2);
	printf("%lu\n" , gshs00iw03hw00_3[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_4[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_4[0].m2);
	printf("%u\n"  , gshs00iw03hw00_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_4[1].m1.m2);
	printf("%d\n" , gshs00iw03hw00_4[1].m2);
	printf("%lu\n" , gshs00iw03hw00_4[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_5[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_6[0].m1.m1);
	printf("%d\n" , gshs00iw03hw00_6[0].m2);
	printf("%u\n"  , gshs00iw03hw00_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_6[1].m1.m2);
	printf("%d\n" , gshs00iw03hw00_6[1].m2);
	printf("%lu\n" , gshs00iw03hw00_6[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_7[0].m1.m1);
	printf("%d\n" , gshs00iw03hw00_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_8[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_8[0].m2);
	printf("%lu\n" , gshs00iw03hw00_8[0].m3);
	printf("%u\n"  , gshs00iw03hw00_8[1].m1.m1);
	printf("%d\n" , gshs00iw03hw00_8[1].m2);
	printf("%lu\n" , gshs00iw03hw00_8[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_16[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_16[0].m2);
	printf("%lu\n" , gshs00iw03hw00_16[0].m3);
	printf("%u\n"  , gshs00iw03hw00_16[1].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_16[1].m1.m2);
	printf("%d\n" , gshs00iw03hw00_16[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hw00_24[0].m1.m1);
	printf("%lu\n" , gshs00iw03hw00_24[0].m1.m2);
	printf("%d\n" , gshs00iw03hw00_24[0].m2);
	printf("%lu\n" , gshs00iw03hw00_24[0].m3);
	printf("%u\n"  , gshs00iw03hw00_24[1].m1.m1);
	printf("%d\n" , gshs00iw03hw00_24[1].m2);
	printf("\n");

	printf("%u\n"  , gshs00iw03iw03_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_0[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_0[0].m2);
	printf("%d\n" , gshs00iw03iw03_0[0].m3);
	printf("%u\n"  , gshs00iw03iw03_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_0[1].m1.m2);
	printf("%d\n" , gshs00iw03iw03_0[1].m2);
	printf("%d\n" , gshs00iw03iw03_0[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_1[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_1[0].m2);
	printf("%d\n" , gshs00iw03iw03_1[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_2[0].m1.m1);
	printf("%d\n" , gshs00iw03iw03_2[0].m2);
	printf("%d\n" , gshs00iw03iw03_2[0].m3);
	printf("%u\n"  , gshs00iw03iw03_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_2[1].m1.m2);
	printf("%d\n" , gshs00iw03iw03_2[1].m2);
	printf("%d\n" , gshs00iw03iw03_2[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_3[0].m1.m1);
	printf("%d\n" , gshs00iw03iw03_3[0].m2);
	printf("%d\n" , gshs00iw03iw03_3[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_4[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_4[0].m2);
	printf("%u\n"  , gshs00iw03iw03_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_4[1].m1.m2);
	printf("%d\n" , gshs00iw03iw03_4[1].m2);
	printf("%d\n" , gshs00iw03iw03_4[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_5[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_6[0].m1.m1);
	printf("%d\n" , gshs00iw03iw03_6[0].m2);
	printf("%u\n"  , gshs00iw03iw03_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_6[1].m1.m2);
	printf("%d\n" , gshs00iw03iw03_6[1].m2);
	printf("%d\n" , gshs00iw03iw03_6[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_7[0].m1.m1);
	printf("%d\n" , gshs00iw03iw03_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_8[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_8[0].m2);
	printf("%d\n" , gshs00iw03iw03_8[0].m3);
	printf("%u\n"  , gshs00iw03iw03_8[1].m1.m1);
	printf("%d\n" , gshs00iw03iw03_8[1].m2);
	printf("%d\n" , gshs00iw03iw03_8[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_16[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_16[0].m2);
	printf("%d\n" , gshs00iw03iw03_16[0].m3);
	printf("%u\n"  , gshs00iw03iw03_16[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_16[1].m1.m2);
	printf("%d\n" , gshs00iw03iw03_16[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw03_24[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw03_24[0].m1.m2);
	printf("%d\n" , gshs00iw03iw03_24[0].m2);
	printf("%d\n" , gshs00iw03iw03_24[0].m3);
	printf("%u\n"  , gshs00iw03iw03_24[1].m1.m1);
	printf("%d\n" , gshs00iw03iw03_24[1].m2);
	printf("\n");

	printf("%u\n"  , gshs00iw03iw29_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_0[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_0[0].m2);
	printf("%d\n" , gshs00iw03iw29_0[0].m3);
	printf("%u\n"  , gshs00iw03iw29_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_0[1].m1.m2);
	printf("%d\n" , gshs00iw03iw29_0[1].m2);
	printf("%d\n" , gshs00iw03iw29_0[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_1[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_1[0].m2);
	printf("%d\n" , gshs00iw03iw29_1[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_2[0].m1.m1);
	printf("%d\n" , gshs00iw03iw29_2[0].m2);
	printf("%d\n" , gshs00iw03iw29_2[0].m3);
	printf("%u\n"  , gshs00iw03iw29_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_2[1].m1.m2);
	printf("%d\n" , gshs00iw03iw29_2[1].m2);
	printf("%d\n" , gshs00iw03iw29_2[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_3[0].m1.m1);
	printf("%d\n" , gshs00iw03iw29_3[0].m2);
	printf("%d\n" , gshs00iw03iw29_3[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_4[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_4[0].m2);
	printf("%u\n"  , gshs00iw03iw29_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_4[1].m1.m2);
	printf("%d\n" , gshs00iw03iw29_4[1].m2);
	printf("%d\n" , gshs00iw03iw29_4[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_5[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_6[0].m1.m1);
	printf("%d\n" , gshs00iw03iw29_6[0].m2);
	printf("%u\n"  , gshs00iw03iw29_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_6[1].m1.m2);
	printf("%d\n" , gshs00iw03iw29_6[1].m2);
	printf("%d\n" , gshs00iw03iw29_6[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_7[0].m1.m1);
	printf("%d\n" , gshs00iw03iw29_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_8[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_8[0].m2);
	printf("%d\n" , gshs00iw03iw29_8[0].m3);
	printf("%u\n"  , gshs00iw03iw29_8[1].m1.m1);
	printf("%d\n" , gshs00iw03iw29_8[1].m2);
	printf("%d\n" , gshs00iw03iw29_8[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_16[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_16[0].m2);
	printf("%d\n" , gshs00iw03iw29_16[0].m3);
	printf("%u\n"  , gshs00iw03iw29_16[1].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_16[1].m1.m2);
	printf("%d\n" , gshs00iw03iw29_16[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03iw29_24[0].m1.m1);
	printf("%lu\n" , gshs00iw03iw29_24[0].m1.m2);
	printf("%d\n" , gshs00iw03iw29_24[0].m2);
	printf("%d\n" , gshs00iw03iw29_24[0].m3);
	printf("%u\n"  , gshs00iw03iw29_24[1].m1.m1);
	printf("%d\n" , gshs00iw03iw29_24[1].m2);
	printf("\n");

	printf("%u\n"  , gshs00iw03hs00_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_0[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_0[0].m2);
	printf("%u\n"  , gshs00iw03hs00_0[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_0[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_0[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_0[1].m2);
	printf("%u\n"  , gshs00iw03hs00_0[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_0[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_1[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_1[0].m2);
	printf("%u\n"  , gshs00iw03hs00_1[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_1[0].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_2[0].m1.m1);
	printf("%d\n" , gshs00iw03hs00_2[0].m2);
	printf("%u\n"  , gshs00iw03hs00_2[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_2[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_2[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_2[1].m2);
	printf("%u\n"  , gshs00iw03hs00_2[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_2[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_3[0].m1.m1);
	printf("%d\n" , gshs00iw03hs00_3[0].m2);
	printf("%u\n"  , gshs00iw03hs00_3[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_3[0].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_4[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_4[0].m2);
	printf("%u\n"  , gshs00iw03hs00_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_4[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_4[1].m2);
	printf("%u\n"  , gshs00iw03hs00_4[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_4[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_5[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_6[0].m1.m1);
	printf("%d\n" , gshs00iw03hs00_6[0].m2);
	printf("%u\n"  , gshs00iw03hs00_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_6[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_6[1].m2);
	printf("%u\n"  , gshs00iw03hs00_6[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_6[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_7[0].m1.m1);
	printf("%d\n" , gshs00iw03hs00_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_8[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_8[0].m2);
	printf("%u\n"  , gshs00iw03hs00_8[0].m3.m1);
	printf("%u\n"  , gshs00iw03hs00_8[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_8[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_8[1].m2);
	printf("%u\n"  , gshs00iw03hs00_8[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_8[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_9[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_9[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_9[0].m2);
	printf("%u\n"  , gshs00iw03hs00_9[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_10[0].m1.m1);
	printf("%d\n" , gshs00iw03hs00_10[0].m2);
	printf("%u\n"  , gshs00iw03hs00_10[0].m3.m1);
	printf("%u\n"  , gshs00iw03hs00_10[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_10[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_10[1].m2);
	printf("%u\n"  , gshs00iw03hs00_10[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_10[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_11[0].m1.m1);
	printf("%d\n" , gshs00iw03hs00_11[0].m2);
	printf("%u\n"  , gshs00iw03hs00_11[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_16[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_16[0].m2);
	printf("%u\n"  , gshs00iw03hs00_16[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_16[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_16[1].m1.m1);
	printf("%d\n" , gshs00iw03hs00_16[1].m2);
	printf("%u\n"  , gshs00iw03hs00_16[1].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_16[1].m3.m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_32[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_32[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_32[0].m2);
	printf("%u\n"  , gshs00iw03hs00_32[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_32[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_32[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_32[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_32[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_48[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_48[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_48[0].m2);
	printf("%u\n"  , gshs00iw03hs00_48[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_48[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_48[1].m1.m1);
	printf("%d\n" , gshs00iw03hs00_48[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_64[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_64[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_64[0].m2);
	printf("%u\n"  , gshs00iw03hs00_64[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_64[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_64[1].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_64[1].m1.m2);
	printf("%d\n" , gshs00iw03hs00_64[1].m2);
	printf("%u\n"  , gshs00iw03hs00_64[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hs00_80[0].m1.m1);
	printf("%lu\n" , gshs00iw03hs00_80[0].m1.m2);
	printf("%d\n" , gshs00iw03hs00_80[0].m2);
	printf("%u\n"  , gshs00iw03hs00_80[0].m3.m1);
	printf("%lu\n" , gshs00iw03hs00_80[0].m3.m2);
	printf("%u\n"  , gshs00iw03hs00_80[1].m1.m1);
	printf("%d\n" , gshs00iw03hs00_80[1].m2);
	printf("%u\n"  , gshs00iw03hs00_80[1].m3.m1);
	printf("\n");

	printf("%u\n"  , gshs00iw03hu00_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_0[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_0[0].m2);
	printf("%u\n"  , gshs00iw03hu00_0[0].m3.m1);
	printf("%u\n"  , gshs00iw03hu00_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_0[1].m1.m2);
	printf("%d\n" , gshs00iw03hu00_0[1].m2);
	printf("%u\n"  , gshs00iw03hu00_0[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_1[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_1[0].m2);
	printf("%u\n"  , gshs00iw03hu00_1[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_2[0].m1.m1);
	printf("%d\n" , gshs00iw03hu00_2[0].m2);
	printf("%u\n"  , gshs00iw03hu00_2[0].m3.m1);
	printf("%u\n"  , gshs00iw03hu00_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_2[1].m1.m2);
	printf("%d\n" , gshs00iw03hu00_2[1].m2);
	printf("%u\n"  , gshs00iw03hu00_2[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_3[0].m1.m1);
	printf("%d\n" , gshs00iw03hu00_3[0].m2);
	printf("%u\n"  , gshs00iw03hu00_3[0].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_4[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_4[0].m2);
	printf("%u\n"  , gshs00iw03hu00_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_4[1].m1.m2);
	printf("%d\n" , gshs00iw03hu00_4[1].m2);
	printf("%u\n"  , gshs00iw03hu00_4[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_5[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_6[0].m1.m1);
	printf("%d\n" , gshs00iw03hu00_6[0].m2);
	printf("%u\n"  , gshs00iw03hu00_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_6[1].m1.m2);
	printf("%d\n" , gshs00iw03hu00_6[1].m2);
	printf("%u\n"  , gshs00iw03hu00_6[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_7[0].m1.m1);
	printf("%d\n" , gshs00iw03hu00_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_8[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_8[0].m2);
	printf("%u\n"  , gshs00iw03hu00_8[1].m1.m1);
	printf("%d\n" , gshs00iw03hu00_8[1].m2);
	printf("%u\n"  , gshs00iw03hu00_8[1].m3.m1);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_16[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_16[0].m2);
	printf("%u\n"  , gshs00iw03hu00_16[1].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_16[1].m1.m2);
	printf("%d\n" , gshs00iw03hu00_16[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03hu00_24[0].m1.m1);
	printf("%lu\n" , gshs00iw03hu00_24[0].m1.m2);
	printf("%d\n" , gshs00iw03hu00_24[0].m2);
	printf("%u\n"  , gshs00iw03hu00_24[1].m1.m1);
	printf("%d\n" , gshs00iw03hu00_24[1].m2);
	printf("\n");

	printf("%u\n"  , gshs00iw03ha01_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_0[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_0[0].m2);
	printf("%s\n"  , gshs00iw03ha01_0[0].m3);
	printf("%u\n"  , gshs00iw03ha01_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_0[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_0[1].m2);
	printf("%s\n"  , gshs00iw03ha01_0[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_1[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_1[0].m2);
	printf("%s\n"  , gshs00iw03ha01_1[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_2[0].m1.m1);
	printf("%d\n" , gshs00iw03ha01_2[0].m2);
	printf("%s\n"  , gshs00iw03ha01_2[0].m3);
	printf("%u\n"  , gshs00iw03ha01_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_2[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_2[1].m2);
	printf("%s\n"  , gshs00iw03ha01_2[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_3[0].m1.m1);
	printf("%d\n" , gshs00iw03ha01_3[0].m2);
	printf("%s\n"  , gshs00iw03ha01_3[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_4[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_4[0].m2);
	printf("%u\n"  , gshs00iw03ha01_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_4[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_4[1].m2);
	printf("%s\n"  , gshs00iw03ha01_4[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_5[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_6[0].m1.m1);
	printf("%d\n" , gshs00iw03ha01_6[0].m2);
	printf("%u\n"  , gshs00iw03ha01_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_6[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_6[1].m2);
	printf("%s\n"  , gshs00iw03ha01_6[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_7[0].m1.m1);
	printf("%d\n" , gshs00iw03ha01_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_8[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_8[0].m2);
	printf("%s\n"  , gshs00iw03ha01_8[0].m3);
	printf("%u\n"  , gshs00iw03ha01_8[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_8[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_8[1].m2);
	printf("%s\n"  , gshs00iw03ha01_8[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_9[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_9[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_9[0].m2);
	printf("%s\n"  , gshs00iw03ha01_9[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_10[0].m1.m1);
	printf("%d\n" , gshs00iw03ha01_10[0].m2);
	printf("%s\n"  , gshs00iw03ha01_10[0].m3);
	printf("%u\n"  , gshs00iw03ha01_10[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_10[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_10[1].m2);
	printf("%s\n"  , gshs00iw03ha01_10[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_11[0].m1.m1);
	printf("%d\n" , gshs00iw03ha01_11[0].m2);
	printf("%s\n"  , gshs00iw03ha01_11[0].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_16[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_16[0].m2);
	printf("%s\n"  , gshs00iw03ha01_16[0].m3);
	printf("%u\n"  , gshs00iw03ha01_16[1].m1.m1);
	printf("%d\n" , gshs00iw03ha01_16[1].m2);
	printf("%s\n"  , gshs00iw03ha01_16[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_32[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_32[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_32[0].m2);
	printf("%s\n"  , gshs00iw03ha01_32[0].m3);
	printf("%u\n"  , gshs00iw03ha01_32[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_32[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_32[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_48[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_48[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_48[0].m2);
	printf("%s\n"  , gshs00iw03ha01_48[0].m3);
	printf("%u\n"  , gshs00iw03ha01_48[1].m1.m1);
	printf("%d\n" , gshs00iw03ha01_48[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_64[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_64[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_64[0].m2);
	printf("%s\n"  , gshs00iw03ha01_64[0].m3);
	printf("%u\n"  , gshs00iw03ha01_64[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_64[1].m1.m2);
	printf("%d\n" , gshs00iw03ha01_64[1].m2);
	printf("%s\n"  , gshs00iw03ha01_64[1].m3);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha01_80[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha01_80[0].m1.m2);
	printf("%d\n" , gshs00iw03ha01_80[0].m2);
	printf("%s\n"  , gshs00iw03ha01_80[0].m3);
	printf("%d\n"  , gshs00iw03ha01_80[1].m1.m1);
	printf("%d\n" , gshs00iw03ha01_80[1].m2);
	printf("%s\n"  , gshs00iw03ha01_80[1].m3);
	printf("\n");

	printf("%u\n"  , gshs00iw03ha04_0[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_0[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_0[0].m2);
	printf("%lu\n" , gshs00iw03ha04_0[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_0[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_0[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_0[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_0[1].m2);
	printf("%lu\n" , gshs00iw03ha04_0[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_0[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_1[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_1[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_1[0].m2);
	printf("%lu\n" , gshs00iw03ha04_1[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_1[0].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_2[0].m1.m1);
	printf("%d\n" , gshs00iw03ha04_2[0].m2);
	printf("%lu\n" , gshs00iw03ha04_2[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_2[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_2[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_2[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_2[1].m2);
	printf("%lu\n" , gshs00iw03ha04_2[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_2[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_3[0].m1.m1);
	printf("%d\n" , gshs00iw03ha04_3[0].m2);
	printf("%lu\n" , gshs00iw03ha04_3[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_3[0].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_4[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_4[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_4[0].m2);
	printf("%u\n"  , gshs00iw03ha04_4[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_4[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_4[1].m2);
	printf("%lu\n" , gshs00iw03ha04_4[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_4[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_5[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_5[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_5[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_6[0].m1.m1);
	printf("%d\n" , gshs00iw03ha04_6[0].m2);
	printf("%u\n"  , gshs00iw03ha04_6[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_6[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_6[1].m2);
	printf("%lu\n" , gshs00iw03ha04_6[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_6[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_7[0].m1.m1);
	printf("%d\n" , gshs00iw03ha04_7[0].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_8[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_8[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_8[0].m2);
	printf("%lu\n" , gshs00iw03ha04_8[0].m3[0]);
	printf("%u\n"  , gshs00iw03ha04_8[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_8[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_8[1].m2);
	printf("%lu\n" , gshs00iw03ha04_8[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_8[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_9[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_9[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_9[0].m2);
	printf("%lu\n" , gshs00iw03ha04_9[0].m3[0]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_10[0].m1.m1);
	printf("%d\n" , gshs00iw03ha04_10[0].m2);
	printf("%lu\n" , gshs00iw03ha04_10[0].m3[0]);
	printf("%u\n"  , gshs00iw03ha04_10[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_10[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_10[1].m2);
	printf("%lu\n" , gshs00iw03ha04_10[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_10[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_11[0].m1.m1);
	printf("%d\n" , gshs00iw03ha04_11[0].m2);
	printf("%lu\n" , gshs00iw03ha04_11[0].m3[0]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_16[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_16[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_16[0].m2);
	printf("%lu\n" , gshs00iw03ha04_16[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_16[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_16[1].m1.m1);
	printf("%d\n" , gshs00iw03ha04_16[1].m2);
	printf("%lu\n" , gshs00iw03ha04_16[1].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_16[1].m3[1]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_32[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_32[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_32[0].m2);
	printf("%lu\n" , gshs00iw03ha04_32[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_32[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_32[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_32[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_32[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_48[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_48[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_48[0].m2);
	printf("%lu\n" , gshs00iw03ha04_48[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_48[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_48[1].m1.m1);
	printf("%d\n" , gshs00iw03ha04_48[1].m2);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_64[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_64[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_64[0].m2);
	printf("%lu\n" , gshs00iw03ha04_64[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_64[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_64[1].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_64[1].m1.m2);
	printf("%d\n" , gshs00iw03ha04_64[1].m2);
	printf("%lu\n" , gshs00iw03ha04_64[1].m3[0]);
	printf("\n");
	printf("%u\n"  , gshs00iw03ha04_80[0].m1.m1);
	printf("%lu\n" , gshs00iw03ha04_80[0].m1.m2);
	printf("%d\n" , gshs00iw03ha04_80[0].m2);
	printf("%lu\n" , gshs00iw03ha04_80[0].m3[0]);
	printf("%lu\n" , gshs00iw03ha04_80[0].m3[1]);
	printf("%u\n"  , gshs00iw03ha04_80[1].m1.m1);
	printf("%d\n" , gshs00iw03ha04_80[1].m2);
	printf("%lu\n" , gshs00iw03ha04_80[1].m3[0]);
	printf("\n");

	return 0;
}
