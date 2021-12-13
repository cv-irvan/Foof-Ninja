part of 'import_utils.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text, {required this.gradient, this.style, Key? key})
      : super(key: key);

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

List<BoxShadow> shadowBiru = [
  BoxShadow(
    color: wbiru,
    blurRadius: 50,
    offset: const Offset(12, 26),
  )
];

class InputText extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  const InputText({Key? key, this.hint, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: shadowBiru,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.poppins(
            color: whint.withOpacity(0.5),
          ),
          prefixIcon: Icon(
            icon,
            color: whijau2,
          ),
          filled: true,
          fillColor: wputih,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: wline,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
