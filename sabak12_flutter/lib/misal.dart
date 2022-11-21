import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flashlight/flashlight.dart';

class FlashLight extends StatefulWidget {
  const FlashLight({super.key});

  @override
  State createState() {
    return _FlashLight();
  }
}

class _FlashLight extends State {
  bool hasflashlight = false; //to set is there any flashlight ?
  bool isturnon = false; //to set if flash light is on or off
  IconData flashicon = Icons.flash_off; //icon for lashlight button
  Color flashbtncolor = Colors.deepOrangeAccent; //color for flash button

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      //we use Future.delayed because there is async function inside it.
      bool istherelight = await Flashlight.hasFlashlight;
      setState(() {
        hasflashlight = istherelight;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flash Light")),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(40),
          //set width and height of outermost wrapper to 100%;
          child: flashlightbutton(),
        ));
  }

  Widget flashlightbutton() {
    if (hasflashlight) {
      return Column(
        children: [
          TextButton(onPressed: (){}, child: ),
          const Text("Your device has flash light."),
          Text(isturnon ? "Flash is ON" : 'Flash is OFF'),
          SizedBox(
              child: TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: flashbtncolor,
            ),
            onPressed: () {
              if (isturnon) {
                //if light is on, then turn off
                Flashlight.lightOff();
                setState(() {
                  isturnon = false;
                  flashicon = Icons.flash_off;
                  flashbtncolor = Colors.deepOrangeAccent;
                });
              } else {
                //if light is off, then turn on.
                Flashlight.lightOn();
                setState(() {
                  isturnon = true;
                  flashicon = Icons.flash_on;
                  flashbtncolor = Colors.greenAccent;
                });
              }
            },
            icon: Icon(
              flashicon,
              color: Colors.white,
            ),
            label: Text(
              isturnon ? 'TURN OFF' : 'TURN ON',
              style:const TextStyle(color: Colors.white),
            ),
          ))
        ],
      );
    } else {
      return const Text("Your device do not have flash light.");
    }
  }
}
