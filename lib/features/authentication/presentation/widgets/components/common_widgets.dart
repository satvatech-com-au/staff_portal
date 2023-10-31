import '../exports/exports.dart';
import 'fonts_styles.dart';

textFields(
    {controller,
    hintText,
    obscureText,
    keyboardType,
    onChanged,
    prefixIcon,
    focusNode}) {
  return TextField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: keyboardType,
    onChanged: onChanged,
    focusNode: focusNode,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
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
