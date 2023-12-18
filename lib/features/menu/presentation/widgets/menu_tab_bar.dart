import 'package:restaurant/features/menu/presentation/widgets/tab_skeleton.dart';
import 'package:restaurant/shared/additions/export.dart';
import 'package:shimmer/shimmer.dart';

class MenuTabBar extends StatelessWidget {
  const MenuTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.transparent,
        child: BlocBuilder<MenuTabCubit, MenuTabState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case MenuTabLoading:
                return Padding(
                  padding: AppPaddings.defaultPadding,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, idx) => Shimmer.fromColors(
                        baseColor: AppColors.baseShimmer,
                        highlightColor: AppColors.highlightShimmer,
                        child: const TabSkeleton()),
                  ),
                );
              case MenuTabSuccess:
                return ShowUpAnimation(
                  delay: 100,
                  child: TabBar(
                    isScrollable: true,
                    physics: const BouncingScrollPhysics(),
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: AppColors.tileColor,
                      borderRadius: AppRadiuses.indicator,
                    ),
                    tabs: List.generate(
                      (state as MenuTabSuccess).menuTabItems.length,
                      (index) => Tab(
                        child: Padding(
                          padding: AppPaddings.tabPadding,
                          child: Text((state).menuTabItems[index].keys.first),
                        ),
                      ),
                    ),
                  ),
                );
              case MenuTabError:
                return Center(child: Text((state as MenuTabError).message.toString()));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
