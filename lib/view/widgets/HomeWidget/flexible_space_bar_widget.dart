import 'package:flutter/material.dart';

class FlexibleSpaceBarWidget extends StatelessWidget {
  const FlexibleSpaceBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/egypt.png',
            fit: BoxFit.fill,
            height: 300,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (rect) =>
                  const LinearGradient(colors: [
                    Colors.yellow,
                    Colors.green,
                  ]).createShader(rect),
              child: const Text(
                'اكتشف منزلك الجديد بسهولة',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            alignment: const Alignment(0.0, -0.6),
          ),
          Align(
            alignment: const Alignment(0.0, 0.6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'للبيع',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cairo',
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down_sharp)
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        //TODO:OPEN SEARCH
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Text('ابحث عن',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Cairo',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(Icons.search),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
