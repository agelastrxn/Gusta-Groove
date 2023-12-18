import 'package:restaurant/shared/additions/export.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    var args = GO.args(context) as MenuItemModel;
    return Padding(
      padding: AppPaddings.authPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(args.name, style: AppTextStyle.heading)),
                Text("${args.price} AZN"),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Text(Strngs.description, style: AppTextStyle.heading),
            const SizedBox(height: 10),
            Text(args.description),
            const SizedBox(height: 10),
            Text(Strngs.ingredients, style: AppTextStyle.heading),
            const SizedBox(height: 10),
            Text(args.ingredients),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
