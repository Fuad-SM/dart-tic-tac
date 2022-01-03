void main() {
  //Bagian ini berisi board yang sudah diisi oleh pemain, tapi masih static.

  List<List<String>> finalBoard = [
    ['0', '_', 'X'],
    ['_', 'X', '_'],
    ['X', 'X', '0']
  ];

  theGame(finalBoard);
}

void theGame(List<List<String>> board) {
  /*
  Tips: lakukan checks pada baris, kemudian cek column, lalu cek diagonal.
    Lalu lakukan print apabila kondisi memenuhi dengan requirement yang kita set di awal.
  Returns: nothing
  */
  // pssst... Gunakan if disini :)

  if (rowCheck(board) == true) {
    print('Menang');
    print('Permainan Berakhir!');
  } else if (rowCheck(transpose(board)) == true) {
    print('Menang');
    print('Permainan Berakhir!');
  } else if (rowCheck(diagonals(board)) == true) {
    print('Menang');
    print('Permainan Berakhir!');
  } else {
    if (boardIsFull(board)) {
      print('\nHasil draw');
      print('Permainan Berakhir!');
    }
  }
}

List<List<String>> tempList(List<List<String>> board) {
  List<List<String>> listTemp = [];

  for (var i = 0; i < board.length; i++) {
    List<String> listInt = [];
    for (var j = 0; j < board[i].length; j++) {
      listInt.add('_');
    }
    listTemp.add(listInt);
  }
  return listTemp;
}

bool rowCheck(List<List<String>> board) {
  /* 
  Tips: lakukan pengecekan apabila row memiliki value yang sama.
  Returns: true jika iya, false jika tidak 
  */

  List<int> temp = [];
  for (var row = 0; row < board.length; row++) {
    int temp2 = 0;
    for (var col = 0; col < board[row].length; col++) {
      if (board[row][0] == board[row][col] && board[row][col] != '_') {
        temp2++;
      }
    }
    temp.add(temp2);
  }
  return temp.contains(3);
}

List<List<String>> transpose(List<List<String>> board) {
  /* 
  Tips: Disini kita akan melakukan transposes, sehingga setiap row akan menjadi sebuah column.
  Returns: the transposed list of lists
  */

  List<List<String>> listTemp = tempList(board);

  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board.length; col++) {
      listTemp[row][col] = board[col][row];
    }
  }

  return listTemp;
}

List<List<String>> diagonals(List<List<String>> board) {
  /* 
  Does: Ambil kedua diagonal dan tambahkan ke new list
  Returns: list baru dari hasil list sebelumnya.
  
  Left-to-right diagonal sebetulnya cukup mudah kalau kita sudah mengerti logicnya. 
  Namun untuk right-to-left diagonal, kita perlu me-reverse setiap row kemudian lakukan 
  left-to-right diagonal sekali lagi
  */

  List<List<String>> reversed = board.reversed.toList();
  List<List<String>> temp = [];

  List<String> leftRight = [];
  List<String> rightLeft = [];

  for (var row = 0; row < board.length; row++) {
    for (var col = 0; col < board[row].length; col++) {
      if (row == col) {
        leftRight.add(board[row][col]);
        rightLeft.add(reversed[row][col]);
      }
    }
  }

  temp.add(leftRight);
  temp.add(rightLeft);
  return temp;
}

bool boardIsFull(List<List<String>> board) {
  for (var row = 0; row < board.length; row++) {
    for (var col = 0; col < board[row].length; col++) {
      if (board[row][col].contains('_')) {
        return false;
      }
    }
  }
  return true;
}
