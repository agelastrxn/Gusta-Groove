import 'package:restaurant/shared/additions/export.dart';

class CampaignCard extends StatelessWidget {
  final String text;
  final String image;
  final String newPrice;
  final String oldPrice;
  const CampaignCard({
    super.key,
    required this.text,
    required this.image,
    required this.newPrice,
    required this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Flexible(child: Text(text, overflow: TextOverflow.ellipsis)),
          const Spacer(),
          Text("$oldPrice AZN", style: const TextStyle(decoration: TextDecoration.lineThrough)),
          const SizedBox(width: 10),
          const Text("/"),
          const SizedBox(width: 10),
          Text("$newPrice AZN"),
        ]),
        const SizedBox(height: 10),
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            color: AppColors.indicator,
            borderRadius: AppRadiuses.defaultRadius,
          ),
        ),
        const SizedBox(height: 10),
        const Divider()
      ],
    );
  }
}
