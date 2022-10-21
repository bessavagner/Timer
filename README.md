# Timer C++

Wanna know how long you loop will take? use Timer.

## GENERAL USAGE NOTES
 
- Timer class has only the default constructor.

- Download and dd #include "Timer.hpp" at the header of
  your source code.
- Included libraries: ctime., string, sstream, cstdio, iomanip, iostream and cmath.

## BASIC USER'S GUIED

### Compute the elapsed time between computations

~~~C++
int main(){
	etime myComputTime;

	myComputeTime.start_timer();

	DoSomeComputation();

	myComputTime.end_timer("My computation lasted: ");
}
~~~
```
My computation lasted: 01:23:03
```
For print in seconds use end_timer():
 
~~~C++
int main(){
	etime myComputTime;

	myComputeTime.start_timer();

	DoSomeComputation();

	cout << "Elapsed time: " << myComputTime.end_timer() << " seconds.\n";
}
~~~
