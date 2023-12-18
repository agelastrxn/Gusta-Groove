class FormEntity {
  final String label;
  final String? errMsg;
  String? value;

  FormEntity({
    required this.label,
    this.errMsg,
    this.value,
  });
}
