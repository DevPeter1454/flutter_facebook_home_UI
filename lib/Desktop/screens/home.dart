// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_feed_reaction/flutter_feed_reaction.dart';

class Home extends StatefulWidget {
  final double width;
  const Home({Key? key, required this.width}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var width = widget.width;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const SizedBox(
            child: Story(),
            height: 200,
          ),
          // Story(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // color: Colors.amber,
              height: 155,
              width: 550,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1651601787600-40ad979813ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                      ),
                      title: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'What\'s on your mind',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Chip(
                            backgroundColor: Color(0XFFFFFFFF),
                            avatar: Icon(Icons.videocam_rounded,
                                color: Color(0XFFF3425F)),
                            label: Text('Live Video')),
                        Chip(
                            backgroundColor: Color(0XFFFFFFFF),
                            avatar: Icon(Icons.photo_library,
                                color: Color(0XFF45BD62)),
                            label: Text('Photos & Videos')),
                        Chip(
                            backgroundColor: Color(0XFFFFFFFF),
                            avatar: Icon(Icons.sentiment_satisfied_alt_rounded,
                                color: Color(0XFFF7B928)),
                            label: Text('Feeling'))
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(width: 550, child: NewsFeed(width: width)),
          // Container(
          //   // color: Colors.amber,
          //   height: MediaQuery.of(context).size.height / 1.5,
          //   width: 550,
          //   child: NewsFeed(),
          // ),
        ],
      ),
    );
  }
}

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  final images = [
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1615572359976-1fe39507ed7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1615572359976-1fe39507ed7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ];
  final nimages = [
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ];
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Stack(
            // fit: StackFit.expand,
            children: [
              Positioned(
                // top: 10,
                child: Card(
                  elevation: 3.0,
                  child: Image.network(
                    images[index],
                    // width: MediaQuery.of(context).size.width,

                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(nimages[index]),
                ),
              )
            ],
          );
        });
  }
}

class NewsFeed extends StatelessWidget {
  final double width;
  NewsFeed({Key? key, required this.width}) : super(key: key);
  final mainImages = [
    'https://scontent.flos1-2.fna.fbcdn.net/v/t39.30808-6/241521900_391234149039141_393062309373793969_n.jpg?stp=dst-jpg_p180x540&_nc_cat=100&ccb=1-6&_nc_sid=e3f864&_nc_eui2=AeGVueyMHoJsaab1_WzR3qaEIBhJzfZ9VUYgGEnN9n1VRn0F2Q4UB3jc7LuXVK0Q1Up9IZ1chI_LTO70-Q2eYGl8&_nc_ohc=iTMg8Yx781gAX-LsJb7&_nc_zt=23&_nc_ht=scontent.flos1-2.fna&oh=00_AT-H2QgElss6qV69tUa14ikpDErKb2vGwOYwbYufVio53Q&oe=627DD479',
    'https://scontent.flos1-2.fna.fbcdn.net/v/t39.30808-6/219202667_357432795752610_44081316430995447_n.jpg?stp=dst-jpg_p180x540&_nc_cat=107&ccb=1-6&_nc_sid=19026a&_nc_eui2=AeHLadLadkaMQWe9Iuez86vD92y35qhqbYH3bLfmqGptgUrX3xPqVanPyVllEN8uoFrxUDbGxI7o-XAChSvL4AN7&_nc_ohc=FY-wuv4JV0AAX9r40bI&_nc_zt=23&_nc_ht=scontent.flos1-2.fna&oh=00_AT87slS76LgOoQ0rLxsCqi6pX2iyAvzDL3mx0WCuBmHj_g&oe=627D5258',
    'https://scontent.flos1-2.fna.fbcdn.net/v/t39.30808-6/241393019_391235412372348_8363733005629580498_n.jpg?stp=dst-jpg_s526x395&_nc_cat=105&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeHP5qdCbnwyPmI9EyrcLlZd4pHUWrMvQT7ikdRasy9BPgtQn71IURLlWdhvUHsMPy382CRvWicTBFO2ZGzT1XFu&_nc_ohc=gEjlYuSP060AX-zp8Lh&_nc_zt=23&_nc_ht=scontent.flos1-2.fna&oh=00_AT-_pcq7wk5iwAt6BQq1FvpOpioLFxa8a5FL_Mdh0RiPLg&oe=627C1722',
  ];
  final likes = [
    '287k',
    '366k',
    '567k',
  ];
  final comments = [
    '107.2k',
    '278.6k',
    '446.8k',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: mainImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: width <= 600
                  ? MediaQuery.of(context).size.height / 0.5
                  : MediaQuery.of(context).size.height / 0.5,
              // width: 500,
              child: Card(
                  child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1651601787600-40ad979813ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                    ),
                    title: const Text(
                      'Liam Dunbar',
                      style: TextStyle(fontSize: 14),
                    ),
                    subtitle: Row(
                      children: const [
                        Text('September 8, 2021 ',
                            style: TextStyle(fontSize: 12)),
                        Icon(Icons.language_outlined, size: 14),
                      ],
                    ),
                    trailing: const Icon(Icons.more_horiz_outlined),
                  ),
                ),
                Container(
                  height: 250,
                  child: Image.network(
                    mainImages[index],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0, 5, 0),
                          child: Image.network(
                              'https://image.shutterstock.com/image-vector/thumb-heart-icon-vector-like-600w-1454760053.jpg',
                              width: 50,
                              height: 50),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Text(likes[index]),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${comments[index]} comments',
                        style: const TextStyle(color: Color(0XFF65676B)),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  indent: 8,
                  endIndent: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Chip(
                        avatar: Icon(Icons.thumb_up_sharp,
                            color: Color(0XFF129CF6)),
                        label: Text('Like'),
                        backgroundColor: Color(0XFFFFFFFF)),
                    Chip(
                        avatar: Icon(Icons.mode_comment_outlined,
                            color: Color(0XFF65676B)),
                        label: Text('Comment'),
                        backgroundColor: Color(0XFFFFFFFF)),
                    Chip(
                        avatar:
                            Icon(Icons.share_rounded, color: Color(0XFF65676B)),
                        label: Text('Share'),
                        backgroundColor: Color(0XFFFFFFFF)),
                  ],
                ),
                const Divider(
                  indent: 8,
                  endIndent: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('View previous comments',
                          style: TextStyle(color: Color(0XFF65676B))),
                    ),
                  ],
                ),
                const Comment(),
              ])),
            ),
          );
        });
  }
}

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  ScrollController controller = ScrollController();

  final header = [
    'Mason Stilinski',
    'Tion Wayne',
    'Justin Smith',
    'Jack Griffo',
    'Allison Argent',
  ];

  final body = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat.',
  ];

  final images = [
    'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1612214070475-1e73f478188c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1615572359976-1fe39507ed7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/emotional-african-american-man-with-african-hairstyle-picture-id1319662868?b=1&k=20&m=1319662868&s=170667a&w=0&h=Z-69EjXWD92ewnRv3NOSKcADIO5ojaOvW7bdUPiFimM=',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: controller,
        shrinkWrap: true,
        itemCount: header.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    images[index],
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    8.0,
                    0,
                    0,
                    0,
                  ),
                  child: Container(
                      // padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: const Color(0XFFF0F2F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(header[index],
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text(
                              body[index],
                            ),
                          ],
                        ),
                      )),
                )),
          );
        });
  }
}
