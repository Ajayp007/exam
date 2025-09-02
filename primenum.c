#include<stdio.h>

void main()
{
	int i, num, prime = 1;
	
	printf("Enter The Number :- ");
	scanf("%d",&num);
	
	for(i = 2; i <= num / 2; i++)
	{
		if(num % i == 0)
		{
			prime = 0;
			break;
		}
	}
	
	if(prime)
	{
		printf("\nNumber is prime");
	}
	else
	{
		printf("\nNumber is not prime");
	}
}
