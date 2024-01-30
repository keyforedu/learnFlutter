// import 'package:basics/styled_text.dart';

import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

Alignment? startTest;

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// images

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  // var activeDiceImage = 'assets/images/dice-2.png';

  // void rollDice() {
  //   activeDiceImage = 'assets/images/dice-4.png';
  //   print('Changing image...');
  // }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

//yang di cut
// Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               //'assets/images/dice-2.png',
//               activeDiceImage,
//               width: 200,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextButton(
//               onPressed: rollDice, //() {} -> anonymous functions
//               style: TextButton.styleFrom(
//                   padding: const EdgeInsets.only(
//                     top: 20,
//                   ),
//                   foregroundColor: Colors.white,
//                   textStyle: const TextStyle(fontSize: 28)),
//               child: const Text('Roll Dice'),
//             )
//           ],
//         ),


// sebelum 44
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: const [
//             Color.fromARGB(255, 26, 2, 80),
//             Color.fromARGB(255, 236, 213, 209),
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(child: StyledText()),
//     );
//   }
// }
