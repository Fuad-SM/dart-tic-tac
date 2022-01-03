import 'dart:io';
import 'tictactoe2.dart';
import 'tictactoe3.dart';

void main() {
  print("Mari Bermain Tic Tac Toe!");
  stdout.write("Silahkan Masukkan Nama Pemain 1 (\'X'): ");
  String? playerOne = stdin.readLineSync();
  stdout.write("Silahkan Masukkan Nama Pemain 2 (\'0'): ");
  String? playerTwo = stdin.readLineSync();

  stdout.write("Mau ukuran papan berapa x berapa? ");
  int userChoice = int.parse(stdin.readLineSync().toString());
  print("Berikut papan dengan ukuran $userChoice x $userChoice : ");

  List<List<String>> initialBoard =
      List.generate(userChoice, (_) => List.generate(userChoice, (_) => '_'));
  printBoard(initialBoard);

  theGame(initialBoard, playerOne!, playerTwo!);
}

void theGame(List<List<String>> board, String playerOne, String playerTwo) {
  bool player1 = true;
  bool gameEnded = false;

  do {
    stdout.write(
        'Giliran ${player1 == true ? playerOne : playerTwo} ${player1 == true ? '\(X)' : '\(0)'}, Masukkan Coordinat:');
    String? input = stdin.readLineSync();

    inputBoard(board, player1, parsingList(input!.replaceAll(' ', '')));

    if (rowCheck(board) == true) {
      print(
          '\n ${player1 == true ? playerOne : playerTwo} ${player1 == true ? '\(X)' : '\(0)'}, Menang');
      print('Permainan Berakhir!');
      break;
    } else if (rowCheck(transpose(board)) == true) {
      print(
          '\n ${player1 == true ? playerOne : playerTwo} ${player1 == true ? '\(X)' : '\(0)'}, Menang');
      print('Permainan Berakhir!');
      break;
    } else if (rowCheck(diagonals(board)) == true) {
      print(
          '\n ${player1 == true ? playerOne : playerTwo} ${player1 == true ? '\(X)' : '\(0)'}, Menang');
      print('Permainan Berakhir!');
      break;
    } else {
      if (boardIsFull(board)) {
        print('\nHasil draw');
        print('Permainan Berakhir!');
        gameEnded = true;
        break;
      } else {
        player1 = !player1;
      }
    }
  } while (!gameEnded);
}
