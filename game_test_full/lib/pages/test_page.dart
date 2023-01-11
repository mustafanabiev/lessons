import 'package:flutter/material.dart';
import 'package:game_test_full/components/appbar_title_widget.dart';
import 'package:game_test_full/components/slider_widget.dart';
import 'package:game_test_full/components/varian_button.dart';
import 'package:game_test_full/constants/app_colors.dart';
import 'package:game_test_full/models/continents.dart';
import 'package:game_test_full/models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({
    Key? key,
    required this.suroo,
    required this.item,
  }) : super(key: key);

  final List<Suroo> suroo;
  final Continents item;

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        title: AppBarTitleWidget(
          tuuraJooptor: tuuraJooptor,
          kataJooptor: kataJooptor,
          item: widget.item,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SliderWidget(value: index),
          const SizedBox(height: 30),
          Text(widget.suroo[index].text, style: const TextStyle(fontSize: 32)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/${widget.suroo[index].image}',
              ),
            ),
          ),
          VariantButton(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Тесттин жыйынтыгы'),
                    content: Text(
                      'Туура жооптор: $tuuraJooptor \n Ката жооптор: $kataJooptor',
                      style: const TextStyle(fontSize: 20),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            tuuraJooptor = 0;
                            kataJooptor = 0;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Кайрадан баштоо',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
