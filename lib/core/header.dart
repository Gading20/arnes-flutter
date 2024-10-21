import 'package:final_project/core/colors.dart';
import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final String backgroundImagePath;

  const DefaultHeader({
    super.key,
    required this.imagePath,
    required this.backgroundImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        color: COLORS.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.contain,
          colorFilter: ColorFilter.mode(
            COLORS.primary.withOpacity(0.5),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 130,
          height: 130,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(170);
}
