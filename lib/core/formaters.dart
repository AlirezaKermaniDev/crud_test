import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter bankAccountNumberFormatter() {
  return MaskTextInputFormatter(
      mask: '#### - #### - #### - ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
}

MaskTextInputFormatter mobileNumberFormatter() {
  return MaskTextInputFormatter(
      mask: '+## ###############',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
}
