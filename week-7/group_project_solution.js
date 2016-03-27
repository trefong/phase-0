//sum
function sum(array){
  var sum = 0;
  for (var counter = 0; counter < array.length; counter ++){
    sum += array[counter];
  }
  return sum;
}

console.log(sum([1,2,3,]))


//Mean
function mean(array){
  var elements = array.length
  var sum = 0;
  for (var counter = 0; counter < array.length; counter ++){
    sum += array[counter];
  }
  (sum).toFixed;
  var mean = sum/elements;
  return mean;
}
console.log(mean([1,2,3]))

//Median
function median(array){
  var sum = 0;
  for (var counter = 0; counter < array.length; counter ++){
    sum += array[counter];
    (sum).toFixed;
    var median = sum/2;
    return median;
  }
}
console.log(median([1,2,3]))
