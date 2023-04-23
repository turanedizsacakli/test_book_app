import 'package:flutter/material.dart';
//import 'package:test_book_app/screens/animation.dart';

class Login_SignUp_Page extends StatefulWidget {
  const Login_SignUp_Page({super.key});

  @override
  State<Login_SignUp_Page> createState() =>_Login_SignUp_Page();
}

class _Login_SignUp_Page extends State<Login_SignUp_Page> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      /*appBar: AppBar(
        title: Text("Test Book App 222"),
      ),*/
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height*0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/top_image.png"),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Merhaba Turan \nHoşgeldin...",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration("Kullanıcı Adı"),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration("Kullanıcı Şifre"),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(onPressed: (){},
                          child: Text("Şifremi Unuttum", style:TextStyle(color: Colors.pink),)
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                          onPressed: (){},
                          child: Container(
                            height: 50,
                              width: 200,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff31274F)
                              ),
                              child: Center(child: Text("Giriş Yap", style: TextStyle(color: Colors.white, )))
                          ),
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(onPressed: (){},
                          child: Text("Hesap Oluştur", style:TextStyle(color: Colors.pink),)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customSizedBox()=>SizedBox(height: 20,);

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                        )
                    ),
                  );
  }

}