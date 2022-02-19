part of 'import_utils.dart';

Gradient gHijau = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight, // 10% of the width, so there are ten blinds.
  colors: <Color>[Color(0xff53E88B), Color(0xff15BE77)], // red to yellow
  tileMode: TileMode.repeated, // repeats the gradient over the canvas
);

List<BoxShadow> shadowBiru = [
  BoxShadow(
    color: wbiru,
    blurRadius: 50,
    offset: const Offset(12, 26),
  )
];

Color worens1 = const Color(0xffDA6317);
Color worens2 = const Color(0xffFEAD1D);
Color worens3 = const Color(0xffFEAD1D).withOpacity(0.1);
Color wmerah = const Color(0xffFF4B4B);
Color wputih = Colors.white;
Color wline = const Color(0xffF4F4F4);
Color wbiru = const Color(0xff5A6CEA).withOpacity(0.07);
Color whijau2 = const Color(0xff53E88B);
Color whint = Colors.grey.withOpacity(0.5);
Color whitam = Colors.black;