#include <stdio.h>
#include <stdlib.h>

void printFunc(int i)
{
	printf("hello world! a+b=%d\n", i);
}

int main()
{
	int a = 1;
	int b = 2;
	
	printf("a+b=%d\n", a + b);
	
	printFunc(a+b);
	
	exit(0);
}