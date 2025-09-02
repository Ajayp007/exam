#include<stdio.h>

/*

1 2 3 => (0,2)
4 5 6 => (1,2)
7 8 9 => (2,2)


*/

void main()
{
	int i, j, r, c;
	
	printf("Enter R :- ");
	scanf("%d",&r);
	
	printf("Enter C :- ");
	scanf("%d",&c);
	
	printf("\n\n");
	
	int a[r][c];
	
	for(i = 0; i < r; i++)
	{
		for(j = 0; j < c; j++)
		{
			printf("Enter The Elements a[%d][%d] :- ",i,j);
			scanf("%d",&a[i][j]);
		}
		
	}
	
	printf("\n\n");
	
	for(i = 0; i < r; i++)
	{
		for(j = 0; j < c; j++)
		{
			printf("%d ",a[i][j]);
		}
		printf("\n");
	}
	
	printf("\n\n");
	
	j = c - 1;
	
	for(i = 0; i < r; i++)
	{
		printf("%d",a[i][j]);
	}
	
}
