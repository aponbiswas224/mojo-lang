#include <iostream>
int main()
{
	int count = 0;
	while (count < 1000000000)
	{
		count++;
	}
	std::cout << count << std::endl;
}