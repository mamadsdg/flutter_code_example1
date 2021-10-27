import 'package:flutter/material.dart';
import 'package:pooyesh_api/VerifyView/header.dart';
import 'package:pooyesh_api/mainPage/main_view.dart';
import 'package:pooyesh_api/network_functional.dart';

class VerifyView extends StatefulWidget {
  final String id;

  const VerifyView({Key? key, required this.id}) : super(key: key);

  @override
  _VerifyViewState createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  TextEditingController? code;
  var setfuture;


  @override
  void initState() {
    code = TextEditingController();
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
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  // _showSnackBar(context, snapshot.data.toString());
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.data.toString().contains("network")) {
                    // setState(() {
                    // dataa = snapshot.data.toString();
                    // });
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      _showSnackBar(context, "code value is incorrect");
                    });
                    return Body();
                  } else {
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      Navigator.popUntil(context, (route) => false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainView(
                            name: snapshot.data.toString(),
                          ),
                        ),
                      );
                    });
                    return Container();
                  }
                } else if (snapshot.hasError) {
                  return Container();
                } else {
                  return const Center(
                    child: Text("errr"),
                  );
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "please enter code that was sent on your phone",
            style: TextStyle(color: Colors.black, fontSize: 19),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
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
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
// decoration: const BoxDecoration(
//     border: Border(
//         bottom:
//         BorderSide(color: Colors.grey))),
                    child: TextField(
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      controller: code,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "Code"),
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
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(143, 148, 251, 1)),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                onTapBtnVerify();
              },
              child: const Text(
                "Verify",
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
        ],
      ),
    );
  }

  void onTapBtnVerify() {
    setState(() {
      print(code!.text + "   " + widget.id);
      setfuture = ApiNetwork().userVerify(code!.text, widget.id);
    });
  }

  _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
