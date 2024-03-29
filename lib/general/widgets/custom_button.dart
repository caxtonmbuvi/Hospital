import '../../exports.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textColor;
  final double radius;
  final bool isIconButton;
  final bool isBorder;
  final Widget? widget;
  final double fontSize;
  final double textSize;
  final FontWeight fontWeight;

  const CustomButton(
      {Key? key,
        required this.text,
        this.onTap,
        this.color,
        this.textColor,
        this.radius = 12,
        this.isIconButton = false,
        this.isBorder = false,
        this.widget,
        this.fontSize = 18,
        this.textSize = 14,
        this.fontWeight = FontWeight.bold
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: isBorder
                  ? BorderSide(color: Colors.white60)
                  : BorderSide.none,
            ),
          ),
          backgroundColor:
          MaterialStateProperty.all(color ?? Colors.blueGrey),
          elevation: MaterialStateProperty.all(0.0),
        ),
        child: isIconButton
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget!,
            SizedBox(
              width: 20
            ),
            AppText.text(
              text,
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ],
        )
            : Center(
            child: AppText.text(
              text,
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              textAlign: TextAlign.center,
            ),
            ),
        );
    }
}