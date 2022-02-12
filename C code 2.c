#include <stdio.h>

void func2(int x) {
    printf("2.1 x = %i \n", x);
    x = x + 100;
    printf("2.2 x = %i \n", x);
}

void func1(int x) {
    x = x + 4;
    printf("1.1 x = %i \n", x);
    func2(x);
    printf("1.2 x = %i \n", x);
    func2(x);
    printf("1.3 x = %i \n", x);
}

int main() {
    int x = 11;
    printf("m.1 x = %i \n", x);
    func1(x);
    printf("m.2 x = %i \n", x);

    return 0;
}
int main() {
   int arr[30], i, j, num, temp;
 
   printf("\nEnter no of elements : ");
   scanf("%d", &num);
 
   //Read elements in an array
   for (i = 0; i < num; i++) {
      scanf("%d", &arr[i]);
   }
 
   j = i - 1;   // j will Point to last Element
   i = 0;       // i will be pointing to first element
 
   while (i < j) {
      temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      i++;             // increment i
      j--;          // decrement j
   }
 
   //Print out the Result of Insertion
   printf("\nResult after reversal : ");
   for (i = 0; i < num; i++) {
      printf("%d \t", arr[i]);
   }
 
   return (0);
}
