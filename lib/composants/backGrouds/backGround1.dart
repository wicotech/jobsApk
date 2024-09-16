import 'package:flutter/material.dart';

class Background1 extends StatelessWidget {
  const Background1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              Opacity(
                opacity: 0.07,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(120),
                                      topLeft: Radius.circular(190),
                                      bottomRight: Radius.circular(267),
                                      bottomLeft: Radius.circular(54)
                                  )
                              ),
                            ),
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(130),
                                      topLeft: Radius.circular(267),
                                      bottomRight: Radius.circular(180),
                                      bottomLeft: Radius.circular(120)
                                  )
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(//topRight: Radius.circular(130),
                                      topLeft: Radius.circular(267),
                                      bottomRight: Radius.circular(180),
                                      bottomLeft: Radius.circular(120)
                                  )
                              ),
                            ),
                            Container(
                              width: 220,
                              height: 320,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(120),
                                      topLeft: Radius.circular(190),
                                      bottomRight: Radius.circular(267),
                                      bottomLeft: Radius.circular(54)
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
