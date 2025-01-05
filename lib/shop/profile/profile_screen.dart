import 'package:flutter/material.dart';
import 'package:mobile_app/shop/profile/category_model.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  var data = listCategoryIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'PROFILE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            builProfileCard(),
            buildCategoryIcon(list: data),
            settingCard(
                title: 'Address',
                subTitle: 'Setup your current location.',
                icon: Icons.map,
                colors: Colors.lightBlue),
            settingCard(),
            settingCard(),
            settingCard(),
          ],
        ),
      ),
    );
  }

  Widget builProfileCard() {
    return Container(
      margin: EdgeInsets.all(4),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(4),
            height: 80,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/14653174/pexels-photo-14653174.jpeg'),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mr.Dee Mason',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('Flutter Dev',
                          style: TextStyle(color: Colors.black45)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('data1'),
                    Text('data2'),
                    Text('data3'),
                    Text('data4')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('data1'),
                    Text('data2'),
                    Text('data3'),
                    Text('data4')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCategoryIcon({required List<CategoryModel> list}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < list.length; i++)
              categoryIcon(categoryModel: list[i])
          ],
        ),
      ),
    );
  }

  Widget categoryIcon({CategoryModel? categoryModel}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          height: 70,
          width: 70,
          decoration:
              BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              categoryModel!.icon ?? Icons.favorite,
              size: 30,
              color: categoryModel.color ?? Colors.black,
            ),
          ),
        ),
        Text(categoryModel.title ?? 'Icons')
      ],
    );
  }

  Widget settingCard(
      {String? title, String? subTitle, IconData? icon, Color? colors}) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: colors ?? Colors.black12, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  icon ?? Icons.favorite,
                  size: 30,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title ?? 'Setting',
                  style: TextStyle(fontSize: 18),
                ),
                Text(subTitle ?? 'permission setting',
                    style: TextStyle(color: Colors.black45)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
