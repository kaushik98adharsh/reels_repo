import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reels_demo/src/UI/Login/bloc/login_bloc.dart';
import 'package:reels_demo/src/UI/Login/bloc/login_event.dart';
import 'package:reels_demo/src/UI/Login/bloc/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController =TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscurePass = true;


void _showMyDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Invalid Password'),
        content:  SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
            Text(message)
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child:const  Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
              if(state is LoginFailure)
              {
                _showMyDialog(context,state.error);
              }
              if(state is LoginSuccess){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login Success',  
                    textAlign: TextAlign.center,)));
                  Navigator.pushNamed(context, '/reels');
              }
          },
          builder: (context, state) {
            return Form(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Listener(
                    behavior: HitTestBehavior.opaque,
                    onPointerDown: (_) {
                      FocusScope.of(context).unfocus();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Center(
                                  child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  "Welcome to the\n Login Page",
                                  maxLines: 5,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 50),
                                  overflow: TextOverflow.clip,
                                ),
                              ))),
                          const SizedBox(
                            height: 20,
                          ),
                          Flexible(
                              flex: 2,
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                controller: userController,
                                decoration: const InputDecoration(
                                    labelText: "Phone Number",
                                    border: OutlineInputBorder()),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Flexible(
                              flex: 2,
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: obscurePass,
                                decoration:  InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        obscurePass=!obscurePass;
                                      });
                                    },
                                    icon: obscurePass?
                                    const Icon(Icons.remove_red_eye)
                                    :const Icon(Icons.panorama_fish_eye),),
                                    labelText: "Password",
                                    border: const OutlineInputBorder()),
                              )),
                          Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                   
                                  },
                                  child: const Text("forgot password?"))),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateColor.resolveWith(
                                    (_) => Colors.blue[900]!),
                              ), //
                              onPressed: () {
                                 context.read<LoginBloc>().add(
                                      EventLogin(
                                        username: userController.text , 
                                        password: passwordController
                                        .text));
                              },
                              child: const Text("Submit"))
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: state is LoginLoading,
                    child: Container(
                      color: const Color.fromARGB(200, 0, 0, 0),
                      child: const Center(
                        child:Card(
                          child:Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ))),))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
