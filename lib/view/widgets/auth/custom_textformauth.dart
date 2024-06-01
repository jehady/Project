import 'package:flutter/material.dart';

class TextFormAuth extends StatelessWidget {
  final String? hintText;
  final String text;
  final IconData? icon;
  final TextEditingController? myController;
  final String? Function(String?)? validator;
  final bool? obsecure;
  final void Function()? onTapicon;
  const TextFormAuth({
    super.key,
    this.hintText,
    required this.text,
    this.myController,
    this.obsecure,
    this.icon,
    this.validator,
    this.onTapicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure == null || obsecure == false ? false : true,
      validator: validator,
      controller: myController,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(hintText!)),
        suffixIcon: GestureDetector(
          onTap: onTapicon,
          child: Icon(icon),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class TextFormAuth extends StatelessWidget {
//   final String? hintText;
//   final String text;
//   final IconData iconData;
//   final TextEditingController? mycontroller;

//   const TextFormAuth(email,
//       {super.key,
//       required this.iconData,
//       required this.text,
//     this.mycontroller, this.hintText
//        });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: mycontroller,
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: const TextStyle(fontSize: 14),
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         label: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Text(text)),
//         suffixIcon: Icon(iconData),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//     );
//   }
// }
