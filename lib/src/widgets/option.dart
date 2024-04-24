import 'package:flutter/material.dart';

class Option extends StatelessWidget {

  final String text;
  final int index;
  final VoidCallback press;


  const Option({
    super.key, 
    required this.text, 
    required this.index, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFC1C1C1)),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${index + 1} - $text',
              style: const TextStyle(fontSize: 14, color: Color(0xFFC1C1C1)),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: const Color(0xFFC1C1C1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
