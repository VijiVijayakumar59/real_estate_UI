// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int itemCount = 1; // Initial value for the counter

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              // Decrease the counter
              if (itemCount > 1) {
                setState(() {
                  itemCount--;
                });
              }
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
          Text(
            itemCount.toString(),
            style: const TextStyle(fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              // Increase the counter
              setState(() {
                itemCount++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
