class fahrenheit {
  static double resultado = 0;
  static double dato = 0;

  static void fac() {
    //(f-32*5)/9
    resultado = (dato - 32) * 5 / 9;
  }

  static void fak() {
    //f-32*5/9+273.15
    resultado = (dato - 32) * 5 / 9 + 273.15;
  }
}
