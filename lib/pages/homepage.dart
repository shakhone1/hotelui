import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                 //   end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    const Text(
                      "Best Hotels Ever",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40,),
                        padding: const EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                              border: InputBorder.none,
                          hintText: "search for hotels...",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18,),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business hotel",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                    scrollDirection: Axis.horizontal ,

                      children: [
                        makeItem("assets/images/ic_header.jpg" , 'Hotel 2'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel5.jpg" , 'Hotel 1'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel3.jpg" , 'Hotel 3'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel2.jpg" , 'Hotel 4'),            const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel1.jpg" , 'Hotel 5'),
                        const Icon(
                          Icons.favorite,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Airport Hotels",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal ,

                      children: [
                        makeItem("assets/images/ic_hotel5.jpg" , 'Hotel 1'),
                        const Icon(

                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_header.jpg" , 'Hotel 2'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel3.jpg" , 'Hotel 3'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel2.jpg" , 'Hotel 4'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel1.jpg" , 'Hotel 5'),
                        const Icon(
                          Icons.favorite,
                        ),
                      ],
                    ),
                  ),

                  Text(
                    "Resort Hotels",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),

                  Container(

                    height: 200,
                    child: ListView(


                      scrollDirection: Axis.horizontal ,

                      children: [

                        makeItem("assets/images/ic_hotel3.jpg" , 'Hotel 3'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel5.jpg" , 'Hotel 1'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_header.jpg" , 'Hotel 2'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel2.jpg" , 'Hotel 4'),
                        const Icon(
                          Icons.favorite,
                        ),
                        makeItem("assets/images/ic_hotel1.jpg" , 'Hotel 5'),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget makeItem(image, title){
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),

        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          ),
        ),
      ),
    );
  }


}
