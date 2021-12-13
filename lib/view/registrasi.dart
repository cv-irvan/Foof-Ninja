part of 'import_view.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  _RegistrasiState createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
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
                  height: 50,
                ),
                Image.asset('assets/main_logo.png'),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Sign Up For Free',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const InputText(
                  icon: Icons.account_circle_rounded,
                  hint: 'Your Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                const InputText(
                  icon: Icons.mail_rounded,
                  hint: 'Email',
                ),
                const SizedBox(
                  height: 10,
                ),
                const InputText(
                  icon: Icons.shield_rounded,
                  hint: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: whijau2,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Keep Me Signed In',
                      style: GoogleFonts.poppins(
                        color: whint,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: whijau2,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Email Me About Special Pricing',
                      style: GoogleFonts.poppins(
                        color: whint,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: Get.width / 2,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: gHijau,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.poppins(
                      color: wputih,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientText('already have an account?', gradient: gHijau),
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
