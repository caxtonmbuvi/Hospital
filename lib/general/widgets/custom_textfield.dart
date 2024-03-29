import '../../exports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final AppText? label;
  final VoidCallback? onTap;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? color;
  final double borderRadius;
  final bool? isLogin;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool readOnly;
  final bool isPassword;
  final String? Function(String?)? validator;
  final String fieldId;
  // bool isObscure;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.label,
      this.onTap,
      this.color,
      this.suffix,
      this.borderRadius = 12,
      this.suffixIcon,
      this.prefixIcon,
      this.isLogin = false,
      this.hintText,
      this.labelText,
      this.keyboardType,
      this.isPassword = false,
      this.validator,
      this.readOnly = false,
      required this.fieldId});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      readOnly: readOnly,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onChanged: (value) {
        
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: FontFamily.lato),
        filled: true,
        fillColor: Colors.white,
        label: label,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none),
        contentPadding:const EdgeInsets.fromLTRB(10, 10, 10, 0),
        suffix: suffix,
        prefixIcon: prefixIcon,
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  Icons.visibility_off,
                  color: color,
                ),
                onPressed: (){},
              )
            : suffixIcon,
      ),
      style: TextStyle(
          fontWeight: FontWeight.normal, color: color, fontSize: 14),
    );
  }

}