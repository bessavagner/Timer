#include "Timer.hpp"

using namespace std;

int frequency_of_primes (int n) {
	int freq = n - 1;
	for (unsigned int i = 2; i <= n; i += 1) {
	    for (unsigned int j = sqrt(i); j > 1; j -= 1) {
			if (i%j==0) {
				--freq;
				break;
			}	        
	    }
	}
	return freq;
}


int main(){

    std::cout << "\n\tSample program to ilustrate the usage of Timer,";
    std::cout << "\n\ta C++ class dedicated to measure computing time of ";
	std::cout << "\n\tC++ codes.";
	
	
	std::cout << "\n\n\tThis present sample program computes the ";
	std::cout << "\n\tfrequency of prime numbers between 0 and ";
	std::cout << "\n\tN, which is a input integer.";
	
	std::cout << "\n\n\tEnter any integer value: ";
	
	std::cin << N;
		
	Timer timer1, timer2;
	timer1.start_timer();
	timer2.start_timer();
	
	int f = frequency_of_primes(N);
	
	std::cout << "\n\tThe number of primes lower than " << N << " is " << f << std::endl;

	timer1.end_timer("\n\tElapsed time: ");
	
	std::cout << "\n\tor\n";
	
//	OR:
	std::cout << "\n\tElapsed time: " << timer2.end_timer() << " seconds.\n";
		
}
