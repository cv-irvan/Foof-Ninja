part of 'import_view.dart';

class LandingOne extends StatefulWidget {
  const LandingOne({Key? key}) : super(key: key);

  @override
  _LandingOneState createState() => _LandingOneState();
}

class _LandingOneState extends State<LandingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Column(
          children: [
            Image.asset('assets/img_landing_1.png'),
            const Spacer(),
            Text(
              'Find your Comfort\nFood here',
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
              'Here You Can find a chef or dish for every\ntaste and color. Enjoy!',
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
                margin: const EdgeInsets.only(bottom: 40),
                height: 50,
                width: Get.width / 2.5,
                decoration: BoxDecoration(
                  gradient: gHijau,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: wputih,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
