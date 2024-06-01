// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/View/Widget/auth/custom_textformauth.dart';
// import 'package:get/get.dart';

// class Cv extends StatelessWidget {
//   const Cv({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("COmplite this templet:"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: <Widget>[
//           const TextFormAuth(
//             text: 'fddfwef',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//           const TextFormAuth(
//             text: 'ef',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//           const TextFormAuth(
//             text: 'wefwef',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//           const TextFormAuth(
//             text: '',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//           const TextFormAuth(
//             text: '',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//           const TextFormAuth(
//             text: '',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//           const TextFormAuth(
//             text: '',
//             hintText: '',
//           ).paddingOnly(bottom: 20),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? emailType;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email and CV Upload'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('طالب'),
            leading: Radio<String>(
              value: 'student',
              groupValue: emailType,
              onChanged: (value) {
                setState(() {
                  emailType = value;
                  cvController.clear();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('استاذ'),
            leading: Radio<String>(
              value: 'teacher',
              groupValue: emailType,
              onChanged: (value) {
                setState(() {
                  emailType = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'البريد الإلكتروني',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          if (emailType == 'teacher') ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: cvController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'رفع السيرة الذاتية',
                ),
                keyboardType: TextInputType.text,
                onTap: () {
                  // هنا يمكنك إضافة وظيفة لرفع السيرة الذاتية
                },
              ),
            ),
          ],
        ],
      ),
    );
  }
}
