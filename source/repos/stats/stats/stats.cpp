// stats.cpp : This file contains the 'main' function. Program execution begins and ends there.
// some basic statistical calculations

#include <iostream>
#include <math.h>
#include <cmath>
#include <vector>
#include <valarray>

int main()
{
	std::valarray<double> A{ 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18, 
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 , 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18,
		12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18,
	12, 32, 43, 34, 65, 56, 47, 28, 10, 12, 14, 16, 18 };

	int it, it_sum;
	std::cout << "Data set: " << std::endl;
	for (auto it = begin(A); it != end(A); ++it)
		std::cout << ' ' << *it;
	std::cout << std::endl;

	double mean = A.sum() / A.size();
	double variance = (A * A).sum() / A.size() - mean * mean;

	std::cout << "Mean = " << mean << std::endl;
	std::cout << "Variance = " << variance << std::endl;
	std::cout << "Sigma = " << sqrt(variance) << std::endl;
	double maximum = A.max();
	double minimum = A.min();

	std::cout << "Max: " << maximum << std::endl;
	std::cout << "Min: " << minimum << std::endl;
	std::cout << "Range: " << maximum - minimum << std::endl;
	std::cout << "Coeficient of Variation: " << (sqrt(variance)/mean)*100 << std::endl;

	std::cout << "size of valarray A is " << sizeof(A);

	//std::cout << "number of elements: " << std::endl;
	
	//for (auto it = begin(A); it <= end(A); ++it)
		it_sum = A.sum();
		std::cout << "sizeof A is: " << sizeof(&it_sum) << " ";
	
	

	return 0;
}


// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
