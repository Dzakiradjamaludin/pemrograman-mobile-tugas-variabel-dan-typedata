void main() {
  // Data karyawan
  String namaKaryawan = "Dzakira Djamaludin";
  int jamKerja = 40; // jam kerja dalam seminggu
  double upahPerJam = 50000.0;
  bool statusKaryawan = true; // true = tetap, false = kontrak
  
  // Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;
  
  // Menghitung pajak berdasarkan status
  double pajak;
  String statusText;
  
  if (statusKaryawan) {
    pajak = gajiKotor * 0.10; // 10% untuk karyawan tetap
    statusText = "Tetap";
  } else {
    pajak = gajiKotor * 0.05; // 5% untuk karyawan kontrak
    statusText = "Kontrak";
  }
  
  // Menghitung gaji bersih
  double gajiBersih = gajiKotor - pajak;
  
  // Menampilkan hasil
  print("=== PROGRAM PENGHITUNG GAJI KARYAWAN ===");
  print("Nama Karyawan    : $namaKaryawan");
  print("Status Karyawan  : $statusText");
  print("Jam Kerja/Minggu : $jamKerja jam");
  print("Upah per Jam     : Rp ${upahPerJam.toStringAsFixed(2)}");
  print("----------------------------------------");
  print("Gaji Kotor       : Rp ${gajiKotor.toStringAsFixed(2)}");
  print("Pajak            : Rp ${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih      : Rp ${gajiBersih.toStringAsFixed(2)}");
  print("========================================");
  
  // Contoh dengan karyawan kontrak
  print("\n=== CONTOH KARYAWAN KONTRAK ===");
  String namaKaryawan2 = "Siti Rahma";
  int jamKerja2 = 35;
  double upahPerJam2 = 45000.0;
  bool statusKaryawan2 = false;
  
  double gajiKotor2 = jamKerja2 * upahPerJam2;
  double pajak2;
  String statusText2;
  
  if (statusKaryawan2) {
    pajak2 = gajiKotor2 * 0.10;
    statusText2 = "Tetap";
  } else {
    pajak2 = gajiKotor2 * 0.05;
    statusText2 = "Kontrak";
  }
  
  double gajiBersih2 = gajiKotor2 - pajak2;
  
  print("Nama Karyawan    : $namaKaryawan2");
  print("Status Karyawan  : $statusText2");
  print("Jam Kerja/Minggu : $jamKerja2 jam");
  print("Upah per Jam     : Rp ${upahPerJam2.toStringAsFixed(2)}");
  print("----------------------------------------");
  print("Gaji Kotor       : Rp ${gajiKotor2.toStringAsFixed(2)}");
  print("Pajak            : Rp ${pajak2.toStringAsFixed(2)}");
  print("Gaji Bersih      : Rp ${gajiBersih2.toStringAsFixed(2)}");
}