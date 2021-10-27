import 'package:flutter/material.dart';
import 'package:pooyesh_api/RegisterView/register_main.dart';
import 'package:pooyesh_api/VerifyView/verify_main.dart';
import 'package:pooyesh_api/network_functional.dart';

import 'header.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController? user;

  String dataa = "";
  var setfuture;

  @override
  void initState() {
    user = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(),
            FutureBuilder(
              future: setfuture,
              builder: (context, snapshot) {
                // print("hi");
                if (snapshot.connectionState == ConnectionState.none) {
                  return Body();
                }
                else if(snapshot.connectionState == ConnectionState.waiting){
                  // _showSnackBar(context, snapshot.data.toString());
                  return const Center(
                    child: CircularProgressIndicator()
                  );
                }
                else if(snapshot.connectionState == ConnectionState.done){
                  if(snapshot.data.toString().contains("registered")){
                    // setState(() {
                    // dataa = snapshot.data.toString();
                    // });
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      _showSnackBar(context, snapshot.data.toString());
                    });
                    return Body();
                  }
                  else{

                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyView(id: snapshot.data.toString(),),
                        ),
                      );
                    });
                    return Container();
                  }

                }
                else if(snapshot.hasError){
                  return Container();
                }
                else {
                  return const Center(child: Text("errr"),);
                }
              },
            )
          ],
        ),
      ),
    );
  }

  _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void onTapBtnLogin() {
    setState(() {
      setfuture = ApiNetwork().userLogin(user!.text);
    });
  }

  Body() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, .2),
                    blurRadius: 20.0,
                    offset: Offset(0, 10),
                  )
                ]),

// padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
// decoration: const BoxDecoration(
//     border: Border(
//         bottom:
//         BorderSide(color: Colors.grey))),
                  child: TextField(
                    controller: user,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone number"),
                  ),
                ),
// Container(
//   padding: const EdgeInsets.all(8.0),
//   child: const TextField(
//     decoration: InputDecoration(
//         border: InputBorder.none,
//         hintText: "Password"),
//   ),
// ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(143, 148, 251, 1)
// gradient: const LinearGradient(colors: [
//   Color.fromRGBO(143, 148, 251, 1),
//   Color.fromRGBO(143, 148, 251, .6),
// ])
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                onTapBtnLogin();
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterView(),
                ),
              );
            },
            child: const Text(
              "don't have account?  sign up",
              style: TextStyle(
                  color: Color.fromRGBO(143, 148, 251, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
