class Cuaca {
  List<double> suhu;

  Cuaca(this.suhu);

  double hitungRataRata() {
    double total = 0;
    for (double s in suhu) {
      total += s;
    }
    return total / suhu.length;
  }

  double hitungSuhuMaksimum() {
    double maksimum = suhu[0];
    for (double s in suhu) {
      if (s > maksimum) {
        maksimum = s;
      }
    }
    return maksimum;
  }

  double hitungSuhuMinimum() {
    double minimum = suhu[0];
    for (double s in suhu) {
      if (s < minimum) {
        minimum = s;
      }
    }
    return minimum;
  }
}

void main() {
  // Data suhu harian dalam derajat Celsius
  List<double> suhuHari = [30.5, 32.0, 29.5, 31.0, 33.0];

  // Membuat objek Cuaca
  Cuaca cuaca = Cuaca(suhuHari);

  // Menghitung statistik cuaca
  double rataRata = cuaca.hitungRataRata();
  double maksimum = cuaca.hitungSuhuMaksimum();
  double minimum = cuaca.hitungSuhuMinimum();

  // Menampilkan hasil
  print('Suhu rata-rata adalah ${rataRata.toStringAsFixed(2)}°C');
  print('Suhu maksimum adalah ${maksimum.toStringAsFixed(2)}°C');
  print('Suhu minimum adalah ${minimum.toStringAsFixed(2)}°C');
}
