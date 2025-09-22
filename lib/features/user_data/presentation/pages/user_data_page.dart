import 'package:auto_route/auto_route.dart';
import 'package:demmy_app_tasklabs/core/common/widgets/wide_button_widget.dart';
import 'package:demmy_app_tasklabs/core/utils/validation_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_text_field.dart';
import '../../../../core/common/widgets/simple_app_bar.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/font_size.dart';
import '../../../../core/theme/text_styles.dart';

@RoutePage()
class UserDataPage extends StatefulWidget {
  const UserDataPage({super.key});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> with ValidationsMixin {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColorPrimaryText,

      body: Column(
        children: [
          SizedBox(height: 50.h),
          SimpleAppBar(title: 'User Data'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextfield(
                      controller: _nameController,
                      hintText: "Enter Name",
                      validator: validatedName,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextfield(
                      controller: _emailController,
                      hintText: "Enter Email",
                      validator: validateEmail,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextfield(
                      controller: _phoneController,
                      hintText: "Enter Phone",
                      validator: validatedPhoneNumber,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Gender:',
                      style: kTextStyleDMSans600.copyWith(
                        fontSize: FontSize.f16,
                        color: AppColors.kColorCrlBorder,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<String>(
                            title: Text(
                              'Male',
                              style: kTextStyleDMSans600.copyWith(
                                fontSize: FontSize.f16,
                                color: AppColors.kColorCrlBorder,
                              ),
                            ),
                            value: 'Male',
                            // ignore: deprecated_member_use
                            groupValue: _gender,
                            // ignore: deprecated_member_use
                            onChanged: (value) {
                              setState(() => _gender = value);
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<String>(
                            title: Text(
                              'Female',
                              style: kTextStyleDMSans600.copyWith(
                                fontSize: FontSize.f16,
                                color: AppColors.kColorCrlBorder,
                              ),
                            ),
                            value: 'Female',
                            // ignore: deprecated_member_use
                            groupValue: _gender,
                            // ignore: deprecated_member_use
                            onChanged: (value) {
                              setState(() => _gender = value);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: WideButtonWidget(
                        onTap: () {
                          if (_formKey.currentState!.validate() &&
                              _gender != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Form Submitted Successfully'),
                              ),
                            );
                          } else if (_gender == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please select gender'),
                              ),
                            );
                          }
                        },
                        title: 'Submit',
                        backgroundColor: AppColors.kColorPurple100,
                        textColor: AppColors.kColorPrimaryText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
