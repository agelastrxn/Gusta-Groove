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
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text(name, overflow: TextOverflow.ellipsis)),
              Text("$price AZN")
            ],
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => GO.to(RouteKeys.detailPage, arguments: model),
            child: Hero(
              tag: name,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
                  color: AppColors.indicator,
                  borderRadius: AppRadiuses.defaultRadius,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider()
        ],
      ),
    );
  }
}
