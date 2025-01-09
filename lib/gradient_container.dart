import 'package:flutter/material.dart';
import 'package:myfirstapp/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

   const GradientContainer.purple({super.key})
        : color1 = const Color.fromARGB(255, 239, 150, 49),
          color2 = const Color.fromARGB(255, 28, 224, 224);

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
              colors: [color1, color2],
               begin: startAlignment,
               end: endAlignment
              )
          ),
          child: Center(
            child: DiceRoller(),
        ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//                begin: startAlignment,
//                end: endAlignment
//               )
//           ),
//           child: const Center(
//             child: StyleText('Hello world!'),
//           ),
//         );
//   }
// }