import 'dart:io';

void main() {
  stdout.write("Mau ukuran papan berapa x berapa? ");
  int userChoice = int.parse(stdin.readLineSync());
  print("Berikut papan dengan ukuran $userChoice x $userChoice : \n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
  // Selamat ngoding :)
}
