
import '../exports/exports.dart';
import '../../../../../config/theme/colors.dart';

TextStyle getTextStlye(fontsize, fontweight, color, lineheight,
    {TextDecoration? textDecoration}) {
  return GoogleFonts.poppins(
      fontSize: fontsize,
      fontWeight: fontweight,
      color: color,
      height: lineheight,
      decoration: textDecoration ?? TextDecoration.none);
}

TextStyle getRegularStyleSmaller({
  color = AppColor.black,
  lineHeight,x446
}) {
  return getTextStlye(7.sp, FontWeight.w400, color, lineHeight);
}

TextStyle getRegularStyleSmall({
  color = AppColor.black,
  lineHeight,
}) {
  return getTextStlye(13.sp, FontWeight.w600, color, lineHeight);
}

TextStyle getRegularStyle({
  color = AppColor.black,
  lineHeight,
}) {
  return getTextStlye(13.sp, FontWeight.w400, color, lineHeight);
}

TextStyle getMediumSmaller({
  color = AppColor.black,
  lineHeight,
}) {
  return getTextStlye(12.sp, FontWeight.w400, color, lineHeight);
}

TextStyle getRegularSmall({
  color = AppColor.black,
  lineHeight,
}) {
  return getTextStlye(16.sp, FontWeight.w400, color, lineHeight);
}

TextStyle getRegularSmaller({
  color = AppColor.black,
  lineHeight,
}) {
  return getTextStlye(14.sp, FontWeight.w400, color, lineHeight);
}

TextStyle getMedium({
  color = AppColor.black,
  lineHeight,  fontsize,  height,
}) {
  return getTextStlye(16.sp, FontWeight.w400, color, lineHeight);
}

TextStyle getRegularSmallStrike(
    {color = AppColor.black,
      lineHeight,
      fontsize,
      TextDecoration? textDecoration}) {
  return getTextStlye(15.sp, FontWeight.w400, color, lineHeight,
      textDecoration: textDecoration);
}

TextStyle BoldHeaderstextStyle({color = AppColor.black}) {
  return TextStyle(
      fontFamily: 'Nexa',
      fontWeight: FontWeight.w700,
      fontSize: 30.sp,
      color: color);
}

TextStyle MediumHeaderStyle({color = AppColor.black}) {
  return TextStyle(
      fontFamily: 'Nexa',
      fontWeight: FontWeight.w700,
      fontSize: 20.sp,
      color: AppColor.black);
}

TextStyle RegularHeaderStyle() {
  return TextStyle(
    fontFamily: 'Nexa',
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
    color: Colors.white,
  );
}

TextStyle SmallSizeHeaderStyle({color = AppColor.black}) {
  return TextStyle(
      fontFamily: 'Nexa',
      fontWeight: FontWeight.w700,
      fontSize: 20.sp,
      color: color);
}

TextStyle otherStyle({color, fontsize, lineHeight}) {
  return TextStyle(
    fontFamily: 'Nexa',
    fontWeight: FontWeight.w700,
    fontSize: fontsize,
    color: color ?? AppColor.black,
  );
}

TextStyle generalStyle({
  color,
  fontsize,
  fontweight,
}) {
  return TextStyle(
      fontFamily: 'Nexa',
      fontWeight: fontweight,
      fontSize: fontsize,
      color: color);
}