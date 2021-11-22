// Clase utilitaria para convertir numero a base 2 y base 10
class Converter {
  // Creacion de cadena cambiante mediante el teclado
  static String adjustValue(String oldValue, int newDigit) {
    String newValue;
    if (oldValue == "0") {
      newValue = "$newDigit";
    } else {
      newValue = oldValue + "$newDigit";
    }
    return newValue;
  }

  // Funcion que convierte cadena binaria a cadena decimal
  static String binaryToDecimal(String binary) {
    return int.parse(binary, radix: 2).toRadixString(10);
  }

  // Funcion que convierte cadena decimal a cadena binaria
  static String decimalToBinary(String decimal) {
    return int.parse(decimal, radix: 10).toRadixString(2);
  }
}
