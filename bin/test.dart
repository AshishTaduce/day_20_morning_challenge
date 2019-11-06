import 'main.dart';
import 'package:test/test.dart';

void main() {

  print("Testing");

  test("Test Case 1",(){
    expect(josephus(10, 3), (4));
    expect(josephus(41, 3), (31));
  });

  test("Test Case 2",(){
    expect(groupSeats([
      [1, 0, 1, 0, 1, 0, 1],
      [0, 1, 0, 1, 0, 1, 0],
      [0, 0, 1, 1, 1, 1, 1],
      [1, 0, 1, 1, 0, 0, 1],
      [1, 1, 1, 0, 1, 0, 1],
      [0, 1, 1, 1, 1, 0, 0]], 2), 3);
  });


}