import 'package:flutter/material.dart';
import 'package:uber_rider_app/mySplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: const MySplashScreen(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  final Widget? child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyApp>()!.restartApp();
  }

  const MyApp({super.key, this.child});
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {});
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
