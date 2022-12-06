import 'package:get/get.dart';
import 'package:myapp/navbar/navbar.dart';
import 'package:myapp/pages/chart.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/note.dart';
import 'package:myapp/pages/setting.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () =>  Home()),
    GetPage(name: note, page: () =>  Note()),
    GetPage(name: chart, page: () => const Chart()),
    GetPage(name: setting, page: () => const Setting()),
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getnote() => note;
  static getsetting() => setting;

  //
static String navbar = '/';
static String home = '/home';
static String note = '/note';
static String chart = '/chart';
static String setting = '/setting';
}
