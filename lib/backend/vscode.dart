// import 'dart:convert';

// import 'package:firebase_database/firebase_database.dart';
// import 'package:get/get.dart';

// import 'package:my_portfolio/controller/vscode_controller.dart';

// class VsCode {
//   GetVsCodeController getVsCodeController = Get.put(GetVsCodeController());
//   VsCode() {
//     // getData();
//   }

//   void getData() {
//     try {
//       DatabaseReference starCountRef =
//           FirebaseDatabase.instance.ref('vscode_data');
//       starCountRef.onValue.listen((DatabaseEvent event) {
//         final data = event.snapshot.value as Map;

//         getVsCodeController.changeData(data);
//       });
//     } catch (e) {
//       print("getData" + e.toString());
//     }
//   }
// }
