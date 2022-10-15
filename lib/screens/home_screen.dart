import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = const TextStyle( fontSize: 30, color: Colors.indigo);

    return Scaffold( // Prepara el sitio para que pueda trabajar en el
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Numero de Clicks', style: textStyle),
            Text('2', style: textStyle,),
          ],
        ),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
        } ,
      ),
    );
  }

}