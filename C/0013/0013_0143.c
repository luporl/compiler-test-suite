#include <stdio.h>                                              

struct ASID03ID61HB00 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned char m3;
} asid03id61hb00 = { 1, 2, 3 };

struct ASID03ID61IB03 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned char m3:3;
} asid03id61ib03 = { 1, 2, 3 };

struct ASID03ID61IB05 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned char m3:5;
} asid03id61ib05 = { 1, 2, 3 };

struct ASID03ID61HH00 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned short m3;
} asid03id61hh00 = { 1, 2, 3 };

struct ASID03ID61IH03 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned short m3:3;
} asid03id61ih03 = { 1, 2, 3 };

struct ASID03ID61IH13 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned short m3:13;
} asid03id61ih13 = { 1, 2, 3 };

struct ASID03ID61HW00 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned long m3;
} asid03id61hw00 = { 1, 2, 3 };

struct ASID03ID61IW03 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned long m3:3;
} asid03id61iw03 = { 1, 2, 3 };

struct ASID03ID61IW29 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned long m3:29;
} asid03id61iw29 = { 1, 2, 3 };

struct ASID03ID61HD00 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned long long m3;
} asid03id61hd00 = { 1, 2, 3 };

struct ASID03ID61ID03 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned long long m3:3;
} asid03id61id03 = { 1, 2, 3 };

struct ASID03ID61ID61 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	unsigned long long m3:61;
} asid03id61id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID03ID61HS00 {
	unsigned long long m1:3;
	unsigned long long m2:61;
	struct TAGHB00 m3;
} asid03id61hs00 = { 1, 2, { 3 } };

int main() {

	printf("%llu\n", (unsigned long long)asid03id61hb00.m1);
	printf("%llu\n", (unsigned long long)asid03id61hb00.m2);
	printf("%u\n"  , asid03id61hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61ib03.m1);
	printf("%llu\n", (unsigned long long)asid03id61ib03.m2);
	printf("%u\n"  , asid03id61ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61ib05.m1);
	printf("%llu\n", (unsigned long long)asid03id61ib05.m2);
	printf("%u\n"  , asid03id61ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61hh00.m1);
	printf("%llu\n", (unsigned long long)asid03id61hh00.m2);
	printf("%u\n"  , asid03id61hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61ih03.m1);
	printf("%llu\n", (unsigned long long)asid03id61ih03.m2);
	printf("%u\n"  , asid03id61ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61ih13.m1);
	printf("%llu\n", (unsigned long long)asid03id61ih13.m2);
	printf("%u\n"  , asid03id61ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61hw00.m1);
	printf("%llu\n", (unsigned long long)asid03id61hw00.m2);
	printf("%lu\n" , asid03id61hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61iw03.m1);
	printf("%llu\n", (unsigned long long)asid03id61iw03.m2);
	printf("%d\n" , asid03id61iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61iw29.m1);
	printf("%llu\n", (unsigned long long)asid03id61iw29.m2);
	printf("%d\n" , asid03id61iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61hd00.m1);
	printf("%llu\n", (unsigned long long)asid03id61hd00.m2);
	printf("%llu\n", asid03id61hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61id03.m1);
	printf("%llu\n", (unsigned long long)asid03id61id03.m2);
	printf("%llu\n", (unsigned long long)asid03id61id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61id61.m1);
	printf("%llu\n", (unsigned long long)asid03id61id61.m2);
	printf("%llu\n", (unsigned long long)asid03id61id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid03id61hs00.m1);
	printf("%llu\n", (unsigned long long)asid03id61hs00.m2);
	printf("%u\n"  , asid03id61hs00.m3.m1);
	printf("\n");

	return 0;
}
