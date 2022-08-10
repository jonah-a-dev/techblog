import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/component/my_component.dart';
import 'package:tec/gen/assets.gen.dart';

class Single extends StatelessWidget {
  const Single({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: "",
              imageBuilder: ((context, imageProvider) => Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover)),
                  )),
              placeholder: ((context, url) => const loading()),
              errorWidget: ((context, url, error) =>
                  Image.asset(Assets.images.singlePlaceHolder.path)),
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter,
                          colors: GradiantColors.singleAppbarGradiant)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.bookmark_border_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ))
          ],
        )
      ]),
    ));
  }
}