part of 'import_view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wputih,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/main_bg.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/main_logo.png'),
          ),
        ],
      ),
    );
  }
}
