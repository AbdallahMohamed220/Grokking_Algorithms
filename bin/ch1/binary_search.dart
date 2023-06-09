void main() {
  binarySearch([1, 2, 5, 6, 7], 6);
}

binarySearch(List list, var item) {
  var low = 0;
  var high = list.length - 1;

  while (low <= high) {
    var mid = low + high;
    var guess = list[mid];

    print('$mid');
    print('$guess');
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
