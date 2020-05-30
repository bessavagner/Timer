# Timer(C) C++ library (class) - Version 2.0 06/06/2019

Originally as [this repo](https://github.com/vagner-fisica/etime.git)

The source code (Timer) library, is released under
the MIT License.

First developer: Vagner H. L. Bessa (vagner.fisica@gmail.com)

## GENERAL USAGE NOTES

- The full original library can be found at:
  https://github.com/vagner-fisica/etime.git
 
- Timer class has only the default constructor.

- No need to install. Simply add #include "Timer.hpp" at the header of
  your source code. Library included at the Timer.h file: ctime., string, sstream, cstdio, iomanip, iostream and cmath.
 
- The source code for the Timer library can be found at:
	https://github.com/vagner-fisica/etime.git
  together with a main.cpp file, which contains a sample usage.


## BASIC USER'S GUIED

- The main purpose of this library is to compute the elapsed time between computations. A simple example use:

	```
	
	int main(){
		etime myComputTime;
		
		myComputeTime.start_timer();
		
		DoSomeComputation();
		
		myComputTime.end_timer("My computation lasted: ");
	}
	```
	
  The output would be seomething like:
  	My computation lasted: 01:23:03
  If you want the result simply in seconds, call the member function end_timer(). Example:
 
	...
	
	int main(){
		etime myComputTime;
		
		myComputeTime.start_timer();
		
		DoSomeComputation();
		
		cout << "Elapsed time: " << myComputTime.end_timer() << " seconds.\n";
	}  

## DEVELOPER'S INFORMATION:

- Affiliation: Instituto Federal de Ciência, Educação e Tecnologia do Ceará (IFCE) - Brazil
			   *Campus* Crateús.

- Contact:	   vagner.bessa@ifce.edu.br
               bessavagner@gmail.com
			   instagram.com/vagner.bessa
			   github: bessavagner

