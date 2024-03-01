class ClassABC {
  var a;
  var b;
  var c;

  // Constructor dengan parameter a, b, dan c
  ClassABC(this.a, this.b, this.c);

  // Constructor named dengan parameter a dan b opsional
  ClassABC.named(this.a, [this.b = 0, this.c = "string di ClassABC"]);

  // Fungsi display untuk menampilkan nilai a, b, dan c
  void display() {
    print("Nilai a: $a");
    print("Nilai b: $b");
    print("Nilai c: $c");
  }

  // Fungsi add untuk menjumlahkan a dan b
  dynamic add() {
    if (a is num && b is num) {
      return a + b;
    } else {
      return "Tidak bisa menjumlahkan, a dan b bukan angka.";
    }
  }
}

void main() {
  // Membuat objek menggunakan constructor pertama
  var objek1 = ClassABC(10, 20, "String C");

  // Membuat objek menggunakan constructor named
  var objek2 = ClassABC.named(5, 15);

  // Memanggil fungsi display dan add dari objek pertama
  print("Objek 1:");
  objek1.display();
  print("Hasil penjumlahan a dan b: ${objek1.add()}");
  print("");

  // Memanggil fungsi display dan add dari objek kedua
  print("Objek 2:");
  objek2.display();
  print("Hasil penjumlahan a dan b: ${objek2.add()}");
}
