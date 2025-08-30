void main() {
  // Data karyawan
  String namaKaryawan = "Dzakira Djamaludin";
  int jamKerja = 40;
  double upahPerJam = 50.0;
  bool statusKaryawan = true; // true = tetap, false = kontrak

  // Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Menghitung pajak berdasarkan status karyawan
  double pajak;
  if (statusKaryawan) {
    pajak = gajiKotor * 0.10; // 10% untuk karyawan tetap
  } else {
    pajak = gajiKotor * 0.05; // 5% untuk karyawan kontrak
  }

  // Menghitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Menampilkan hasil
  print("=== SLIP GAJI KARYAWAN ===");
  print("Nama Karyawan: $namaKaryawan");
  print("Status: ${statusKaryawan ? 'Tetap' : 'Kontrak'}");
  print("Jam Kerja: $jamKerja jam");
  print("Upah per Jam: \$$upahPerJam");
  print("Gaji Kotor: \$${gajiKotor.toStringAsFixed(2)}");
  print("Pajak: \$${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih: \$${gajiBersih.toStringAsFixed(2)}");
  print("==========================");
}