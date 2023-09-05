
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tester_1/view/add_task.dart';
import 'package:tester_1/view/widget/bottom_nav.dart';
import 'package:tester_1/view/widget/custom_card.dart';

import '../constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar:  const BottomNavBar(),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Icon(Icons.home,color: Colors.grey,),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Icon(Icons.settings,color: Colors.grey,),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hai David ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Welc",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_android_rounded,
                    color: Colors.grey,
                    size: 18,
                  ),
                  Text(
                    " +61 34625648335",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  Text(
                    "  davidwelch@demo.com.au",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          30), 
                      topRight: Radius.circular(
                          30),
                    ),
                  ),
                  child:  Column(
                    children: [
                       const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CustomCard(
                            cardColor: Colors.white,
                            iconData: Icons.notifications_active_outlined,
                            iconColor: Colors.orange,
                            containerColor: Color.fromARGB(255, 255, 238, 212),
                            title: 'Notifications',
                          ),
                           GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddTaskPage(),));
                            },
                             child: const CustomCard(
                              cardColor: Colors.white,
                              iconData: Icons.my_library_books_outlined,
                              iconColor: Colors.blue,
                              containerColor: Color.fromARGB(255, 217, 238, 255),
                              title: 'Task update',
                                                   ),
                           ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomCard(
                            cardColor: Colors.white,
                            iconData: Icons.note_add_outlined,
                            iconColor: Colors.orange,
                            containerColor: Color.fromARGB(255, 255, 238, 212),
                            title: 'Time sheet',
                          ),
                           CustomCard(
                            cardColor: Colors.white,
                            iconData: Icons.laptop_mac_rounded,
                            iconColor: Colors.blue,
                            containerColor: Color.fromARGB(255, 217, 238, 255),
                            title: 'OHNS',
                          ),
                      ],),
                      const SizedBox(height: 25,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomCard(
                            cardColor: Colors.white,
                            iconData: Icons.analytics_outlined,
                            iconColor: Colors.blue,
                            containerColor: Color.fromARGB(255, 217, 238, 255),
                            title: 'NCR',
                          ),CustomCard(
                            cardColor: Colors.white,
                            iconData: Icons.timelapse_rounded,
                            iconColor: Colors.blue,
                            containerColor: Color.fromARGB(255, 217, 238, 255),
                            title: 'Delay report',
                          ),
                        ],
              
                      )
                      
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
