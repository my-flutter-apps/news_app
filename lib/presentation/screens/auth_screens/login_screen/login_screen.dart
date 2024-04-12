import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/custom_text_field.dart';

import '../../../widgets/title_tile_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: () {}, child: const Text("Create Account"))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TitleTileWidget(
                      title: "Login",
                      subTitle: "Welcome back!",
                    ),
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Email Address',
                      label: 'Email',
                      prefixIconData: Icons.email_outlined,
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      label: 'Password',
                      prefixIconData: Icons.lock,
                      isSecure: true,
                      additionalTitle: 'Forget Password',
                      onAdditional: () {},
                    ),
                    // Column(
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Text('Password'),
                    //         TextButton(
                    //             onPressed: () {}, child: Text("Forget Password"))
                    //       ],
                    //     ),
                    //     TextField(),
                    //   ],
                    // ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (formKey.currentState != null) {
                          if (formKey.currentState!.validate()) {
                            debugPrint("validated");
                            Navigator.pushNamedAndRemoveUntil(context, "/main", (route) => false);
                            // Navigator.of(context).pushAndRemoveUntil(
                            //     MaterialPageRoute(builder: (_) => const MainScreen()),
                            //     (route) => false);
                          } else {
                            debugPrint("not validated");
                          }
                        }
                      },
                      icon: const Text('SIGN IN'),
                      label: const Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Row(
                  children: [Divider(), Text("OR"), Divider()],
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata),
                  label: const Text('Sign in with Google'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  label: const Text('Sign in with Facebook'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
