import java.util.*;

class Merge {

  static int[]mergeArray(int[]array1, int[]array2) {
    int []array = new  int[array1.length + array2.length];
    int i = 0;
    int i1 = 0;
    int i2 = 0;
    while(i1 < array1.length && i2 < array2.length) {
      if (array1[i1] < array2[i2]) {
        array[i++] = array1[i1++];
      } else {
        array[i++] = array1[i2++];
      }
    }
    return array;
  }

  static int[]merge(int[] array) {
    if (array.length == 1) {
      return array;
    }
    int mid = array.length / 2;
    int []array1 = merge(array, )
    return array;
  }

  public static void main(String[] args) {
    int[] array = {1,2,3};
    int n = 3;
    int[] result = merge(array);
    for (int i= 0; i < n ; i++) {
      System.out.println(result[i]);
    }
  }
}
