import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BannerImageWidget extends StatelessWidget {
  //key
  const BannerImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 1440,
      padding: const EdgeInsets.all(8),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Image.asset(
              AppImage.image1BannerTeam,
              fit: BoxFit.cover,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Image.asset(
              AppImage.image2BannerTeam,
              fit: BoxFit.cover,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Image.asset(
              AppImage.image3BannerTeam,
              fit: BoxFit.cover,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Image.asset(
              AppImage.image4BannerTeam,
              fit: BoxFit.cover,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Image.asset(
              AppImage.image5BannerTeam,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
