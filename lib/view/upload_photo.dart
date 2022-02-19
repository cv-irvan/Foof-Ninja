part of 'import_view.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  _UploadPhotoState createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  List<String> img = [
    "assets/ic_gallery.png",
    "assets/ic_camera.png",
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
            width: Get.width,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
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
                  'Upload Your Photo \nProfile',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'This data will be displayed in your account profile for scurity',
                  style: GoogleFonts.poppins(
                    color: whint,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: img.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 150,
                      padding: const EdgeInsets.all(20),
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
                      borderRadius: BorderRadius.circular(15),
                      gradient: gHijau,
                      boxShadow: shadowBiru,
                    ),
                    child: Text('Next',
                        style: GoogleFonts.poppins(
                          color: wputih,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
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
