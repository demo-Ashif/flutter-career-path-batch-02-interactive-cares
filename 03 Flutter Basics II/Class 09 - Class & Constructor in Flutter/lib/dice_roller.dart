import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String _dicePath = 'assets/images/dice-2.png';

  @override
  Widget build(BuildContext context) {
    //re-execute
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //image
        Image.asset(
          _dicePath, //path/data/state
          width: 200,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            _dicePath = 'assets/images/dice-4.png';
            setState(() {});
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            // padding: EdgeInsets.only(left: 50),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
