#include "banner2.h"

//a function should accept an argument of a structured data type using a pointer type parameter
//to avoid copying of data and this parameter should be declared with const qualifier to
//indicate that it will treat the addressed data as read-only
static float BannerArea(const Banner* info)
{
	switch(info->shape)
	{
	case Triangular:
		return info->width * info->height / 2;
	case Elliptical:
		return 3.14 * info->width * info->height / 4;
	default:
		return info->width * info->height;
	}

}

double BannerPrice(Banner info, int copies)
{
	float rate = copies < 5 ? 0.8 : 0.75;

	return copies * rate * BannerArea(&info);
}

