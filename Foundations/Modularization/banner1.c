#include "banner1.h"

double BannerPrice(Banner info, int copies)
{
	float rate = copies < 5 ? 0.8 : 0.75;

	return copies * rate * info.width * info.height;
}

