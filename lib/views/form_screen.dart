import 'package:flutter/material.dart';
import 'package:form_ui/widgets/clip_container.dart';
import 'package:form_ui/widgets/custom_button.dart';
import 'package:form_ui/widgets/custom_textformfield.dart';

class CreateCompanyForm extends StatefulWidget {
  const CreateCompanyForm({super.key});

  @override
  State<CreateCompanyForm> createState() => _CreateCompanyFormState();
}

class _CreateCompanyFormState extends State<CreateCompanyForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
       
        body: ListView(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: ClipContainer(),
                  child: Container(
                 
                
                    width: width,
                    height: height * 0.4,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(141, 150, 120, 0),
                      //   borderRadius: BorderRadius.only(
                      //bottomLeft: Radius.circular(30),
                      //bottomRight: Radius.circular(40),
                      //  )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                  child: Align(alignment:Alignment.center,
                    child: Text("Create Company",style:TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 25,
                              color: Colors.white,
                            ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 100.0, 40, 20),
                  child: Container(
                   
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 231, 230, 230).withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          MyTextFormField(
                            controller: _nameController,
                            hinttext: 'Company name',
                            icon: Icons.title,
                            suffixicon: null,
                            onChanged: (value) {},
                            myObscureText: false,
                            decColor: const Color.fromARGB(255, 231, 230, 230),
                          ),
                          const SizedBox(height: 10),
                          MyTextFormField(
                            controller: _emailController,
                            hinttext: 'Email',
                            icon: Icons.email,
                            suffixicon: null,
                            onChanged: (value) {},
                            myObscureText: false,
                            decColor: const Color.fromARGB(255, 231, 230, 230),
                          ),
                          const SizedBox(height: 10),
                          MyTextFormField(
                            controller: _phoneController,
                            hinttext: 'Phone',
                            icon: Icons.phone,
                            suffixicon: null,
                            onChanged: (value) {},
                            myObscureText: false,
                            decColor: const Color.fromARGB(255, 231, 230, 230),
                          ),
                          const SizedBox(height: 10),
                          MyTextFormField(
                            controller: _addressController,
                            hinttext: 'Address',
                            icon: Icons.home,
                            suffixicon: null,
                            onChanged: (value) {},
                            myObscureText: false,
                            decColor: const Color.fromARGB(255, 231, 230, 230),
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            color: Color.fromARGB(141, 150, 120, 0),
                            text: 'Submit',
                            onPressed: () {},
                            textColor: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
       
        );
  }
}
