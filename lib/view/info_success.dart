part of 'import_view.dart';

class InfoSuccess extends StatefulWidget {
  const InfoSuccess({Key? key}) : super(key: key);

  @override
  _InfoSuccessState createState() => _InfoSuccessState();
}

class _InfoSuccessState extends State<InfoSuccess> {
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
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Spacer(),
                Image.asset('assets/ic_sukses.png'),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Your Profile Is Ready To Use',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: Get.width / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: gHijau,
                    boxShadow: shadowBiru,
                  ),
                  child: Text(
                    'Try Order',
                    style: GoogleFonts.poppins(
                      color: wputih,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
