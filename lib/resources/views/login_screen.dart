import 'package:flutter/material.dart';
import 'package:shopdemo/resources/utils/app_colors.dart';
import 'package:shopdemo/resources/utils/app_ui.dart';
import 'package:shopdemo/resources/utils/strings.dart';
import 'package:shopdemo/resources/views/home_screen.dart';
import 'package:shopdemo/resources/widgets/bigbutton_widget.dart';
import 'package:shopdemo/resources/widgets/button_login_social_widget.dart';
import 'package:shopdemo/resources/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _getBody(),
    );
  }

  _getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20).copyWith(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              AppUI.LogoImage,
              height: 60,
            )),
            SizedBox(
              height: 10,
            ),
            const Text(WELCOME_LOGIN,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blueDart),
                textAlign: TextAlign.center),
            SizedBox(
              height: 15,
            ),
            Text(
              SIGNIN_CONTINUE,
              style: TextStyle(fontSize: 14, color: AppColors.greyN),
            ),
            SizedBox(height: 30),
            textFieldWidget(
              hintText: YOUR_EMAIL,
              hasIcon: true,
              icon: Icons.mail_outline,
            ),
            SizedBox(
              height: 15,
            ),
            textFieldWidget(
              hintText: PASSWORD,
              hasIcon: true,
              typePassword: true,
              icon: Icons.lock_outline,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: BigButtonWidget(
                  text: SIGN_IN,
                  backgroundColor: AppColors.blueN,
                  textColor: Colors.white,
                  onPress: () {
                    print('SIGN IN');
                  }),
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Expanded(child: Divider()),
              Container(
                child: Text("OR",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF9098B1))),
                padding: EdgeInsets.only(left: 15, right: 15),
              ),
              Expanded(child: Divider()),
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ButtonLoginSocialWidget(
                  label: LOGIN_GG,
                  backgroundColor: Colors.grey.shade100,
                  image: Image.asset(
                    AppUI.ic_gg,
                    height: 37,
                  ),
                  onPress: () {
                    print("Login Google");
                  }),
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: ButtonLoginSocialWidget(
                  label: LOGIN_FB,
                  backgroundColor: Colors.grey.shade100,
                  image: Image.asset(
                    AppUI.ic_fb,
                    height: 30,
                  ),
                  onPress: () {
                    print("Login Facebook");
                  }),
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(FORGET_PASS,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.blueN,
                        fontSize: 17))),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(DONT_HAVE_A_ACCOUNT,
                    style:
                        TextStyle(color: Colors.grey.shade400, fontSize: 16)),
                SizedBox(
                  width: 5,
                ),
                Text(REGISTER,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.blueN,
                        fontSize: 17))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                child: Text(
                  "GO HOME PAGE",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blueDart),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
