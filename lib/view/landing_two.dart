part of 'import_view.dart';

class LandingTwo extends StatefulWidget {
  const LandingTwo({Key? key}) : super(key: key);

  @override
  _LandingTwoState createState() => _LandingTwoState();
}

class _LandingTwoState extends State<LandingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Column(
          children: [
            Image.asset('assets/img_landing_2.png'),
            const Spacer(),
            Text(
              'Food Ninja is Where Your\nComfort Food Lives',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enjoy a fast and smooth food delivery at\n your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: Get.width / 2.5,
                decoration: BoxDecoration(
                  gradient: gHijau,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: wputih,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
