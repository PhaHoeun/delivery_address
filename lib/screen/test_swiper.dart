import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';

class TestingSwiper extends StatefulWidget {
  const TestingSwiper({Key? key}) : super(key: key);

  @override
  _TestingSwiperState createState() => _TestingSwiperState();
}

class _TestingSwiperState extends State<TestingSwiper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "https://images.all-free-download.com/images/graphiclarge/blue_abstract_background_310971.jpg",
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: 3,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );

    //       Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Phone'),
    //     ),
    //     body: Stack(
    //       children: <Widget>[
    //         ConstrainedBox(
    //           constraints: const BoxConstraints.expand(),
    //           child: Image.asset(
    //             'https://media.istockphoto.com/photos/fire-sparks-background-picture-id1151621528?k=20&m=1151621528&s=612x612&w=0&h=FSmhvN7XD6EbkZiG7bGXAcpBUHOXy7QI_kWuJtSk_sM=',
    //             fit: BoxFit.fill,
    //           ),
    //         ),
    //         Swiper.children(
    //           autoplay: false,
    //           pagination: const SwiperPagination(
    //               margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
    //               builder: DotSwiperPaginationBuilder(
    //                   color: Colors.white30,
    //                   activeColor: Colors.white,
    //                   size: 20.0,
    //                   activeSize: 20.0)),
    //           children: <Widget>[
    //             Image.asset(
    //               'https://images.all-free-download.com/images/graphiclarge/blue_abstract_background_310971.jpg',
    //               fit: BoxFit.contain,
    //             ),
    //             Image.asset(
    //               'https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg',
    //               fit: BoxFit.contain,
    //             ),
    //             Image.asset('https://cdn.wallpapersafari.com/55/73/ghY4rc.jpg',
    //                 fit: BoxFit.contain)
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
