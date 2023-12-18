import 'package:restaurant/features/branches/presentation/widgets/branch_card.dart';
import 'package:restaurant/shared/additions/show_up_animation.dart';
import 'package:flutter/material.dart';

class BranchesBody extends StatelessWidget {
  const BranchesBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> branches = [
      '28 Mall',
      'Nizami',
      'Ganja',
      'Buzovna',
    ];
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          4,
          (index) => ShowUpAnimation(
            delay: index * 100,
            child: BranchCard(
              text: branches[index],
            ),
          ),
        ),
      ),
    );
  }
}
