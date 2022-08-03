import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/transfer_system.dart';
import 'package:dart_basics/search_num.dart' as search_num;
import 'package:dart_basics/serch_word_count.dart' as search_word;
import 'package:dart_basics/search_num_in_word.dart' as search_num_in_word;
import 'package:dart_basics/point.dart';
import 'package:dart_basics/exponent_root.dart';
import 'package:dart_basics/users_work.dart';

void main() {
  // 1.Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
  print("Задание 1.");
  var delimetersCalculator = DelimetersCalculator();
  print("Результат НОД: ${delimetersCalculator.gcd(64, 48)}");
  print("Результат НОК: ${delimetersCalculator.lcm(75, 210)}");
  print("Разбиваем число на простые множители: ${delimetersCalculator.getMultipliers(84).join('*')}");

  // 2.Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
  print("Задание 2.");
  print("Преобразование из десятичной в двоичную: ${89.decimalToBinary()}");
  print("Преобразование из двоичной в десятичную: ${1011001.binaryToDecimal()}");

  // 3.Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print("Задание 3.");
  print("Нахождение чисел в строке: ${search_num.searchNumInString('32 qwerty 3 word London 0 string mixin zero 1 cat 45m')}");

  // 4.Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
  print("Задание 4.");
  List<String> listString = ["cat", "dog", "cat", "sparrow", "sparrow", "cat", "horse"];
  print("Колисетво вхождений слов в коллекцию: ${search_word.searchWordCount(listString)}");

  // 5.Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
  //  Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
  //  Однако цифры встречаются в виде английских слов от zero до nine.
  //  Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
  //  Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
  print("Задание 5.");
  listString = ["one", "dog", "cat", "three", "five", "sparrow", "nine", "one", "nine", "seven"];
  print('Цифры встречающиеся в коллекции: ${search_num_in_word.searchNumInWord(listString)}');

  // 6.Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
  // У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре.
  // По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки.
  // Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение (например,
  // конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).
  print("Задание 6.");
  Point pointOne = Point.unitVector();
  Point pointTwo = Point(6, 2, 8);
  Point pointThree = Point(4, 7, 9);
  print("Расстояние между точками One и Two: ${pointOne.distanceTo(pointTwo)}");
  print("Площадь треугольника образующегося из точек One, Two, Three: ${pointOne.triangleArea(pointTwo, pointThree)}");

  // 7.Реализуйте метод, который вычисляет корень любой заданной степени из числа.
  // Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
  // Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.
  print("Задание 7.");
  print("Вычисление корня заданной степени: ${8.calcRootExponent(4, 0.000001)}");
  try{
    print("Вычисление корня заданной степени: ${0.calcRootExponent(4, 0.000001)}");
  }catch(e){
    print(e);
  }

  // 8.Создайте класс User, у которого есть поле email. 
  //Реализуйте два наследника данного класса AdminUser и GeneralUser. 
  //Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, 
  //которое находится после @. Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. 
  //Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>, 
  //у которого будет храниться список пользователей и будут методы добавления или удаления их. 
  //Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin, 
  //будет выведено значение после @. Проверьте реализованные методы на практике.
  print("Задание 8.");
  AdminUser userAdmin = AdminUser('admin@inbox.ru');
  print("Получаем значение из email: ${userAdmin.getMailSystem}");
  UserManager userManager = UserManager();
  userManager.addUser(GeneralUser('userOne@gmail.com'));
  userManager.addUser(userAdmin);
  userManager.addUser(GeneralUser('userTwo@gmail.com'));
  print("Получаем почту всех пользователей: ${userManager.getEmailUsers()}");
  userManager.deleteUserByIndex(0);
  print("Получаем почту всех пользователей: ${userManager.getEmailUsers()}");
}
