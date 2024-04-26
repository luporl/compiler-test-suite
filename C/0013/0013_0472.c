#include <stdio.h>                                              

struct ASJW03JD03HB00 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned char m3;
} asjw03jd03hb00 = { 1 };

struct ASJW03JD03IB03 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned char m3:3;
} asjw03jd03ib03 = { 1 };

struct ASJW03JD03IB05 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned char m3:5;
} asjw03jd03ib05 = { 1 };

struct ASJW03JD03HH00 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned short m3;
} asjw03jd03hh00 = { 1 };

struct ASJW03JD03IH03 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned short m3:3;
} asjw03jd03ih03 = { 1 };

struct ASJW03JD03IH13 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned short m3:13;
} asjw03jd03ih13 = { 1 };

struct ASJW03JD03HW00 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned long m3;
} asjw03jd03hw00 = { 1 };

struct ASJW03JD03IW03 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned long m3:3;
} asjw03jd03iw03 = { 1 };

struct ASJW03JD03IW29 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned long m3:29;
} asjw03jd03iw29 = { 1 };

struct ASJW03JD03HD00 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned long long m3;
} asjw03jd03hd00 = { 1 };

struct ASJW03JD03ID03 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned long long m3:3;
} asjw03jd03id03 = { 1 };

struct ASJW03JD03ID61 {
	unsigned long   :3;
	unsigned long long   :3;
	unsigned long long m3:61;
} asjw03jd03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW03JD03HS00 {
	unsigned long   :3;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asjw03jd03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjw03jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw03jd03hw00.m3);
	printf("\n");

	printf("%d\n" , asjw03jd03iw03.m3);
	printf("\n");

	printf("%d\n" , asjw03jd03iw29.m3);
	printf("\n");

	printf("%llu\n", asjw03jd03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jd03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw03jd03id61.m3);
	printf("\n");

	printf("%u\n"  , asjw03jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
