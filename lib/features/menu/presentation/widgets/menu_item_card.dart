import 'package:restaurant/shared/additions/export.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItemModel model;
  final String name;
  final String price;
  final String image;
  const MenuItemCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => GO.to(RouteKeys.detailPage, arguments: model),
          child: Hero(
            tag: name,
            child: Stack(children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  color: AppColors.indicator,
                  borderRadius: AppRadiuses.defaultRadius,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Text(Strngs.price), Text("$price AZN")],
                  ),
                ),
              ),
            ]),
          ),
        ),
        const SizedBox(height: 10),
        const Divider()
      ],
    );
  }
}
