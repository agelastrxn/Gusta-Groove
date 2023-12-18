import 'package:restaurant/shared/additions/export.dart';


class FormTextField extends StatelessWidget {
  final bool? isObsecure;
  final String label;
  final Widget? icon;
  final String? Function(String?)? validator;

  const FormTextField({
    super.key,
    required this.label,
    this.validator,
    this.isObsecure = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure!,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: icon,
        labelText: label,
      ),
    );
  }
}
