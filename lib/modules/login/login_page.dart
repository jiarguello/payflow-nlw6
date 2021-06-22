import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.36,
                color: AppColors.primary,
              ),
              Positioned(
                  top: size.height * 0.04,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: size.width * 0.50,
                    height: size.height * 0.50,
                  )),
              Positioned(
                bottom: size.height * 0.01,
                right: 0,
                left: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logomini),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.03,
                          left: size.width * 0.185,
                          right: size.width * 0.185),
                      child: Text("Organize seus boletos em um só lugar",
                          textAlign: TextAlign.center,
                          style: TextStyles.titleHome),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.06,
                          bottom: size.height * 0.08,
                          left: size.width * 0.15,
                          right: size.width * 0.15),
                      child: SocialLoginButton(onTap: () {
                        print('clicou');
                      }),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
