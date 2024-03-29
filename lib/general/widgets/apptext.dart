import '../../exports.dart';


class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final double? letterSpacing;
  final double fontSize;

  AppText.text(
    String data, {
    Key? key,
    this.color = kTextColor,
    this.fontWeight = FontWeight.w600,
    TextAlign? textAlign = TextAlign.justify,
    int? maxLine,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 14,
    TextDecoration textDecoration = TextDecoration.none,
  }) : super(
          key: key,
          data,
          textAlign: textAlign,
          maxLines: maxLine,
          style: TextStyle(
                fontSize: fontSize,
                color: color,
                height: height,
                fontWeight: fontWeight,
                overflow: textOverflow,
                letterSpacing: letterSpacing,
              ),
        );
}
