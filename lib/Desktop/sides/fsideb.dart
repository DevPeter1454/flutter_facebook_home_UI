// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ListB extends StatefulWidget {
  final width;
  const ListB({Key? key, required this.width}) : super(key: key);

  @override
  State<ListB> createState() => _ListBState();
}

class _ListBState extends State<ListB> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var width = widget.width;
    return SingleChildScrollView(
      controller: controller,
      child: ListView(
        shrinkWrap: true,
        children: [
          // SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Sponsored',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                      child: Image.network(
                          'https://media.istockphoto.com/photos/cropped-shot-of-two-young-businessmen-working-together-on-a-laptop-in-picture-id1322205587?b=1&k=20&m=1322205587&s=170667a&w=0&h=hMJTn4c5QT5wPjoDjQt9YWQXCkJr5dZX8zoiaAVhiME=',
                          fit: BoxFit.fitHeight,
                          width: 100,
                          height: 100))),
              Text('Sponsored',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: width > 500 && width <= 700
                          ? 8
                          : width > 700 && width > 900
                              ? 14
                              : 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                      child: Image.network(
                          'https://images.unsplash.com/photo-1550745165-9bc0b252726f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                          fit: BoxFit.fitHeight,
                          width: 100,
                          height: 100))),
              Text('Sponsored',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: width > 500 && width <= 700
                          ? 8
                          : width > 700 && width > 900
                              ? 12
                              : 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(
            color: Color(0XFFCED0D4),
            indent: 20,
            endIndent: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                child: Text('Friend requests',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                child: Text('See all',
                    style: TextStyle(
                      color: const Color(0XFF216FDB),
                      fontSize: width > 500 && width <= 700
                          ? 8
                          : width > 700 && width > 900
                              ? 12
                              : 20,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1553272725-086100aecf5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                ),
                title: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Scott McCall',
                      style: TextStyle(
                        color: Color(0XFF050505),
                      )),
                ),
                subtitle: ListView(
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Stack(clipBehavior: Clip.none, children: const [
                        Positioned(
                            child: CircleAvatar(
                          radius: 8,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1612214070475-1e73f478188c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                        )),
                        Positioned(
                            left: 10,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1553272725-086100aecf5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                            ))
                      ]),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                        child: Text('15 Mutual Friends',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: width > 500 && width <= 700
                                  ? 8
                                  : width > 700 && width > 900
                                      ? 10
                                      : 12,
                              color: const Color(0XFF86878B),
                            )),
                      )
                    ])
                  ],
                )),
          ),
          Contacts(),
        ],
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  Contacts({Key? key}) : super(key: key);

  final images = [
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1612214070475-1e73f478188c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1615572359976-1fe39507ed7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/emotional-african-american-man-with-african-hairstyle-picture-id1319662868?b=1&k=20&m=1319662868&s=170667a&w=0&h=Z-69EjXWD92ewnRv3NOSKcADIO5ojaOvW7bdUPiFimM=',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1612214070475-1e73f478188c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1615572359976-1fe39507ed7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/emotional-african-american-man-with-african-hairstyle-picture-id1319662868?b=1&k=20&m=1319662868&s=170667a&w=0&h=Z-69EjXWD92ewnRv3NOSKcADIO5ojaOvW7bdUPiFimM=',
  ];
  final names = [
    'Tyler Posey',
    'Noah Grayson',
    'Kaiden Grant',
    'Rip Hunter',
    'Jaxon Williams',
    'Riley Griffin',
    'Sean Baker',
    'Jordan King',
    'Charles Specter',
    'Harvey Litt',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          child: CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(images[index]),
                      )),
                      const Positioned(
                          right: 2,
                          bottom: -2,
                          child: CircleAvatar(
                              radius: 5, backgroundColor: Color(0XFF31A24C))),
                    ],
                  ),
                  title:
                      Text(names[index], style: const TextStyle(fontSize: 13)),
                ),
              );
            }),
      ],
    );
  }
}
