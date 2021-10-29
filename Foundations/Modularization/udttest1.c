#include "banner1.h"
#include <stdio.h>

int main(void)
{
	Banner ad = {12, 5};
	float w, h;
	int n;

	printf("Banner Width and Height: ");
	scanf("%f%f", &w, &h);
	printf("Number of Copies: ");
	scanf("%d", &n);

	ad.width = w;
	ad.height = h;
	printf("Regular Banner Price: %.2lf\n", BannerPrice(ad, n));
}

