import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw/gen/assets.gen.dart';
import 'package:hw/signup/bloc/sign_up_cubit.dart';


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
  const _HomeContent({super.key});

  @override
  Widget build(BuildContext context) =>
    Scaffold(
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
                          child: Text('Create Account' ,
                            style: TextStyle(fontSize:  18, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Assets.female.image(width: 89, height: 88),
                    ),
                    Text('Create account with', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        BlocListener<SignUpCubit, SignUpState>(
                          listener: (context, state) {
                            if (state is SignUpFailed  && state.provider =='github') {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(' Github sign up is not supported')));
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
                          return Text ("$state sign up is not supported");
                        }
                        return SizedBox.shrink();
                    },

                    ),
                    Text('or', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),

                    IconTextFieldRow(hint: 'Name', image: Assets.human.path),
                    IconTextFieldRow(hint: 'Email', image: Assets.mail.path),
                    IconTextFieldRow(hint: 'Password', image: Assets.key.path,hintImage: Assets.visible.path),
                    SizedBox(height: 25),

                    Container(
                        height: 34,
                        width: 65,
                        decoration: BoxDecoration (
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7),
                        ),

                        child: Center(
                            child: Text('Signup', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 13,color: Colors.white),)
                        )
                    ),
                    SizedBox(height: 20),
                    Text('or', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),
                    Text('Already have an account?', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
                    SizedBox(height: 20),
                    Text('Login', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),),







                  ]
              ),
            )
            ,
          )
      ),
    );
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
class IconTextFieldRow extends StatelessWidget {
  const IconTextFieldRow({required this.image, required this.hint, this.hintImage, super.key});

  final String image;
  final String hint;
  final String? hintImage;

  @override
  Widget build(BuildContext context) =>  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
    child: Row(
      children: [
        Image.asset(image,width: 43, height: 43),
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
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(17,20,20,10),
                    hintText: hint,
                    suffixIcon: hintImage != null
                        ? Padding(
                      padding: EdgeInsets.only(left: 13.0, right: 8.0), // Adjust the padding as needed
                      child: Image.asset(hintImage!, width: 21, height: 17), // If an image is provided, use it as a prefix icon
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
