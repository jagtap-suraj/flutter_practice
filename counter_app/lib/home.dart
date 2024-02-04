import 'package:counter_app/number_list_provider.dart';
import 'package:counter_app/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          title: const Text('Provider Counter App'),
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
              Expanded(
                child: ListView.builder(
                  itemCount: value.numberList.length,
                  itemBuilder: ((context, index) {
                    return Text(
                      value.numberList[index].toString(),
                      textAlign: TextAlign.center,
                    );
                  }),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Second()));
                  },
                  child: const Text('Go to Second Screen'))
            ],
          ),
        ),
      ),
    );
  }
}
