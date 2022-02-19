part of 'import_view.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  _SetLocationState createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sec_bg.png'),
              ),
            ),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: worens3,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.keyboard_arrow_left),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Set Your Location',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: GoogleFonts.poppins(color: whint),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: wputih,
                    boxShadow: shadowBiru,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/ic_pin.png'),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Your Location',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: Get.width,
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whint.withOpacity(0.2),
                        ),
                        child: Text(
                          'Set Location',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: Get.width / 3,
                    decoration: BoxDecoration(
                      gradient: gHijau,
                      boxShadow: shadowBiru,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: wputih,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
