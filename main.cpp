#include <iostream>
#include <math.h>
int main()
{
	int count = 0;
	float sum = 0;
	while (count < 1000000000)
	{
		sum += pow(-1, count) / (2 * count + 1);
		count++;
	}
	std::cout << sum << std::endl;
}