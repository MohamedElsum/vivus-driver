import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivus_driver/constants.dart';
import 'package:expandable/expandable.dart';
import 'package:vivus_driver/features/login/presentation/widgets/auth_button.dart';
import 'package:vivus_driver/features/more/presentation/widgets/change_password_header.dart';
import 'package:vivus_driver/router/routes_constants.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';
import '../../../login/presentation/widgets/text_form_field.dart';
import '../../../login/presentation/widgets/textfield_title.dart';
import '../widgets/modules_details_header.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool oldPassword = true;
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ModulesDetailsHeader(
              icon: Images.profileModule,
              title: 'Profile',
            ),
            SizedBox(
              height: 40.getHeight(),
            ),
            const TextFieldTitle(
              title: 'Full Name',
            ),
            SizedBox(
              height: 10.getHeight(),
            ),
            TextFormInput(
              color: DefaultThemeColors.emailIcon,
              icon: Images.fullName,
              obscure: false,
              hint: 'Mohamed ElSuM',
              suffix: Images.editProfile,
              showPassword: false,
              keyBoardType: TextInputType.text,
              isEditProfile: true,
            ),
            SizedBox(
              height: 16.getHeight(),
            ),
            const TextFieldTitle(
              title: 'Phone Number',
            ),
            SizedBox(
              height: 10.getHeight(),
            ),
            TextFormInput(
              color: DefaultThemeColors.emailIcon,
              icon: Images.mobile,
              obscure: false,
              hint: '01205100340',
              suffix: Images.editProfile,
              showPassword: false,
              keyBoardType: TextInputType.number,
              isEditProfile: true,
            ),
            SizedBox(
              height: 16.getHeight(),
            ),
            const TextFieldTitle(
              title: 'City',
            ),
            SizedBox(
              height: 10.getHeight(),
            ),
            TextFormInput(
              color: DefaultThemeColors.emailIcon,
              icon: Images.city,
              obscure: false,
              hint: 'Cairo / Egypt',
              suffix: Images.editProfile,
              showPassword: false,
              keyBoardType: TextInputType.number,
              isEditProfile: true,
            ),
            SizedBox(
              height: 16.getHeight(),
            ),
            const TextFieldTitle(
              title: 'License Number',
            ),
            SizedBox(
              height: 10.getHeight(),
            ),
            TextFormInput(
              color: DefaultThemeColors.emailIcon,
              icon: Images.licenseNumber,
              obscure: false,
              hint: '555 234 567 89',
              suffix: Images.editProfile,
              showPassword: false,
              keyBoardType: TextInputType.number,
              isEditProfile: true,
            ),
            SizedBox(
              height: 16.getHeight(),
            ),
            const TextFieldTitle(
              title: 'Car Number',
            ),
            SizedBox(
              height: 10.getHeight(),
            ),
            TextFormInput(
              color: DefaultThemeColors.emailIcon,
              icon: Images.carNumber,
              obscure: false,
              hint: 'أ س د - 2020',
              suffix: Images.editProfile,
              showPassword: false,
              keyBoardType: TextInputType.number,
              isEditProfile: true,
            ),
            SizedBox(
              height: 30.getHeight(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                color: DefaultThemeColors.missionItemColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpandableNotifier(
                child: ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.top,
                      tapBodyToCollapse: true,
                      hasIcon: false,
                    ),
                    header: done
                        ? ChangePasswordHeader(
                            icon: Images.done,
                            title: 'Done',
                          )
                        : ChangePasswordHeader(
                            title: 'Change Password',
                            icon: Images.changepassword,
                          ),
                    collapsed: Container(
                      decoration: const BoxDecoration(
                        color: DefaultThemeColors.missionItemColor,
                      ),
                    ),
                    expanded: done
                        ? Container()
                        : Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: DefaultThemeColors.missionItemColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: oldPassword
                                ? Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Old Password',
                                          style: FontTextStyle.oldPassword,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16.getHeight(),
                                      ),
                                      TextFormInput(
                                        color: DefaultThemeColors.passIcon,
                                        icon: Images.loginPassword,
                                        obscure: true,
                                        hint: 'Password',
                                        suffix: Images.eyepass,
                                        showPassword: true,
                                        keyBoardType: TextInputType.text,
                                        isEditProfile: false,
                                      ),
                                      SizedBox(
                                        height: 30.getHeight(),
                                      ),
                                      AuthButton(
                                        buttonText: 'Continue',
                                        onpress: () {
                                          setState(() {
                                            oldPassword = false;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 16.getHeight(),
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'New Password',
                                          style: FontTextStyle.oldPassword,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16.getHeight(),
                                      ),
                                      TextFormInput(
                                        color: DefaultThemeColors.passIcon,
                                        icon: Images.loginPassword,
                                        obscure: true,
                                        hint: 'New Password',
                                        suffix: Images.eyepass,
                                        showPassword: true,
                                        keyBoardType: TextInputType.text,
                                        isEditProfile: false,
                                      ),
                                      SizedBox(
                                        height: 16.getHeight(),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Confirm New Password',
                                          style: FontTextStyle.oldPassword,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16.getHeight(),
                                      ),
                                      TextFormInput(
                                        color: DefaultThemeColors.passIcon,
                                        icon: Images.loginPassword,
                                        obscure: true,
                                        hint: 'Confirm New Password',
                                        suffix: Images.eyepass,
                                        showPassword: true,
                                        keyBoardType: TextInputType.text,
                                        isEditProfile: false,
                                      ),
                                      SizedBox(
                                        height: 30.getHeight(),
                                      ),
                                      AuthButton(
                                        buttonText: 'Continue',
                                        onpress: () {
                                          setState(() {
                                            done = true;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 16.getHeight(),
                                      ),
                                    ],
                                  ),
                          ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.getHeight(),
            ),
            done
                ? AuthButton(
                    buttonText: 'Save',
                    onpress: () {
                      Get.toNamed(RoutesConstants.loginScreen);
                    },
                  )
                : Container(),
            done
                ? SizedBox(
                    height: 30.getHeight(),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
