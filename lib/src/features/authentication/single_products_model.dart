import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';



class single_products extends StatelessWidget {
  final String productImage;
  final String productName;
  final Function onTap;
  const single_products({
    required this.productImage,
    required this.productName,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 230,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage(tfirstproduct),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fresh Basil',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '50\$/50 Gram',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        Row(
                          children: [
                            Expanded(child: Container(
                              padding: EdgeInsets.only(left: 5),
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '50 Gram',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.yellow,),
                                  ),
                                ],
                              ),

                            ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.orange,
                                  ),

                                ],
                              ),

                            ),
                            ),
                          ],
                        ),
                      ],

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}