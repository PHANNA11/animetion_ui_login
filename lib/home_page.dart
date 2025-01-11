import 'package:flutter/material.dart';
import 'package:mobile_app/shop/detail_image.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List listImages = [
    'https://overlay.imageonline.co/overlay-image.jpg',
    'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
    'https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0=',
    'https://images.pexels.com/photos/3998365/pexels-photo-3998365.png',
    'https://thumbs.dreamstime.com/b/two-ladybugs-orange-spring-flower-flight-insect-artistic-macro-image-concept-spring-summer-two-ladybugs-orange-125140826.jpg',
  ];

  bool isShowGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
          actions: [
            Icon(Icons.notifications),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.chat_bubble),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isShowGrid = !isShowGrid;
                      });
                    },
                    icon: Icon(Icons.menu))
              ],
            ),
            Expanded(
                child:
                    isShowGrid ? buildGridViewStyle() : buildListViewStyle()),
          ],
        )
        // Expanded(child: buildListViewStyle()),

        );
  }

  Widget buildGridViewStyle() {
    return GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      itemCount: listImages.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 250,
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 9 / 12),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailImageScreen(
                    image: listImages[index],
                  ),
                ));
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      listImages[index].toString(),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://tse1.mm.bing.net/th/id/OET.7252da000e8341b2ba1fb61c275c1f30?w=594&h=594&c=7&rs=1&o=5&pid=1.9'))),
                  ))
            ],
          ),
        );
      },
    );
  }

  Widget buildListViewStyle() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < listImages.length; i++)
            Container(
              margin: EdgeInsets.all(4),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      ((i + 1) % 2) == 0 ? Radius.circular(150) : Radius.zero,
                  bottomRight:
                      ((i + 1) % 2) != 0 ? Radius.circular(150) : Radius.zero,
                  topRight:
                      ((i + 1) % 2) != 0 ? Radius.circular(150) : Radius.zero,
                  topLeft:
                      ((i + 1) % 2) == 0 ? Radius.circular(150) : Radius.zero,
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    listImages[i].toString(),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
