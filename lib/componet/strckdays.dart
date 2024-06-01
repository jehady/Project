import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class strick extends StatefulWidget {
  const strick({super.key});

  @override
  State<strick> createState() => _strickState();
}

class _strickState extends State<strick> {
  late SharedPreferences _prefs;
  int _longUsageDays = 0;

  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  // Initialize SharedPreferences instance
  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _loadLongUsageDays();
  }

  // Load the count of days with long usage from SharedPreferences
  void _loadLongUsageDays() {
    setState(() {
      _longUsageDays = _prefs.getInt('longUsageDays') ?? 0;
    });
  }

  // Increment the count of days with long usage and save it to SharedPreferences
  void _incrementLongUsageDays() {
    setState(() {
      _longUsageDays++;
      _prefs.setInt('longUsageDays', _longUsageDays);
    });
  }

  // Function to check if the app usage is longer than 2 hours
  void _checkAppUsage(Duration usageDuration) {
    if (usageDuration.inSeconds >= 2) {
      _incrementLongUsageDays();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.05,
      color: Colors.black,
      child: Stack(
        children: [
          Icon(
            Icons.water_drop_outlined,
            color: Colors.white,
          ),
          Positioned(
            right: 0.00001,
            bottom: 0.1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.02,
              child: Text(
                "$_longUsageDays",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// Scaffold(
//       appBar: AppBar(
//         title: Text('App Usage Counter'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Days with Usage > 2 hours: $_longUsageDays',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // For demonstration, simulate app usage duration longer than 2 hours
//           Duration usageDuration = Duration(hours: 3);
//           _checkAppUsage(usageDuration);
//         },
//         tooltip: 'Simulate App Usage',
//         child: Icon(Icons.play_arrow),
//       ),
//     );