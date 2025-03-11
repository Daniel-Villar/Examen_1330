import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Esta línea quita la etiqueta "Debug"
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewInfiniteScroll(),
    );
  }
}

class ListViewInfiniteScroll extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "name": "M. Criator Names",
      "description": "Authors, Stock",
      "imageUrl":
          "https://res.cloudinary.com/pozters/image/upload/w_700/v1536001228/prod_uploads/z43n56l8K9lp7Kd2qwE7X" // URL de la imagen
    },
    {
      "name": "Macintoshua, Debon Mascon",
      "description": "Friends, Restaurant",
      "imageUrl":
          "https://e7.pngegg.com/pngimages/415/765/png-clipart-user-profile-linkedin-netwerk-money-order-fulfillment-round-face-saving-expert.png" // URL de la imagen
    },
    {
      "name": "Mr. The Waters",
      "description": "Friendine, Entertainment",
      "imageUrl":
          "https://e7.pngegg.com/pngimages/283/148/png-clipart-peak6-investments-linkedin-accounting-analyst-finance-professional-firemen-miscellaneous-purple-thumbnail.png" // URL de la imagen
    },
    {
      "name": "Mr. Bradley Brooks",
      "description": "Mortimer Family, Australia",
      "imageUrl":
          "https://i.pinimg.com/736x/3e/3f/c8/3e3fc8e1a1058c98e91e80b31d1007ce.jpg" // URL de la imagen
    },
    {
      "name": "Mr. Dick George",
      "description": "Leynells, United",
      "imageUrl":
          "https://i.pinimg.com/236x/0c/ae/8e/0cae8e859773e9703a8dc4c92d7eeb3f.jpg" // URL de la imagen
    },
    {
      "name": "Mr. Adam Obama",
      "description": "Earntom, Turkey",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcEYVfRQKsKioLIIoRJ3wi7es3qKM3HsPZ7wF3BBPJ_FoYdaAVjcrzpVg-2b7fq88u2cE&usqp=CAU" // URL de la imagen
    },
    {
      "name": "Mike Jones, Uaf",
      "description": "Jewelry, France, USA",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqEaeJWzQZmnBmV21sqjn2lbt6ClS95yKq67nrNjXiuGMjKIh06k3vfPFagmhYTg57Emk&usqp=CAU" // URL de la imagen
    },
    {
      "name": "Mr. Mustafa Aureus",
      "description": "Soul Valley, Norway",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwVRR689h-rJJsTMJbY7w4zLP30xxYflNRy6HM164ZjtcJHhgL8su7kCJgBLqdJOx_2D4&usqp=CAU" // URL de la imagen
    },
    {
      "name": "Mr. Linda Turner",
      "description": "",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTeeaCTTyrL9HZdW2bmrlr-edN1fFhNxjLyfmyMUdoP34H8HPocRASP6rWVVo_wdwnebU&usqp=CAU" // URL de la imagen
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daniel Alexis Villar Flores 22308051281330',
            style: TextStyle(color: Color(0xffffffff))),
        backgroundColor: Color(0xffec4f28), // Color del AppBar
      ),
      body: Container(
        color: Colors.grey[200], // Color de fondo de la pantalla
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor:
                      Colors.deepPurple[100], // Color de fondo del CircleAvatar
                  backgroundImage: NetworkImage(
                      items[index]["imageUrl"]!), // Cargar imagen desde la red
                ),
                title: Text(items[index]["name"]!,
                    style: TextStyle(color: Color(0xff000000))),
                subtitle: Text(items[index]["description"]!,
                    style: TextStyle(color: Colors.grey[600])),
              ),
            );
          },
        ),
      ),
    );
  }
}
