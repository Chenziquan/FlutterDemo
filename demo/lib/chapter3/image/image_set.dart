import 'package:flutter/material.dart';

class ImageSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/ic_launcher.png'),
            width: 100.0,
          ),
          Image.asset(
            'images/ic_launcher.png',
            width: 100.0,
          ),
          Image(
            image: NetworkImage(
                'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2474992498,2867548152&fm=26&gp=0.jpg'),
            width: 100.0,
          ),
          Image(
            image: NetworkImage(
                'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
            width: 100.0,
          ),
          Image(
            image: AssetImage('images/ic_launcher.png'),
            width: 100.0,
            color: Colors.blue,
            colorBlendMode: BlendMode.difference,
          ),
          Image(
            image: AssetImage('images/ic_launcher.png'),
            width: 100.0,
            height: 200.0,
            repeat: ImageRepeat.repeatY,
          ),
        ],
      ),
    );
  }
}
