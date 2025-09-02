#include<stdio.h>

void main()
{
	
	int num,rev=0,temp;
	
	printf("Enter The Number :- ");
	scanf("%d",&num);
	
	temp = num;
	
	while(num > 0)
	{
		int lst = num % 10;
		rev = (rev * 10) + lst;
		num = num / 10;
	}
	
	printf("\nReverse Number = %d ",rev);
	
	printf("\n\n");
	
	if(temp == rev)
	{
		printf("Number is Palindrom");
	}
	else
	{
		printf("Number is not Palindrom");
	}
}
