import 'package:dart_basics/Euclidean_algorithm.dart';
import 'package:dart_basics/transfer_system.dart';

void main() {
  // 1.Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
  print("Задание 1.");
  var objEuclid = Euclid();
  print("Результат НОД: ${objEuclid.gcd(64,48)}");
  print("Результат НОК: ${objEuclid.lcm(75,210)}"); 
  print("Разбиваем число на простые множители: ${objEuclid.getMultipliers(84).join('*')}");

  // 2.Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
  print("Задание 2.");
  print("Преобразование из десятичной в двоичную: ${89.decimalToBinary()}");
  print("Преобразование из двоичной в десятичную: ${1011001.binaryToDecimal()}");

}