import 'package:flutter/material.dart';
import 'package:vetshop/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            _imageBanner(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount(),
          ],
        ),
      ) 
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(top: 100, bottom: MediaQuery.of(context).size.height * 0.16),
      child: Image.asset('assets/img/delivery.png',
      width: 200,
      height: 200,
      ),
    );
  }
}

Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(decoration: InputDecoration(
        hintText: 'Correo Electronico',
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
        hintStyle: TextStyle(
          color: MyColors.primaryColor,
        ),
        prefixIcon: Icon(Icons.email, color: MyColors.primaryColor,)
      ),
      ),
    );
}

Widget _textFieldPassword() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(25),
    ),
    child: TextField(decoration: InputDecoration(
        hintText: 'Contraseña',
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
        hintStyle: TextStyle(
          color: MyColors.primaryColor,
        ),
        prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor,)
    ),
    ),
  );
}

Widget _buttonLogin() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
    child: ElevatedButton(onPressed: () {}, child: Text('Ingresar'),
    style: ElevatedButton.styleFrom(
      primary: MyColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      padding: EdgeInsets.symmetric(vertical: 20)
    )),
  );
}

Widget _textDontHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('No tienes Cuenta?'),
      SizedBox(width: 7),
      Text('Registrate',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.primaryColor
        ),),
    ],
  );
}