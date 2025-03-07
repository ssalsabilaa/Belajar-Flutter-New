import 'dart:io';

void main() {
  while (true) {
    print("\n=== Kalkulator Sederhana ===");
    print("Pilih operasi:");
    print("1. Penjumlahan");
    print("2. Pengurangan");
    print("3. Perkalian");
    print("4. Pembagian");
    print("5. Keluar");
    stdout.write("Masukkan pilihan (1-5): ");
    String? input = stdin.readLineSync();

    if (input == '5') {
      print("Terima kasih telah menggunakan kalkulator.");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan angka kedua: ");
    double num2 = double.parse(stdin.readLineSync()!);

    double hasil;
    switch (input) {
      case '1':
        hasil = num1 + num2;
        print("Hasil: \$num1 + \$num2 = \$hasil");
        break;
      case '2':
        hasil = num1 - num2;
        print("Hasil: \$num1 - \$num2 = \$hasil");
        break;
      case '3':
        hasil = num1 * num2;
        print("Hasil: \$num1 * \$num2 = \$hasil");
        break;
      case '4':
        if (num2 == 0) {
          print("Kesalahan: Pembagian dengan nol tidak diperbolehkan.");
        } else {
          hasil = num1 / num2;
          print("Hasil: \$num1 / \$num2 = \$hasil");
        }
        break;
      default:
        print("Pilihan tidak valid, silakan coba lagi.");
    }
  }
}
