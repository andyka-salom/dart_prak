import 'dart:convert';
import 'dart:io';

class JSONHandler {
  void processJson(Map<String, dynamic> jsonData) {
    print(jsonData);
    // Lakukan operasi lainnya dengan data JSON di sini
  }
}

void main() {
  stdout.write("Masukkan data JSON: ");
  String jsonString = stdin.readLineSync()!;
  Map<String, dynamic> jsonData = jsonDecode(jsonString);

  JSONHandler handler = JSONHandler();
  handler.processJson(jsonData);
}
