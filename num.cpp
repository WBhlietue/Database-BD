#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main()
{
    srand(time(0));
    FILE *file = fopen("d.txt", "w");
    for (int i = 0; i < 32; i++)
    {
        fprintf(file, "%d\n", (rand() % 30+1) *100);
    }
    return 0;
}