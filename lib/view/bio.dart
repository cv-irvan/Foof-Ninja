part of 'import_view.dart';

class Bio extends StatefulWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
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
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: worens3,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: worens1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fill in your bio to get\nstarted',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This data will be displayed in your account\nprofil for your scurity',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const InputText(
                  hint: 'First Name',
                  icon: Icons.person_rounded,
                ),
                const SizedBox(
                  height: 10,
                ),
                const InputText(
                  icon: Icons.person_rounded,
                  hint: 'Last Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                const InputText(
                  icon: Icons.phone_android_rounded,
                  hint: 'Mobile Number',
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: Get.width / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: gHijau,
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
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
