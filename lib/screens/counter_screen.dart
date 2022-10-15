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

    TextStyle textStyle = TextStyle(fontSize: 35, color: Colors.green[300]);

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
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
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
          backgroundColor: Colors.green[300],
          splashColor: Colors.white70,
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          backgroundColor: Colors.green[300],
          splashColor: Colors.white70,
          child: const Icon(Icons.restart_alt_outlined),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          backgroundColor: Colors.green[300],
          splashColor: Colors.white70,
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
      ],
    );
  }
}
