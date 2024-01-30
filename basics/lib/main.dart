import 'package:flutter/material.dart';

import 'package:basics/gradient_container.dart';

// void main(){
//   runApp(const MaterialApp(home: Text('Hello World')));
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     ),
//   );
// }

// change background
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          // backgroundColor: Color.fromARGB(255, 63, 5, 120),
          body: GradientContainer.purple()),
    ),
  );
}
