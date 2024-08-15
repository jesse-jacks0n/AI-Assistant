import 'package:flutter/material.dart';
import 'package:personal_assistant/screens/chat.dart';
import 'package:personal_assistant/screens/gemini_details.dart';
import 'package:personal_assistant/screens/image_generator.dart';
import 'package:personal_assistant/screens/video_generator.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'AI',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                          child: Text(
                        'Your Personal',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_upward_outlined,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              const Row(
                children: [
                  Text(
                    'ASSISTANT',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white54,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                height: 200, // Set a fixed initial height
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChatScreen()));
                        },
                        child: Container(
                          height: 200, // Adjust the height as needed
                          width: 200, // This will make it a square

                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/ai.png'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 20, right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Start Chat',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const ChatScreen())
                                            );},
                                          icon: const Icon(
                                            Icons.message_rounded,
                                            color: Colors.black,
                                            size: 30,
                                          )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder: (context, constraints) => GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context)=>VideoGeneratorScreen())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            height:
                                constraints.maxHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      onPressed: () {

                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>VideoGeneratorScreen())
                                          );

                                      },
                                      icon: const Icon(
                                        Icons.videocam,
                                        color: Colors.black,
                                        size: 30,
                                      )),
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      'Video',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      'Generator',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ],
                            ), // Dynamically set height
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder: (context, constraints) => GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context)=>ImageGeneratorScreen())
                            );
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            height:
                                constraints.maxHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context, MaterialPageRoute(
                                            builder: (context)=>ImageGeneratorScreen())
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.image,
                                        color: Colors.black,
                                        size: 30,
                                      )),
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      'Image',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      'Generator',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ],
                            ), // Dynamically set height
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/model.png'),
                      fit: BoxFit.fitHeight,
                    ),
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.white38,
                        period: const Duration(milliseconds: 4000),
                        child: const Text(
                          'Model\nGemini-Pro',
                          style: TextStyle(fontSize: 30),
                        )),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=>GeminiDetails())
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Read more',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // const Text(
              //   'History',
              //   style: TextStyle(fontSize: 20, color: Colors.white70),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.android,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Flexible(
                          child: Text(
                            'Remember what user said earlier in the conversation preceeding this conversation',
                            style: TextStyle(fontSize: 17),
                            maxLines: 2, // Limit text to 2 lines
                            overflow: TextOverflow
                                .ellipsis, // Add ellipsis when overflowing
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.android,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Flexible(
                          child: Text(
                            'Remember what user said earlier in the conversation preceeding this conversation',
                            style: TextStyle(fontSize: 17),
                            maxLines: 2, // Limit text to 2 lines
                            overflow: TextOverflow
                                .ellipsis, // Add ellipsis when overflowing
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.android,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Flexible(
                          child: Text(
                            'Remember what user said earlier in the conversation preceeding this conversation',
                            style: TextStyle(fontSize: 17),
                            maxLines: 2, // Limit text to 2 lines
                            overflow: TextOverflow
                                .ellipsis, // Add ellipsis when overflowing
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.android,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Flexible(
                          child: Text(
                            'Remember what user said earlier in the conversation preceeding this conversation',
                            style: TextStyle(fontSize: 17),
                            maxLines: 2, // Limit text to 2 lines
                            overflow: TextOverflow
                                .ellipsis, // Add ellipsis when overflowing
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
