import 'dart:io';

void main() {
  // Empty board
  List<List<String>> initialBoard =
      List.generate(3, (_) => List.generate(3, (_) => ' '));
  drawBoard(initialBoard, 2);
}

void drawBoard(List<List<String>> board, int currentUser) {
  /*
  Takes an initial board and populates it 
  either with X or with O depending on
  the currentUser
  */
}
