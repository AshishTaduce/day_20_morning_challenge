// Challenge 1
// Write test cases including boundary conditions for given challenges

// Challenge 2
// Josephus Problem
// This classic problem dates back to Roman times. There are 41 soldiers arranged
// in a circle. Every third soldier is to be killed by their captors, continuing
// around the circle until only one soldier remains. He is to be freed. Assuming
// you would like to stay alive, at what position in the circle would you stand?

// Generalize this problem by creating a function that accepts the number of
// soldiers n and the interval at which they are killed i, and returns the
// position of the fortunate survivor.
int josephus(int n, int k)
{
  if (n == 1)
    return 1;
  else
    return (josephus(n - 1, k) + k-1) % n + 1;
}

// Challenge 3
// Movie Theater Seating
// A group of n friends are going to see a movie. They would like to find a spot
// where they can sit next to each other in the same row. A movie theater's seat
// layout can be represented as a 2-D matrix, where 0s represent empty seats and
// 1s represent taken seats.


// Create a function that, given a seat layout and the number of friends n,
// returns the number of available spots for all n friends to sit together.
//
//Examples
//groupSeats([
//  [1, 0, 1, 0, 1, 0, 1],
//  [0, 1, 0, 1, 0, 1, 0],
//  [0, 0, 1, 1, 1, 1, 1],
//  [1, 0, 1, 1, 0, 0, 1],
//  [1, 1, 1, 0, 1, 0, 1],
//  [0, 1, 1, 1, 1, 0, 0]
//    ], 2) ➞ 3
groupSeats(List<List<int>> list, int n){
  int count = 0;
  int results = 0;
for (List x in list){
  for (int y in x){
    if (y == 0){
      count++;
      if (count == n){
        results++;
        count = 0;
      }
    }
    else{
      count = 0;
    }
  }
}
return print(results);
}

main() {
  groupSeats([
  [1, 0, 1, 0, 1, 0, 1],
  [0, 1, 0, 1, 0, 1, 0],
  [0, 0, 1, 1, 1, 1, 1],
  [1, 0, 1, 1, 0, 0, 1],
  [1, 1, 1, 0, 1, 0, 1],
  [0, 1, 1, 1, 1, 0, 0]], 2);

  print(josephus(10, 3));
}
