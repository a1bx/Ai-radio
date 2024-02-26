import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';




class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body:  Stack(children: [
        VxAnimatedBox().size(context.screenWidth, context.screenHeight)
        .withGradient(
            LinearGradient(colors: [
              //AIColors.primaryColor1,
              //AIColors.primaryColor2,
              Vx.orange400,
              Vx.purple400,
        ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
        )
        .make(),
        AppBar(
          title: "Radio".text.xl4.bold.white.make(),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ).h(100.0).p16()
      ],),
    );
  }
}
