import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foodmenu extends StatefulWidget {
  const foodmenu({super.key});

  @override
  State<foodmenu> createState() => _foodmenuState();
}

class _foodmenuState extends State<foodmenu> {
  bool ison=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              color: Colors.blueAccent,
              child: Row(
                children: [
                  Icon(Icons.navigate_before,size: 25,color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("Everyday Value Offers",style: TextStyle(color: Colors.white,fontSize: 25),),
        
                ],
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Regular Pizzas",style: TextStyle(color: Colors.white),),
                      Text("Starting @ Rs.99",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Switch(value:ison,
                        activeColor: Colors.green,
                        onChanged: (value){
                      ison=value;
                    }),

                  Column(
                    children: [
                      Text("Medium Pizzas",style: TextStyle(color: Colors.white),),
                      Text("Starting @ Rs.199",style: TextStyle(color: Colors.white),),
                    ],
                  ),
        
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('23 items',style: TextStyle(color: Colors.grey),),
                  Row(
                    children: [
                      Icon(Icons.filter_list_alt,color: Colors.grey,),
                      Text('Filter/Sort',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/20/d2/2e/20d22e9fd90b6ec066e84ac52ac747eb.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                 Column(
                                   children: [
                                     Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              height:30,
                                              width: 130,

                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: Colors.white,
                                              ),


                                            ),
                                            Row(
                                              children: [
                                                Text("Customize",style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 17,fontWeight: FontWeight.bold),),
                                                Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                              ],
                                            ),

                                          ]
                                      ),
                                     SizedBox(height: 6,),
                                   ],
                                 ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text('Pepper Barbecue Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text('Pepper Barbecue Chicken for that extra zing',style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Size',style: TextStyle(color: Colors.grey),),
                                Text('Medium',style: TextStyle(color: Colors.black),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Crust',style: TextStyle(color: Colors.grey),),
                                Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                              ],
                            ),
                            Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height:30,
                                    width: 110,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: CupertinoColors.activeGreen,
                                    ),


                                  ),
                                  Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                                ]
                            ),
                          ],
                        ),
                      )
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     SizedBox(height: 10,),
                      //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                      //     SizedBox(height: 30),
                      //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                      //
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     SizedBox(height: 10,),
                      //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                      //     SizedBox(height: 30,),
                      //     ElevatedButton(
                      //       onPressed: (){},
                      //       child:Text("Add",style: TextStyle(color: Colors.white),),
                      //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                      //   ],
                      // )
                    ],
                  ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/e4/c7/0a/e4c70a70d42588df1e33146f414c4d15.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color:Colors.black.withOpacity(0.4),fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Pepperoni pizza',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Pepperoni pizza for that extra zing',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/f8/5e/a9/f85ea9f938d703e4c8b24b5d2f493a13.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('BBQ Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('BBQ Chicken for that extra zing',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://b.zmtcdn.com/data/pictures/chains/1/47211/346447036c0c9839ee54aa34fcab3fa7.jpg?output-format=webp&fit=around|300:273&crop=300:273;*,*"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color:Colors.black.withOpacity(0.4),fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Hawaiian pizza',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Hawaiian pizza',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://www.alucare.fr/wp-content/uploads/2023/05/Image-pizza.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Margherita pizza',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Margherita pizza for that extra zing',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/e4/c7/0a/e4c70a70d42588df1e33146f414c4d15.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Pepperoni pizza',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Pepperoni pizza for that extra zing',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/f8/5e/a9/f85ea9f938d703e4c8b24b5d2f493a13.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('BBQ Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('BBQ Chicken for that extra zing',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://b.zmtcdn.com/data/pictures/chains/1/47211/346447036c0c9839ee54aa34fcab3fa7.jpg?output-format=webp&fit=around|300:273&crop=300:273;*,*"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Hawaiian pizza',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Hawaiian pizza',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: Container(
                height: 265,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          Container(
                            height: 150,
                            width:double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                                image: DecorationImage(image: NetworkImage("https://www.alucare.fr/wp-content/uploads/2023/05/Image-pizza.jpg"),fit: BoxFit.cover)
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.white,size: 17,),
                                    Text('Rs 134',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height:30,
                                            width: 130,

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.white,
                                            ),


                                          ),
                                          Row(
                                            children: [
                                              Text("Customize",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
                                              Icon(Icons.navigate_next,color: Colors.blueAccent,)
                                            ],
                                          ),

                                        ]
                                    ),
                                    SizedBox(height: 6,),
                                  ],
                                ),
                                // ElevatedButton.icon(onPressed: (){},
                                //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                //     icon: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 15,),
                                //     label: Text("Customize",style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          )
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Margherita pizza',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Margherita pizza for that extra zing',style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Size',style: TextStyle(color: Colors.grey),),
                              Text('Medium',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Crust',style: TextStyle(color: Colors.grey),),
                              Text('New Hand Toasted',style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height:30,
                                  width: 110,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: CupertinoColors.activeGreen,
                                  ),


                                ),
                                Text("Select",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

                              ]
                          ),
                        ],
                      ),
                    )
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Text("Brown cake",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Text("mango,cream,nuts",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    //     SizedBox(height: 30),
                    //     Text("Rs 150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,)
                    //
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     SizedBox(height: 10,),
                    //     Icon(Icons.favorite_border,color: Colors.red,size: 25,),
                    //     SizedBox(height: 30,),
                    //     ElevatedButton(
                    //       onPressed: (){},
                    //       child:Text("Add",style: TextStyle(color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green),)
                    //   ],
                    // )
                  ],
                ),

              ),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
