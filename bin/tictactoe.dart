import 'dart:io';

void main() {
  stdout.write("Mau ukuran papan berapa x berapa? ");
  int userChoice = int.parse(stdin.readLineSync());
  print("Berikut papan dengan ukuran $userChoice x $userChoice : \n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
  // Selamat ngoding :)
  // Selamat ngoding :)

  List<dynamic> listGrid = [];

  for (int row = 0; row <= squareSize * 2; row++) {
    List<dynamic> listTemp = [];
    if (row % 2 == 1) {
      for (int a = 0; a <= squareSize; a++) {
        listTemp.add('|');
        listTemp.add('   ');
      }
    } else {
      for (int b = 0; b <= squareSize; b++) {
        if (b >= squareSize) {
          listTemp.add('');
        } else {
          listTemp.add(' ');
          listTemp.add('---');
        }
      }
    }
    listGrid.add(listTemp);
  }

  for (int row = 0; row < listGrid.length; row++) {
    for (int c = 0; c < listGrid[0].length; c++) {
      stdout.write(listGrid[row][c]);
    }
    print('');
  }
}
