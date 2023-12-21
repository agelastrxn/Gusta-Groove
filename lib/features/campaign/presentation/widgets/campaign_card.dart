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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 10),
        Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                color: AppColors.indicator,
                borderRadius: AppRadiuses.card,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.indicator,
                  borderRadius: AppRadiuses.card,
                ),
                child: Row(children: [
                  const Spacer(),
                  Text("$oldPrice AZN",
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough)),
                  const SizedBox(width: 10),
                  const Text("/"),
                  const SizedBox(width: 10),
                  Text("$newPrice AZN"),
                  const SizedBox(width: 10),
                ]),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        const Divider()
      ],
    );
  }
}
