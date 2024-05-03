import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw/gen/assets.gen.dart';
<<<<<<< HEAD
import 'package:hw/signup/bloc/sign_up_cubit.dart';

=======
import 'package:hw/generated/l10n.dart';
import 'package:hw/signup/bloc/sign_up_cubit.dart';
import 'package:hw/postSignUp/linkedIn_screen.dart';
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) =>
      MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.noScaling
        ),
        child: BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(),
  child: _HomeContent(),
),
      );
}
class _HomeContent extends StatelessWidget {
   _HomeContent({super.key});

  String currName = '';
  String currEmail = '';
  String currPassword = '';

  @override
  Widget build(BuildContext context) =>
<<<<<<< HEAD
    Scaffold(
=======
    BlocListener<SignUpCubit, SignUpState>(
  listener: (context, state) {
    if (state is SignUpFailed && state.provider =='LinkedIn')  {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LinkedInScreen()));
    }
  },
  child: Scaffold(
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
      body: SafeArea(
          child: Container (
            alignment: Alignment.center,
            child: SingleChildScrollView(

              child: Column (
                  children: [
                    Row(
                      children: [
                        Assets.button.image(width: 89, height: 88),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
<<<<<<< HEAD
                          child: Text('Create Account' ,
=======
                          child: Text(Batch16String.current.createAccount,
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
                            style: TextStyle(fontSize:  18, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Assets.female.image(width: 89, height: 88),
                    ),
<<<<<<< HEAD
                    Text('Create account with', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
=======
                    Text( Batch16String.current.createAccount, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        BlocListener<SignUpCubit, SignUpState>(
                          listener: (context, state) {
                            if (state is SignUpFailed  && state.provider =='github') {
<<<<<<< HEAD
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(' Github sign up is not supported')));
=======
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(Batch16String.current.notSupported('Github'))));
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
                            }
                          },
                          child: AccountHolder(image: Assets.git.image(width:  43, height:  43),
                              onTap: () {
                                context.read <SignUpCubit>().signupWithGitHub();


                              } ),
                        ),
                        AccountHolder(image: Assets.google.image(width:  43, height:  43),
                            onTap: () =>
                          context.read<SignUpCubit>().signupWithGoogle()

                            ,),
                        AccountHolder(image: Assets.linkedIN.image(width:  43, height:  43),
                            onTap: () =>
                                context.read<SignUpCubit>().signupWithLinkedIn())

                      ],
                    ),
                    BlocSelector<SignUpCubit, SignUpState, String?>(
                      selector: (state) {
                        if (state is SignUpFailed)   {
                          return state.provider;
                        }
                        return null;

                      },
                    builder: (context, state) {
                        if (state == 'google') {
<<<<<<< HEAD
                          return Text ("$state sign up is not supported");
=======
                          return Text (Batch16String.current.notSupported("$state"));
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
                        }
                        return SizedBox.shrink();
                    },

                    ),
                    Text('or', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),

                    IconTextFieldRow(hint: 'Name', image: Assets.human.path,
                    onTextChange: (value) {
                      currName = value;
                    },),
                    IconTextFieldRow(hint: 'Email', image: Assets.mail.path,
                        onTextChange: (value) {
                          currEmail = value;
                        },),
                    IconTextFieldRow(hint: 'Password', image: Assets.key.path,hintImage: Assets.visible.path,
                        onTextChange: (value) {
                          currPassword = value;
                        },),
                    SizedBox(height: 25),
                    BlocSelector<SignUpCubit, SignUpState, SignUp?>(
                      selector: (state) {
                        if (state is SignUp && (currName.isEmpty)) {
<<<<<<< HEAD
                          return SignUp(status: 'Failed', reason: "Name must not be empty");
                        }
                        if (state is SignUp && (currEmail.isEmpty)) {
                          return SignUp(status: 'Failed', reason: "Email must not be empty");
                        }
                        if (state is SignUp && (currPassword.isEmpty)) {
                          return SignUp(status: 'Failed', reason: "Password must not be empty");
                        }
                        if (state is SignUp && !_isEmailValid(currEmail)) {
                          return SignUp(status: 'Failed', reason: "Invalid email format");
                        }
                        if (state is SignUp && !_isPasswordValid(currPassword)) {
                          return SignUp(status: 'Failed', reason: "Password is too weak");
=======
                          return SignUp(status: 'Failed', reason: Batch16String.current.notEmpty('Name'));
                        }
                        if (state is SignUp && (currEmail.isEmpty)) {
                          return SignUp(status: 'Failed', reason: Batch16String.current.notEmpty('Email'));
                        }
                        if (state is SignUp && (currPassword.isEmpty)) {
                          return SignUp(status: 'Failed', reason: Batch16String.current.notEmpty('Password'));
                        }
                        if (state is SignUp && !_isEmailValid(currEmail)) {
                          return SignUp(status: 'Failed', reason: Batch16String.current.invalid("email"));
                        }
                        if (state is SignUp && !_isPasswordValid(currPassword)) {
                          return SignUp(status: 'Failed', reason: Batch16String.current.tooWeak('Password'));
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
                        }
                        if (state is SignUp && !(currPassword.isEmpty || currEmail.isEmpty || currName.isEmpty || !_isPasswordValid(currPassword) || !_isEmailValid(currEmail))) {
                          return SignUp(status: 'Success', reason: '');
                        }
                        return null;

                      },
                      builder: (context, state) {
                        if (state != null && state.status == 'Failed' ) {
                          return Text(state.reason);
                        }
                        if (state != null && state.status == 'Success') {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
<<<<<<< HEAD
                              title: Text('Congratulations'),
                              content: Text('Please wait a little longer'),
=======
                              title: Text(Batch16String.current.congrate),
                              content: Text(Batch16String.current.wait),
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
                            ),
                          );
                        });}

                        return SizedBox.shrink();

                      },

                    ),
                    InkWell(
                      child: Container(
                          height: 34,
                          width: 65,
                          decoration: BoxDecoration (
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(7),
                          ),

                          child: Center(
                              child: Text('Signup', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 13,color: Colors.white),)
                          ),
                      ),onTap: () {
                        context.read<SignUpCubit>().signUp();
                    } ,
                    ),
                    SizedBox(height: 20),
                    Text('or', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),
<<<<<<< HEAD
                    Text('Already have an account?', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),
                    Text('Login', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),),
=======
                    Text(Batch16String.current.alreadyHaveAccount, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),
                    TextButton(onPressed: () {}, child: Text('Login') ),
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen







                  ]
              ),
            )
            ,
          )
      ),
<<<<<<< HEAD
    );
=======
    ),
);
>>>>>>> W5-TakeHome(Locolisation-+-Theme-+-NewLinkedInScreen
  }



class AccountHolder extends StatelessWidget {
  const AccountHolder({required this.image, this.onTap, super.key});
  final Image image;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context)  => InkWell(
    onTap: onTap,
    child: Container(
      margin:  EdgeInsets.all(17),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius:  40,
                blurStyle: BlurStyle.outer,
                color: Colors.black.withOpacity(0.3),
                offset:  Offset(2,2)
            )
          ]
      ),
      child: image ,
    ),
  );

}
class IconTextFieldRow extends StatefulWidget {
  const IconTextFieldRow({required this.image, required this.hint, this.hintImage, required this.onTextChange,super.key});

  final String image;
  final String hint;
  final String? hintImage;
  final ValueChanged<String> onTextChange;
  @override
  State<IconTextFieldRow> createState() => _IconTextFieldRowState();
}

class _IconTextFieldRowState extends State<IconTextFieldRow> {
  final TextEditingController controller = TextEditingController();
@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  void initState() {
    controller.addListener(() {
      widget.onTextChange(controller.text);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) =>  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
    child: Row(
      children: [
        Image.asset(widget.image,width: 43, height: 43),
        SizedBox(width: 10),
        Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0,4),
                      blurRadius: 20
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),


              ),
              child: TextField(
                  controller: controller,
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(17,20,20,10),
                    hintText: widget.hint,
                    suffixIcon: widget.hintImage != null
                        ? Padding(
                      padding: EdgeInsets.only(left: 13.0, right: 8.0), // Adjust the padding as needed
                      child: Image.asset(widget.hintImage!, width: 21, height: 17), // If an image is provided, use it as a prefix icon
                    )
                        : null, // If no image is provided, don't display an icon

                  )
              ),
            )
        ),

      ],
    ),

  )
  ;
}

bool _isEmailValid(String email) {
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  return emailRegex.hasMatch(email);
}

bool _isPasswordValid(String password) {
  final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');
  return passwordRegex.hasMatch(password);
}
