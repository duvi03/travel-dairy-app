import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app/core/constant/z_constant_file.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const pattern = [
    QuiltedGridTile(2, 2),
    QuiltedGridTile(1, 1),
    QuiltedGridTile(1, 1),
    QuiltedGridTile(1, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          ImageConstant.userProfile2,
                          fit: BoxFit.cover,
                          height: 80.sp,
                          width: 80.sp,
                        ),
                      ),
                      SizedBox(
                        width: 16.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dhruvi Patel",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: FontFamily.primary,
                            ),
                          ),
                          Text(
                            "dhruvi@gmail.com",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.primary,
                            ),
                          ),
                          Text(
                            "+91 9898767699",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w800,
                              fontFamily: FontFamily.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 12.sp),
                    child: Column(
                      children: [
                        Text(
                          "Post",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamily.primary,
                          ),
                        ),
                        Text(
                          "300",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: FontFamily.primary,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 12.sp),
              Text(
                "Explore",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.primary,
                ),
              ),
              Expanded(
                child: GridView.custom(
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: pattern,
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final tile = pattern[index % pattern.length];
                      return ImageTile(
                        index: index,
                        width: tile.crossAxisCount * 100,
                        height: tile.mainAxisCount * 100,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
  }) : super(key: key);

  final int index;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://picsum.photos/$width/$height?random=$index',
      width: width.toDouble(),
      height: height.toDouble(),
      fit: BoxFit.cover,
    );
  }
}
