class Food {
  final String engName;
  final String thaiName;
  final String value;
  final double price;

  Food(
      {required this.engName,
      required this.thaiName,
      required this.value,
      required this.price});

  static List<Food> getFood() {
    return <Food>[
      Food(
        engName: 'Lasagne',
        thaiName: 'ลาซ่านญ่า',
        value: 'lasagne',
        price: 250,
      ),
      Food(
        engName: 'Pizza',
        thaiName: 'พิซซ่า',
        value: 'pizza',
        price: 199,
      ),
      Food(
        engName: 'Ramen',
        thaiName: 'ราเมน',
        value: 'ramen',
        price: 89,
      ),
      Food(
        engName: 'Sushi',
        thaiName: 'ซูชิ',
        value: 'sushi',
        price: 20,
      ),
      Food(
        engName: 'Matcha Milk',
        thaiName: 'มัทฉะ',
        value: 'matcha milk',
        price: 65,
      ),
    ];
  }
}
