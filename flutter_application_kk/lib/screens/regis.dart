import 'package:flutter/material.dart';

class RegisScreen extends StatefulWidget {
  const RegisScreen({super.key});

  @override
  State<RegisScreen> createState() => _RegisScreenState();
}

class _RegisScreenState extends State<RegisScreen> {
  //our form Key
  final _formKey = GlobalKey<FormState>();
  //edit controller
  final firstNameEditController = new TextEditingController();
  final emailtNameEditController = new TextEditingController();
  final passwordtNameEditController = new TextEditingController();
  final confirmpasswordEditController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //firstname field
    final firstNameField = TextFormField(
        autofocus: false,
        controller: firstNameEditController,
        keyboardType: TextInputType.name,
        //validator: (){},
        onSaved: (value) {
          firstNameEditController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "ชื่อ",
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10), //ขนาดกรอบemailวงกลมcircular
          ),
        ));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailtNameEditController,
        keyboardType: TextInputType.emailAddress,
        //validator: (){},
        onSaved: (value) {
          emailtNameEditController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "อีเมล",
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10), //ขนาดกรอบemailวงกลมcircular
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordtNameEditController,
        obscureText: true,
        //validator: (){},
        onSaved: (value) {
          passwordtNameEditController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "รหัสผ่าน",
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10), //ขนาดกรอบemailวงกลมcircular
          ),
        ));

    //comfrimpassword field
    final comfirmpasswordField = TextFormField(
        autofocus: false,
        controller: confirmpasswordEditController,
        obscureText: true,
        //validator: (){},
        onSaved: (value) {
          confirmpasswordEditController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "ยืนยันรหัสผ่าน",
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10), //ขนาดกรอบemailวงกลมcircular
          ),
        ));

    //sigup button
    final sigupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "สมัครสมาชิก",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white, //พื้นหลังแอป
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white, //พื้นหลังช่องของemail and password
            child: Padding(
              padding: const EdgeInsets.all(36.0),

              /// ขนาดช่องกรอกข้อมูล
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.contain,
                        )),
                    SizedBox(height: 45),
                    firstNameField,
                    SizedBox(height: 25),
                    emailField,
                    SizedBox(height: 25),
                    passwordField,
                    SizedBox(height: 25),
                    comfirmpasswordField,
                    SizedBox(height: 25),
                    sigupButton,
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
