#include <iostream>
int main()
{
	int count = 0;
	while (count < 100000000)
	{
		count++;
	}
	std::cout << count << std::endl;
}