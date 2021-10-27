import 'package:dio/dio.dart';
import 'package:pooyesh_api/Models/example_list.dart';
import 'package:pooyesh_api/Models/login_model.dart';
import 'package:pooyesh_api/Models/register_model2.dart';
import 'package:pooyesh_api/Models/verify_model.dart';

import 'Models/example_list2.dart';

class ApiNetwork{
  String authUrl = "https://kidslandtoys.com/kernel/customer/auth/";
  String listUrl = "https://kidslandtoys.com/kernel/api/site/view";
  Dio? _dio;


  ApiNetwork(){
    _dio = Dio();
  }

  Future userLogin(String phone) async{
    try{
      Response response = await _dio!.post(authUrl + "login",data: {
        "username":"$phone"
      });
      print(response.data.toString());
      if(response.data.toString() != 'false'){
        Login_model login_model = Login_model.fromJson(response.data);
        return login_model.id;
      }
      else{
        return "you have no account";
      }

    }
    catch(e){
      return "you are not registered";
    }
  }

  Future userVerify(String code,String id) async{
    try{
      Response response = await _dio!.post(authUrl + "login/verify",data: {
        "id": id,
        "token": code
      });
      print(response.data.toString());

        Verify_model verify_model = Verify_model.fromJson(response.data);
        return verify_model.fname;
    }
    catch(e){
      return "network error";
    }
  }

  Future userRegister(String fname,String lname,String phone) async{
    print(phone + "  " + fname + "  " + lname);
    try{
      Response response = await _dio!.post(authUrl + "register",data: {
        "mobile":phone,
        "fname":fname,
        "lname":lname
      });
      print(response.data.toString());

      Register_model2 register_model2 = Register_model2.fromJson(response.data);
      return register_model2.id;
    }
    catch(e){
      return "you have registered before";
    }
  }

  Future<List<Example_list>> getList() async{
    try{
      Response response = await _dio!.get(listUrl);
      // Example_list example_list = Example_list.fromJson(response.data);
      var a = (response.data as List).map((e) => Example_list.fromJson(e)).toList();
      // print("hiii");
      return a;
    }
    catch(e, s){
      print(e);
      throw Exception("Exception occured: $e stackTrace: $s");
    }
  }

}