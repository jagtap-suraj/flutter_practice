import 'package:counter_app/number_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, value, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              value.incrementCounter();
            },
            child: const Icon(Icons.add)),
        appBar: AppBar(
          title: const Text('Provider Counter App Second Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                value.numberList.last.toString(),
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.numberList.length,
                  itemBuilder: ((context, index) {
                    return Text(
                      value.numberList[index].toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        letterSpacing: 15,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
