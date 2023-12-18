import 'package:restaurant/features/detail/presentation/screens/detail_body.dart';
import 'package:restaurant/shared/additions/export.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = GO.args(context);
    return Scaffold(
      backgroundColor: AppColors.primaryAmber,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: args.name,
                child: Image.network(args.photoUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: DetailBody()),
        ],
      ),
    );
  }
}
