#include <stdio.h>                                              

struct ASJB05IB03HB00 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned char m3;
} asjb05ib03hb00 = { 1, 2 };

struct ASJB05IB03IB03 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned char m3:3;
} asjb05ib03ib03 = { 1, 2 };

struct ASJB05IB03IB05 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned char m3:5;
} asjb05ib03ib05 = { 1, 2 };

struct ASJB05IB03HH00 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned short m3;
} asjb05ib03hh00 = { 1, 2 };

struct ASJB05IB03IH03 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned short m3:3;
} asjb05ib03ih03 = { 1, 2 };

struct ASJB05IB03IH13 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned short m3:13;
} asjb05ib03ih13 = { 1, 2 };

struct ASJB05IB03HW00 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned long m3;
} asjb05ib03hw00 = { 1, 2 };

struct ASJB05IB03IW03 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned long m3:3;
} asjb05ib03iw03 = { 1, 2 };

struct ASJB05IB03IW29 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned long m3:29;
} asjb05ib03iw29 = { 1, 2 };

struct ASJB05IB03HD00 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned long long m3;
} asjb05ib03hd00 = { 1, 2 };

struct ASJB05IB03ID03 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned long long m3:3;
} asjb05ib03id03 = { 1, 2 };

struct ASJB05IB03ID61 {
	unsigned char   :5;
	unsigned char m2:3;
	unsigned long long m3:61;
} asjb05ib03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05IB03HS00 {
	unsigned char   :5;
	unsigned char m2:3;
	struct TAGHB00 m3;
} asjb05ib03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjb05ib03hb00.m2);
	printf("%u\n"  , asjb05ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03ib03.m2);
	printf("%u\n"  , asjb05ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03ib05.m2);
	printf("%u\n"  , asjb05ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03hh00.m2);
	printf("%u\n"  , asjb05ib03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03ih03.m2);
	printf("%u\n"  , asjb05ib03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03ih13.m2);
	printf("%u\n"  , asjb05ib03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03hw00.m2);
	printf("%lu\n" , asjb05ib03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03iw03.m2);
	printf("%d\n" , asjb05ib03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03iw29.m2);
	printf("%d\n" , asjb05ib03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03hd00.m2);
	printf("%llu\n", asjb05ib03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03id03.m2);
	printf("%llu\n", (unsigned long long)asjb05ib03id03.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03id61.m2);
	printf("%llu\n", (unsigned long long)asjb05ib03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05ib03hs00.m2);
	printf("%u\n"  , asjb05ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
