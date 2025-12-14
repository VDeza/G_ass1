

bool primeCheck(int bil) {
  if (bil <= 1) return false;
  if (bil == 2) return true;
  if (bil % 2 == 0) return false;
  for (int i = 3; i <= bil; i += 2) {
    if (bil % i == 0 && i != bil) return false;
  }
  return true;
}

void hasil(String tipe, bool isPrime, int bil) {
  print("Bilangan $bil adalah $tipe");
  print(isPrime ? "Prima" : "Bukan Prima");
}

void main() {
  int bil = 15;
  bool isPrime = primeCheck(bil);
  final String tipe = (bil % 2 == 0) ? "genap" : "ganjil";
  hasil(tipe, isPrime, bil);
}