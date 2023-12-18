import 'package:restaurant/shared/additions/export.dart';

class CustomTextField extends StatelessWidget {
  final int? maxLines;
  final String label;
  final String initialValue;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    required this.label,
    this.maxLines = 1,
    this.initialValue = '',
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxLines,
      validator: validator,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: label,
        border: OutlineInputBorder(borderRadius: AppRadiuses.defaultRadius),
      ),
    );
  }
}
