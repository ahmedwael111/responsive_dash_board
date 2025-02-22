import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/user_info_listTile.dart';

class LatestTransictionListView extends StatelessWidget {
  const LatestTransictionListView({super.key});
  static const List<UserInfoModel> itemlest = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarAdmin,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: itemlest.map(
          (e) {
            return IntrinsicWidth(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: UserInfoListtile(
                  userInfoModel: e,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
//     return SizedBox(
//       height: 65,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: itemlest.length,
//         itemBuilder: (context, index) {
//           return IntrinsicWidth(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 12),
//               child: UserInfoListtile(
//                 userInfoModel: itemlest[index],
//               ),
//             ),
//           );
//         },
//       ),
//     );
  }
}
