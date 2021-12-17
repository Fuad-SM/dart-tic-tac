void main() {
  //Bagian ini berisi board yang sudah diisi oleh pemain, tapi masih static.
  List<List<int>> finalBoard = [
    [1, 0, 0],
    [0, 1, 0],
    [2, 1, 0]
  ];

  theGame(finalBoard);
}

void theGame(List<List<int>> board) {
  /*
  Tips: lakukan checks pada baris, kemudian cek column, lalu cek diagonal.
    Lalu lakukan print apabila kondisi memenuhi dengan requirement yang kita set di awal.
  Returns: nothing
  */
  // pssst... Gunakan if disini :)
}

bool rowCheck(List<List<int>> board) {
  /* 
  Tips: lakukan pengecekan apabila row memiliki value yang sama.
  Returns: true jika iya, false jika tidak 
  */
}

List<List<int>> transpose(List<List<int>> board) {
  /* 
  Tips: Disini kita akan melakukan transposes, sehingga setiap row akan menjadi sebuah column.
  Returns: the transposed list of lists
  */
}

List<List<int>> diagonals(List<List<int>> board) {
  /* 
  Does: Ambil kedua diagonal dan tambahkan ke new list
  Returns: list baru dari hasil list sebelumnya.
  
  Left-to-right diagonal sebetulnya cukup mudah kalau kita sudah mengerti logicnya. 
  Namun untuk right-to-left diagonal, kita perlu me-reverse setiap row kemudian lakukan 
  left-to-right diagonal sekali lagi
  */
}
