#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <malloc.h>

void shuffle(int *array, size_t n)
{
    if (n > 1) 
    {
        size_t i;
        for (i = 0; i < n - 1; i++) 
        {
          size_t j = i + rand() / (RAND_MAX / (n - i) + 1);
          int t = array[j];
          array[j] = array[i];
          array[i] = t;
        }
    }
}

extern void bubble_sort( int* v, int size );
extern void insertion_sort( int* v, int size );

int main( void ) {

	int i;
	int n;
	int* array;
	clock_t begin, end;
	int time_spent;

	printf("Array size: ");
	scanf("%d", &n);

	array = (int*) malloc( n*sizeof(int) );
	for( i = 0; i < n; ++i ) {
		array[i] = i+1;
	}



	srand( time( NULL ) );
	shuffle(array,n);
	
	begin = clock();
	insertion_sort( array, n );
	end = clock();
	time_spent = (int)(end - begin);

	printf("Insertion sort time:\t\t\t%d\n", time_spent);

	shuffle(array,n);

	begin = clock();
	bubble_sort( array, n );
	end = clock();
	time_spent = (int)(end - begin);

	printf("Bubble sort time:\t\t\t%d\n", time_spent);

	return 0;
}
