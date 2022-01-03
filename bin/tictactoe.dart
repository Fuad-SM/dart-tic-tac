import 'dart:io';

void main() {
  stdout.write("Mau ukuran papan berapa x berapa? ");
  int userChoice = int.parse(stdin.readLineSync().toString());
  print("Berikut papan dengan ukuran $userChoice x $userChoice : \n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
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
    for (int col = 0; col < listGrid.length; col++) {
      stdout.write(listGrid[row][col]);
    }
    print('');
  }
}
