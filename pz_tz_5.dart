void main() {
  // ---------- Задание 1 ----------
  print('--- Задание 1 ---');
  double area = calculateArea(5, 3);
  print('Площадь: $area');

  // ---------- Задание 2 ----------
  print('--- Задание 2 ---');
  print('Площадь: ${calculateAreaNamed(width: 4, height: 2.5)}');

  // ---------- Задание 3 ----------
  print('--- Задание 3 ---');
  List<int> numbers = [2, -5, 8, -1, 10, 4];
  List<int> positive = numbers.where((n) => n > 0).toList();
  print(positive);

  // ---------- Задание 4 ----------
  print('--- Задание 4 ---');
  List<String> words = ['apple', 'banana', 'kiwi'];
  List<int> lengths = words.map((w) => w.length).toList();
  print(lengths);

  // ---------- Самостоятельная работа: анализатор корзины ----------
  print('--- Анализатор корзины ---');
  List<Map<String, dynamic>> cart = [
    {'name': 'Ноутбук', 'category': 'Электроника', 'price': 55000},
    {'name': 'Футболка', 'category': 'Одежда', 'price': 1200},
    {'name': 'Наушники', 'category': 'Электроника', 'price': 3500},
    {'name': 'Книга', 'category': 'Книги', 'price': 800},
    {'name': 'Смартфон', 'category': 'Электроника', 'price': 30000},
  ];

  // 1. Товары из категории "Электроника"
  List<Map<String, dynamic>> electronics =
      cart.where((item) => item['category'] == 'Электроника').toList();
  print('Электроника:');
  electronics.forEach((item) => print('  ${item['name']} - ${item['price']} сом'));

  // 2. Только названия товаров
  List<String> names = cart.map((item) => item['name'] as String).toList();
  print('Названия товаров: $names');

  // 3. Общая стоимость
  int total = cart.fold(0, (sum, item) => sum + (item['price'] as int));
  print('Общая стоимость: $total сом');
}

// ---------- Задание 1 ----------
double calculateArea(double width, double height) {
  return width * height;
}

// ---------- Задание 2 ----------
// Стрелочный синтаксис и именованные параметры
double calculateAreaNamed({required double width, required double height}) =>
    width * height;