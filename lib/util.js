function search(array, target) {
  let low = 0;
  let high = array.length - 1;
  let i = 0;
  while (low <= high) {
    let middle = Math.round((low + high) / 2);
    if (target < array[middle].ID) {
      high = middle - 1;
      i += 1;
    } else if (target > array[middle].ID) {
      low = middle + 1;
      i += 1;
    } else {
      return middle;
    }
  }
  return -1;
}

exports.search = search;
