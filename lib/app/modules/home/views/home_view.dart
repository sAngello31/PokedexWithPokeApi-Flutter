import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/modules/home/widgets/AppbarPokedex.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarPokedex(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  getTitle("Bienvenidos"),
                  getSubTitle("Que desea hacer?"),
                  buttonMenu(
                      "Pokemon", Color.fromRGBO(255, 105, 97, 1), "/pokemon"),
                  spaceButton(),
                  buttonMenu(
                      "Movimientos", Color.fromRGBO(249, 207, 48, 1), "uwu"),
                  spaceButton(),
                  buttonMenu("Tipos", Color.fromRGBO(100, 147, 235, 1), "uwu"),
                  spaceButton(),
                  buttonMenu("Items", Color.fromRGBO(168, 145, 236, 1), "uwu"),
                ],
              ),
            ),
          ),
        )));
  }
}

Widget getTitle(String text) {
  return Container(
    child: Text(
      text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
  );
}

Widget buttonMenu(String text, Color colorButton, String route) {
  return TextButton(
      onPressed: () {
        Get.toNamed(route);
      },
      child: Container(
        width: 277,
        height: 74,
        alignment: Alignment
            .center, //Mala forma de alinear este texto, se debera cambiar porque falta la pokeball :D
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: colorButton),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ));
}

Widget pokeballImg() {
  return Container(
    child: SvgPicture.asset("assets/svgImg/pokeball.svg"),
  );
}

Widget spaceButton() {
  return Container(
    height: 26,
  );
}

Widget getSubTitle(String text) {
  return Container(
    padding: EdgeInsets.only(top: 6),
    margin: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      textAlign: TextAlign.center,
    ),
  );
}
