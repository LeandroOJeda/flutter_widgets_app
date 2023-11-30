import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SlideInfo {

  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title, 
    this.caption, 
    this.imageUrl);
}


final slides = <SlideInfo>[
  SlideInfo('busca la comida', 'Commodo ad eiusmod do aliqua qui.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Quis et magna reprehenderit elit mollit elit nostrud nulla.', 'assets/images/2.png'),
  SlideInfo('disfruta la comida', 'Velit labore do labore amet irure.', 'assets/images/3.png')
];


class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  late final PageController pageViewControler = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageViewControler.addListener(() {

    final page = pageViewControler.page?? 0;

    if (!endReached && page >= (slides.length-1.5)){
      setState(() {
        endReached = true;
      });
    }
      
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageViewControler.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewControler,
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Silde(
                title: slideData.title, 
                caption: slideData.caption, 
                imageUrl: slideData.imageUrl
              )).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: ()=> context.pop(),)
          ),

          endReached? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInUp(
              delay: const Duration(seconds: 1),
              child: FilledButton(
                onPressed: ()=> context.pop(),
                child: const Text('Comenzar'),
              ),
            )
          ): const SizedBox()
        ],
      ),
    );
  }
}


class _Silde extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Silde({
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.titleSmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20,),
            Text(title, style:titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,)
          ],
        ),
      ),
    );
  }
}