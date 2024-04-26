#include <stdio.h>                                              

struct ASIH13ID03HB00 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned char m3;
} asih13id03hb00 = { 1, 2, 3 };

struct ASIH13ID03IB03 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned char m3:3;
} asih13id03ib03 = { 1, 2, 3 };

struct ASIH13ID03IB05 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned char m3:5;
} asih13id03ib05 = { 1, 2, 3 };

struct ASIH13ID03HH00 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned short m3;
} asih13id03hh00 = { 1, 2, 3 };

struct ASIH13ID03IH03 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned short m3:3;
} asih13id03ih03 = { 1, 2, 3 };

struct ASIH13ID03IH13 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned short m3:13;
} asih13id03ih13 = { 1, 2, 3 };

struct ASIH13ID03HW00 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned long m3;
} asih13id03hw00 = { 1, 2, 3 };

struct ASIH13ID03IW03 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned long m3:3;
} asih13id03iw03 = { 1, 2, 3 };

struct ASIH13ID03IW29 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned long m3:29;
} asih13id03iw29 = { 1, 2, 3 };

struct ASIH13ID03HD00 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned long long m3;
} asih13id03hd00 = { 1, 2, 3 };

struct ASIH13ID03ID03 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned long long m3:3;
} asih13id03id03 = { 1, 2, 3 };

struct ASIH13ID03ID61 {
	unsigned short m1:13;
	unsigned long long m2:3;
	unsigned long long m3:61;
} asih13id03id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13ID03HS00 {
	unsigned short m1:13;
	unsigned long long m2:3;
	struct TAGHB00 m3;
} asih13id03hs00 = { 1, 2, { 3 } };

int main() {

	printf("%u\n"  , asih13id03hb00.m1);
	printf("%llu\n", (unsigned long long)asih13id03hb00.m2);
	printf("%u\n"  , asih13id03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13id03ib03.m1);
	printf("%llu\n", (unsigned long long)asih13id03ib03.m2);
	printf("%u\n"  , asih13id03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13id03ib05.m1);
	printf("%llu\n", (unsigned long long)asih13id03ib05.m2);
	printf("%u\n"  , asih13id03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13id03hh00.m1);
	printf("%llu\n", (unsigned long long)asih13id03hh00.m2);
	printf("%u\n"  , asih13id03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13id03ih03.m1);
	printf("%llu\n", (unsigned long long)asih13id03ih03.m2);
	printf("%u\n"  , asih13id03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13id03ih13.m1);
	printf("%llu\n", (unsigned long long)asih13id03ih13.m2);
	printf("%u\n"  , asih13id03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13id03hw00.m1);
	printf("%llu\n", (unsigned long long)asih13id03hw00.m2);
	printf("%lu\n" , asih13id03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13id03iw03.m1);
	printf("%llu\n", (unsigned long long)asih13id03iw03.m2);
	printf("%d\n" , asih13id03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13id03iw29.m1);
	printf("%llu\n", (unsigned long long)asih13id03iw29.m2);
	printf("%d\n" , asih13id03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13id03hd00.m1);
	printf("%llu\n", (unsigned long long)asih13id03hd00.m2);
	printf("%llu\n", asih13id03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13id03id03.m1);
	printf("%llu\n", (unsigned long long)asih13id03id03.m2);
	printf("%llu\n", (unsigned long long)asih13id03id03.m3);
	printf("\n");

	printf("%u\n"  , asih13id03id61.m1);
	printf("%llu\n", (unsigned long long)asih13id03id61.m2);
	printf("%llu\n", (unsigned long long)asih13id03id61.m3);
	printf("\n");

	printf("%u\n"  , asih13id03hs00.m1);
	printf("%llu\n", (unsigned long long)asih13id03hs00.m2);
	printf("%u\n"  , asih13id03hs00.m3.m1);
	printf("\n");

	return 0;
}
