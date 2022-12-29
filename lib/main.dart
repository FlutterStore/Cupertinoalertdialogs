import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoAlertDialogs(),
    );
  }
}

class CupertinoAlertDialogs extends StatefulWidget {
  const CupertinoAlertDialogs({super.key});

  @override
  State<CupertinoAlertDialogs> createState() => _CupertinoAlertDialogsState();
}

class _CupertinoAlertDialogsState extends State<CupertinoAlertDialogs> {



  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.green,
        middle: Text('CupertinoAlertDialog',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
      ),
      child: Center(
        child:OutlinedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green)
          ),
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              anchorPoint: const Offset(10, 5),
              barrierColor: Colors.black.withOpacity(0.5),
              barrierDismissible: true,
              filter: ImageFilter.blur(),
              routeSettings: const RouteSettings(arguments: Object(),name: "Successoft Infotech"),
              semanticsDismissible: true,
              useRootNavigator: true,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Alert'),
                content: const Text('Proceed with destructive action?'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('No'),
                  ),
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Yes'),
                  ),
                ],
              )
            );
          },
          child: const Text('CupertinoAlertDialog',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15)),
        ),
      ),
    );
  }
}


