import 'package:restaurant/features/menu/presentation/widgets/menu_item_card.dart';
import 'package:restaurant/features/menu/presentation/widgets/tab_view_skeleton.dart';
import 'package:restaurant/shared/additions/export.dart';
import 'package:shimmer/shimmer.dart';

class MenuTabBarView extends StatelessWidget {
  const MenuTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: BlocBuilder<MenuTabCubit, MenuTabState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case MenuTabLoading:
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
            case MenuTabSuccess:
              return Padding(
                padding: AppPaddings.defaultPadding,
                child: (state as MenuTabSuccess).menuTabItems.isEmpty
                    ? const Center(child: Text("No data"))
                    : ShowUpAnimation(
                        delay: 200,
                        child: TabBarView(
                          children: List.generate(
                            state.menuTabItems.length,
                            (i) {
                              final tabItems = state.menuTabItems[i]
                                  [state.menuTabItems[i].keys.first]!;
                              return SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  children: List.generate(
                                    state
                                        .menuTabItems[i]
                                            [state.menuTabItems[i].keys.first]!
                                        .length,
                                    (i2) {
                                      return MenuItemCard(
                                        model: tabItems[i2],
                                        name: tabItems[i2].name,
                                        price: tabItems[i2].price,
                                        image: tabItems[i2].photoUrl,
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
              );
            case MenuTabError:
              return Center(
                  child: Text((state as MenuTabError).message.toString()));
          }
          return const SizedBox();
        },
      ),
    );
  }
}
