import 'package:flutter/material.dart';
import 'package:pooyesh_api/RegisterView/header.dart';
import 'package:pooyesh_api/VerifyView/verify_main.dart';
import 'package:pooyesh_api/network_functional.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController? mobile, fname, lname;
  var setfuture;

  @override
  void initState() {
    mobile = TextEditingController();
    fname = TextEditingController();
    lname = TextEditingController();
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
            ),
          ],
        ),
      ),
    );
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
                  padding: EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: TextField(
                    controller: fname,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "First name"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: TextField(
                    controller: lname,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Last Name"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: mobile,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Phone number"),
                  ),
                ),
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
                onTapBtnRegister();
              },
              child: const Text(
                "register",
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
              Navigator.pop(context);
            },
            child: const Text(
              "have an account? login",
              style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
            ),
          ),
        ],
      ),
    );
  }

  void onTapBtnRegister() {
    setState(() {
      setfuture =
          ApiNetwork().userRegister(fname!.text, lname!.text, mobile!.text);
    });
  }
  _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
