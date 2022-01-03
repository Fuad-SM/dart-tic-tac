import 'dart:io';

void main() {
  // Empty board

  stdout.write('Input Coordinat:');
  String col = stdin.readLineSync();

  List<List<String>> initialBoard =
      List.generate(3, (_) => List.generate(3, (_) => '_'));

  inputBoard(initialBoard, true, parsingList(col.replaceAll(' ', '')));
}

List<int> parsingList(String val) {
  var split = val.split('');
  var toInt = [int.parse(split[0]), int.parse(split[1])];
  return toInt;
}

void inputBoard(
    List<List<String>> board, bool currentUser, List<int> listChoice) {
  /*
  Takes an initial board and populates it 
  either with X or with O depending on
  the currentUser
  */
  if (currentUser = !currentUser) {
    board[listChoice[0]][listChoice[1]] = '0';
  } else {
    board[listChoice[0]][listChoice[1]] = 'X';
  }
  printBoard(board);
}

void printBoard(List<dynamic> board) {
  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board.length; col++) {
      stdout.write(board[row][col]);
    }
    print('');
  }
}
