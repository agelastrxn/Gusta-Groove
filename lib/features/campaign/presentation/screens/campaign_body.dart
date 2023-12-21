import 'package:restaurant/features/menu/presentation/widgets/tab_view_skeleton.dart';
import 'package:restaurant/shared/additions/export.dart';
import 'package:shimmer/shimmer.dart';

class CampaignBody extends StatelessWidget {
  const CampaignBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CampaignCubit, CampaignState>(
      builder: (context, state) {
        switch (state.runtimeType) {
          case CampaignLoading:
            return Padding(
              padding: AppPaddings.defaultPadding,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, idx) => Shimmer.fromColors(
                    baseColor: AppColors.baseShimmer,
                    highlightColor: AppColors.highlightShimmer,
                    child: const TabViewSkeleton()),
              ),
            );
          case CampaignError:
            return Padding(
              padding: AppPaddings.defaultPadding,
              child: Center(child: Text((state as CampaignError).message)),
            );
          case CampaignSuccess:
            return Container(
              height: double.infinity,
              padding: AppPaddings.defaultPadding,
              child: ((state as CampaignSuccess).campaigns.isEmpty)
                  ? const Center(child: Text(Strngs.noCampaigns))
                  : SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: List.generate(
                          (state).campaigns.length,
                          (index) => ShowUpAnimation(
                            delay: (index + 1) * 100,
                            child: CampaignCard(
                              text: state.campaigns[index].name,
                              image: state.campaigns[index].photoUrl,
                              newPrice: state.campaigns[index].newPrice,
                              oldPrice: state.campaigns[index].oldPrice,
                            ),
                          ),
                        ),
                      ),
                    ),
            );
        }
        return const Center(child: Text(Strngs.error));
      },
    );
  }
}
