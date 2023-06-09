void main() {
  print(binarySearch([1, 2, 5, 6, 7], 66));
}

binarySearch(List list, var item) {
  var low = 0;
  var high = list.length - 1;

  while (low <= high) {
    var mid = low + high;
    var guess = list[mid];

    if (guess == item) {
      return mid;
    } else if (guess > item) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
