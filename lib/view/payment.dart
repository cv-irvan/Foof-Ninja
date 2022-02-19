part of 'import_view.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List<String> img = [
    "assets/paypal.png",
    "assets/payoneer.png",
    "assets/visa.png",
  ];

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
            padding: const EdgeInsets.all(20),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 50,
                  height: 50,
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
                  'Payment method',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'this data will be displayed in your account profile for scurity',
                  style: GoogleFonts.poppins(
                    color: whint,
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: img.length,
                  separatorBuilder: (BuildContext context, int i) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: wputih,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: shadowBiru,
                      ),
                      child: Image.asset(img[index]),
                    );
                  },
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
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: shadowBiru,
                    ),
                    child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                        color: wputih,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
