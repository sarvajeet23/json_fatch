import 'package:flutter/material.dart';
// import 'package:healthbuxus/utils/dimens.dart';
// import 'package:healthbuxus/widgets/common/ripple_effect.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    this.tabs = const [],
    this.onTap,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.bgColor,
  });

  final List<Widget> tabs;
  final ValueChanged<int>? onTap;
  final MainAxisAlignment mainAxisAlignment;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context);
    return Container(
      //padding: Dimens.onlyRight10,
      decoration: BoxDecoration(
        color: bgColor,
        //border: Border(bottom: BorderSide(color: theme.dividerColor)),
      ),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          ...List.generate(
            tabs.length,
            (index) => InkWell(onTap: () => _handleTap(index), child: tabs[index]),
          )
        ],
      ),
    );
  }

  void _handleTap(int index) {
    assert(index >= 0 && index < tabs.length);
    onTap?.call(index);
  }
}
