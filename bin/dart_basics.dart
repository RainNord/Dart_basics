import 'package:dart_basics/Euclidean_algorithm.dart';
import 'package:dart_basics/transfer_system.dart';
import 'package:dart_basics/search_num.dart' as searchNum;
import 'package:dart_basics/serch_word_count.dart' as searchWord;

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

  // 3.Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print("Задание 3.");
  print("Нахождение чисел в строке: ${searchNum.searchNumInString('32 qwerty 3 word London 0 string mixin zero 1 cat 45m')}");

  // 4.Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
  print("Задание 4.");
  List<String> listString = ["cat","dog","cat","sparrow","sparrow","cat","horse"];
  print("Колисетво вхождений слов в коллекцию: ${searchWord.searchWordCount(listString)}");
}