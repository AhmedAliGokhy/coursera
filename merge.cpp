#include <iostream>
using namespace std;

int * merge(int * array1, int * array2, int length1, int length2) {
  int * array = new int[length1 + length2];
  int i = 0;
  int i1 = 0;
  int i2 = 0;
  while(i1 < length1 && i2 < length2) {
    if (array1[i1] > array2[i2]) {
      array[i] = array2[i2];
      i++;
      i2++;
    } else {
      array[i] = array1[i1];
      i++;
      i1++;
    }
  }
  return array;
}

int * mergeSort(int * array, int length) {
  if (length == 1) {
    return array;
  }
  int middle = length / 2;
  int * array1 = mergeSort(array, middle);
  std::cout << middle << "  " << length << "  " << length - middle << '\n';
  std::cout << "/* message */" << '\n';
  int * array2 = mergeSort(&array[middle], length - middle);
  int * result = merge(array1, array2, middle, length - middle);
  return result;
}

int main ()
{
  int array[] = {5,1,6,7,2,4};
  int n = 6;
  int * result = mergeSort(array, n);
  for(int i = 0; i < n; i++) {
    std::cout << result[i] << '\n';
  }
}
