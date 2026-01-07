import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/views/home/widgets/story_widget.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> items = [
  {
    "name": "Emilia",
    "icon": Icons.videocam_sharp,
    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
  {
    "name": "Richard",
    "icon": Icons.flight,

    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
  {
    "name": "Jasmine",
    "icon": Icons.favorite,

    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
  {
    "name": "Lucas",
    "icon": Icons.linked_camera,

    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
  {
    "name": "Hendri",
    "icon": Icons.light_mode,

    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
  {
    "name": "Emilia",
    "icon": Icons.comment,

    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
  {
    "name": "Richard",
    "icon": Icons.storage,

    "url":
        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
  },
];

List<Color> colors = [
  Color(0xff4DC4E7),
  Color(0xffFE9063),
  Color(0xff7D4C9B),
  Color(0xffFF7067),
];

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.responsiveHeight(mobile: 92),
      margin: EdgeInsets.only(top: 20, bottom: 32, left: 40),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return StoryWidget(
            url: items[index]["url"],
            name: items[index]["name"],
            dashed: index == 2,
            icon: items[index]["icon"],
            colorIcon: colors[index % colors.length],
          );
        },
      ),
    );
  }
}
