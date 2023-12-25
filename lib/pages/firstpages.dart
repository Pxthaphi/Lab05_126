import 'package:flutter/material.dart';
import 'package:lab05_radio_126/pages/utils/food.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Food> foods = [];
  String groupFood = "ยังไม่ได้เลือกเมนูอาหาร!!";

  @override
  void initState() {
    super.initState();
    foods = Food.getFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pathaphi 126'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // ใส่โค้ดที่คุณต้องการให้ทำงานเมื่อคลิก icon ตะกร้าที่นี่
              // เช่น การเปิดหน้าตะกร้าสินค้าหรือการดำเนินการต่างๆ
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('เมนูอาหาร'),
          Column(
            children: createRadioFood(),
          ),
          Text(groupFood),
        ],
      ),
    );
  }

  List<Widget> createRadioFood() {
    List<Widget> myfoods = [];
    for (Food food in foods) {
      myfoods.add(
        RadioListTile(
          title: Text(
            food.thaiName,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 144, 17),
            ), // เพิ่มสีเขียวให้กับข้อความ
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(food.engName),
              Text(
                'ราคา: ${food.price.toString()} บาท',
                style: const TextStyle(
                    color: Color.fromARGB(255, 77, 156, 12),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          secondary: const Icon(Icons.shopping_bag_outlined,
              color: Color.fromARGB(255, 90, 200, 0)),
          controlAffinity: ListTileControlAffinity.platform,
          value: food.value,
          groupValue: groupFood,
          onChanged: (value) {
            setState(() {
              groupFood = value!;
            });
          },
          selected: true,
        ),
        
      );
    }
    return myfoods;
  }
}
