
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../view/screens/auth/login.dart';
import '../../view/screens/language.dart';
import '../middleweare/my_middleweare.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language(), middlewares: [
    MyMedddlWeare(),
  ]),
  GetPage(name: "/login", page: () => const Login()),
];
