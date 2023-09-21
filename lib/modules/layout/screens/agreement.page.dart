// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kyn/assets/icons.dart';
// import 'package:kyn/extensions/color.extension.dart';
// import 'package:kyn/extensions/text.extension.dart';
// import 'package:kyn/modules/auth/services/auth.service.dart';
// import 'package:kyn/modules/core/enums/agreement_type.enum.dart';
// import 'package:kyn/modules/core/models/agreement.model.dart';
// import 'package:kyn/modules/core/services/storage.service.dart';
// import 'package:kyn/modules/core/widgets/button_widget/action_button.widget.dart';
// import 'package:kyn/utils/file.utils.dart';
// import 'package:markdown_widget/markdown_widget.dart';

// Future<String> getAgreement(AgreementType type) {
//   switch (type) {
//     case AgreementType.privacyPolicy:
//       return readMarkdown('lib/assets/mock/agreement.txt');
//     case AgreementType.termsCondition:
//       return readMarkdown('lib/assets/mock/terms&conditions.txt');
//     case AgreementType.eula:
//       return readMarkdown('lib/assets/mock/agreement.txt');
//   }
// }

// class AgreementPage extends StatelessWidget {
//   const AgreementPage(this.agreementModel, {super.key});
//   final AgreementModel agreementModel;

//   @override
//   Widget build(BuildContext context) {
//     bool showLicenseAction = agreementModel.route == '/home';
//     return Scaffold(
//       bottomNavigationBar: showLicenseAction
//           ? SizedBox(
//               height: 100,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: FloatingActionButton(
//                       onPressed: () {
//                         StorageService.setBool('isExist', true);
//                         StorageService.setBool('isTermAccepted', true);
//                         Get.find<AuthService>().isTermsAccepted = true;
//                         Get.toNamed('/home');
//                       },
//                       backgroundColor: Theme.of(context).primaryRed,
//                       elevation: 0,
//                       shape: const BeveledRectangleBorder(),
//                       child: Text(
//                         'Agree and Continue',
//                         style: CustomText.bodyLarge(context)
//                             .copyWith(color: Theme.of(context).defaultColor),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           : null,
//       appBar: showLicenseAction
//           ? null
//           : AppBar(
//               automaticallyImplyLeading: false,
//               backgroundColor: Theme.of(context).defaultColor,
//               elevation: 0.0,
//               toolbarHeight: MediaQuery.of(context).size.height * .1,
//               leadingWidth: 100,
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (!showLicenseAction)
//                     ActionButton(
//                       onPressed: () => Get.back(),
//                       backgroundColor: Theme.of(context).secondaryLightGrey,
//                       Icon(
//                         CustomIcons.close_outline,
//                         size: 15,
//                         color: Theme.of(context).primaryBlack,
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//       body: Center(
//           child: FutureBuilder(
//         future: getAgreement(agreementModel.agreementType),
//         builder: (context, snapshot) {
//           return SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.only(
//                   left: 15,
//                   right: 15,
//                   top: showLicenseAction ? Get.height * .06 : 0),
//               color: Colors.white,
//               child: snapshot.data != null
//                   ? MarkdownWidget(
//                       config: MarkdownConfig(configs: [
//                         const PConfig(textStyle: TextStyle(fontSize: 14)),
//                       ]),
//                       padding: const EdgeInsets.all(0),
//                       physics: const NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       data: snapshot.data!,
//                     )
//                   : null,
//             ),
//           );
//         },
//       )),
//     );
//   }
// }
