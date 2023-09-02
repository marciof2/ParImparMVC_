import 'package:flutter/material.dart';
import 'package:par_impar_mvc/par_impar_controller.dart';

class ScreenParImpar extends StatefulWidget {
  const ScreenParImpar({Key? key}) : super(key: key);

  @override
  State<ScreenParImpar> createState() => _ScreenParImparState();
}

class _ScreenParImparState extends State<ScreenParImpar> {
  final controller = ParImparController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número: ${controller.numero()}',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            Container(
              child: Text(
                controller.verification(),
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  controller.verification();
                  controller.getNumber();
                });
              },
              child: Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
