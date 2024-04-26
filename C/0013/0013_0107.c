#include <stdio.h>                                              

struct ASIB03IW29HB00 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned char m3;
} asib03iw29hb00 = { 1, 2, 3 };

struct ASIB03IW29IB03 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned char m3:3;
} asib03iw29ib03 = { 1, 2, 3 };

struct ASIB03IW29IB05 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned char m3:5;
} asib03iw29ib05 = { 1, 2, 3 };

struct ASIB03IW29HH00 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned short m3;
} asib03iw29hh00 = { 1, 2, 3 };

struct ASIB03IW29IH03 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned short m3:3;
} asib03iw29ih03 = { 1, 2, 3 };

struct ASIB03IW29IH13 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned short m3:13;
} asib03iw29ih13 = { 1, 2, 3 };

struct ASIB03IW29HW00 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned long m3;
} asib03iw29hw00 = { 1, 2, 3 };

struct ASIB03IW29IW03 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned long m3:3;
} asib03iw29iw03 = { 1, 2, 3 };

struct ASIB03IW29IW29 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned long m3:29;
} asib03iw29iw29 = { 1, 2, 3 };

struct ASIB03IW29HD00 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned long long m3;
} asib03iw29hd00 = { 1, 2, 3 };

struct ASIB03IW29ID03 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned long long m3:3;
} asib03iw29id03 = { 1, 2, 3 };

struct ASIB03IW29ID61 {
	unsigned char m1:3;
	unsigned long m2:29;
	unsigned long long m3:61;
} asib03iw29id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB03IW29HS00 {
	unsigned char m1:3;
	unsigned long m2:29;
	struct TAGHB00 m3;
} asib03iw29hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asib03iw29hb00.m1);
	printf("%d\n" , asib03iw29hb00.m2);
	printf("%u\n"  , asib03iw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29ib03.m1);
	printf("%d\n" , asib03iw29ib03.m2);
	printf("%u\n"  , asib03iw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29ib05.m1);
	printf("%d\n" , asib03iw29ib05.m2);
	printf("%u\n"  , asib03iw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29hh00.m1);
	printf("%d\n" , asib03iw29hh00.m2);
	printf("%u\n"  , asib03iw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29ih03.m1);
	printf("%d\n" , asib03iw29ih03.m2);
	printf("%u\n"  , asib03iw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29ih13.m1);
	printf("%d\n" , asib03iw29ih13.m2);
	printf("%u\n"  , asib03iw29ih13.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29hw00.m1);
	printf("%d\n" , asib03iw29hw00.m2);
	printf("%lu\n" , asib03iw29hw00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29iw03.m1);
	printf("%d\n" , asib03iw29iw03.m2);
	printf("%d\n" , asib03iw29iw03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29iw29.m1);
	printf("%d\n" , asib03iw29iw29.m2);
	printf("%d\n" , asib03iw29iw29.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29hd00.m1);
	printf("%d\n" , asib03iw29hd00.m2);
	printf("%llu\n", asib03iw29hd00.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29id03.m1);
	printf("%d\n" , asib03iw29id03.m2);
	printf("%llu\n", (unsigned long long)asib03iw29id03.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29id61.m1);
	printf("%d\n" , asib03iw29id61.m2);
	printf("%llu\n", (unsigned long long)asib03iw29id61.m3);
	printf("\n");

	printf("%u\n"  , asib03iw29hs00.m1);
	printf("%d\n" , asib03iw29hs00.m2);
	printf("%u\n"  , asib03iw29hs00.m3.m1);
	printf("\n");

	return 0;
}
