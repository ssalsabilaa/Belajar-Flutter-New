import 'dart:io';

class Kalkulator {
  Future<double> tambah(double a, double b) async {
    return a + b;
  }

  Future<double> kurang(double a, double b) async {
    return a - b;
  }

  Future<double> kali(double a, double b) async {
    return a * b;
  }

  Future<double> bagi(double a, double b) async {
    if (b == 0) {
      throw Exception("Kesalahan: Pembagian dengan nol!");
    }
    return a / b;
  }
}

void main() async {
  Kalkulator kalkulator = Kalkulator();
  
  while (true) {
    print("\n=== Kalkulator Sederhana ===");
    print("1. Tambah");
    print("2. Kurang");
    print("3. Kali");
    print("4. Bagi");
    print("5. Keluar");
    stdout.write("Pilih operasi (1-5): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '5') {
      print("Terima kasih telah menggunakan kalkulator!");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double angka1 = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan angka kedua: ");
    double angka2 = double.parse(stdin.readLineSync()!);

    try {
      double hasil;
      switch (pilihan) {
        case '1':
          hasil = await kalkulator.tambah(angka1, angka2);
          print("Hasil: \$hasil");
          break;
        case '2':
          hasil = await kalkulator.kurang(angka1, angka2);
          print("Hasil: \$hasil");
          break;
        case '3':
          hasil = await kalkulator.kali(angka1, angka2);
          print("Hasil: \$hasil");
          break;
        case '4':
          hasil = await kalkulator.bagi(angka1, angka2);
          print("Hasil: \$hasil");
          break;
        default:
          print("Pilihan tidak valid!");
      }
    } catch (e) {
      print(e);
    }
  }
}
