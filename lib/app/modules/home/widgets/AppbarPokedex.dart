import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarPokedex extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //Como Leading debe haber un icono de pokeball, esto se debera arreglar
      leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.ad_units,
            color: Colors.black,
          )),
      title: Text(
        'PokeDex',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1);
}
