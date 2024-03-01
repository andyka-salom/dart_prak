import 'dart:convert';

class DataProcessor {
  void processData(String jsonString) {

    var jsonData = jsonDecode(jsonString);

    print("Nama: ${jsonData["nama"]}");
    print("Umur: ${jsonData["umur"]}");
    print("Alamat: ${jsonData["alamat"]}");
    print("Pekerjaan: ${jsonData["pekerjaan"]}");
  }
}

void main() {
  var jsonString = '{"nama": "John Doe", "umur": 30, "alamat": "Jl. Contoh No. 123", "pekerjaan": "Pengembang Perangkat Lunak"}';
  var processor = DataProcessor();
  processor.processData(jsonString);
}
