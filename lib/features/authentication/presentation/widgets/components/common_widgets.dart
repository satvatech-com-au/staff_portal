import '../exports/exports.dart';
import 'fonts_styles.dart';

textFields(
    {controller,
    hintText,
    obscureText,
    keyboardType,
    onChanged,
    prefixIcon,
    suffixTicon,
    focusNode}) {
  return TextField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: keyboardType,
    onChanged: onChanged,
    focusNode: focusNode,
    decoration: InputDecoration(
      hintText: hintText,
      suffixIcon: suffixTicon,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

class CustomTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final String Function(String) validator;
  const CustomTextFeild(
      {super.key,
      required this.controller,
      this.keyboardType,
      required this.hintText,
      this.prefixIcon, required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

// button({onPressed, text}) {
//   return SizedBox(
//     child: ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         primary: Colors.blue,
//         padding: EdgeInsets.symmetric(
//           vertical: 15.h,
//         ),
//       ),
//       child: Text(
//         text,
//         style: getRegularStyleSmall(),
//       ),
//     ),
//   );
// }

tap({onPress, text}) {
  return SizedBox(
    width: double.infinity,
    height: 40,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPress,
      child: Text(text, style: SmallSizeHeaderStyle(color: Colors.white)),
    ),
  );
}
