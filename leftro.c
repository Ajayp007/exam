#include<stdio.h>

void main()
{
	int i,num,index;
	
	printf("Enter The Size Of Arrey :- ");
	scanf("%d",&num);
	
	printf("\n");
	
	int a[num];
	
	for(i = 0; i < num; i++)
	{
		printf("Enter The Elements a[%d] :- ",i);
		scanf("%d",&a[i]);
	}
	
	printf("\n");
	
	for(i = 0; i < num; i++)
	{
		printf("%d ",a[i]);
	}
	
	printf("\nEnter The Index To Rotate Left Side :- ");
	scanf("%d",&index);
	
	for(i = index; i >= 0; i--)
	{
		printf("%d ",a[i]);
	}
	
	for(i = num - 1; i > index; i--)
	{
		printf("%d ",a[i]);
	}
	
	
}
