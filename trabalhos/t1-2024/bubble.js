function bubbleSortFixedFive(arr) {
  if (arr.length !== 5) {
    throw new Error("This bubble sort function is designed for arrays of length 5.");
  }

  for (let i = 0; i < 4; i++) { 
    for (let j = 0; j < 4 - i; j++) {  // Simplified inner loop condition
      console.log(i, j, 4 - i);
      if (arr[j] > arr[j + 1]) {
        console.log('swap', arr[j], arr[j + 1]);
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
  }
}

// Example usage
let arr = [-5, 4, 2, -11, 9];
bubbleSortFixedFive(arr);
console.log("Sorted array: ", arr);