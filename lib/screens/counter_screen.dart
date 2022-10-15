import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // propiedades
  int counter = 15; // el estado debe ir en propiedades

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // variables

    TextStyle textStyle = const TextStyle(fontSize: 30, color: Colors.indigo);

    return Scaffold(
      // Prepara el sitio para que pueda trabajar en el
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de Clicks', style: textStyle),
            Text(
              '$counter',
              style: textStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt_outlined),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
      ],
    );
  }
}
