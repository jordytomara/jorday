import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.loose,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [

                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    //alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 10, top: 0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      //textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.username,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        //obscureText: loginController.hidePassword.value,
                        controller: controller.password,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child:

                  Container(
                    height: 50,
                      width: 200,
                      padding: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black),
                        textAlign: TextAlign.center,
                        ),
                    ),
                    onTap: () async {
                      controller.testPost();
                    },
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
