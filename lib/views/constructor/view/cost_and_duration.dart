import 'package:education_app/views/app/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/app_text_styles/constructor_text_style.dart';
import '../../../consts/app_text_styles/full_info_text_style.dart';
import '../../../data/model/university_info.dart';
import '../../../util/app_routes.dart';
import '../../../util/shared_pref_service.dart';
import '../../app/widgets/chosen_action_button_widget.dart'; // Replace with your actual file path
//
// class CostAndDurationScreen extends StatefulWidget {
//   final UniversityInfo universityInfo;
//
//   CostAndDurationScreen({super.key, required this.universityInfo});
//
//   @override
//   _CostAndDurationScreenState createState() => _CostAndDurationScreenState();
// }
//
// class _CostAndDurationScreenState extends State<CostAndDurationScreen> {
//   final _costController = TextEditingController();
//   final _durationController = TextEditingController();
//
//   @override
//   void dispose() {
//     _costController.dispose();
//     _durationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     List<Specialty> specialties = widget.universityInfo.specialties;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text(
//           'Back',
//           style: ConstructorTextStyle.appBar,
//         ),
//         titleSpacing: -5,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: SvgPicture.asset('assets/icons/leading.svg'),
//         ),
//       ),
//       body: Container(
//         color: Colors.black,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               const Text(
//                 'New university',
//                 style: ConstructorTextStyle.title,
//               ),
//               SizedBox(
//                 height: size.height * 0.03,
//               ),
//               Text('Especialidades'),
//               SizedBox(
//                 height: size.height * 0.02,
//               ),
//               InputWidget(controller: _costController),
//               SizedBox(
//                 height: size.height * 0.03,
//               ),
//               InputWidget(controller: _durationController),
//               Spacer(),
//               ChosenActionButton(
//                 text: 'Continue',
//                 onTap: () async {
//                   widget.universityInfo.cost = _costController.text;
//                   widget.universityInfo.duration = _durationController.text;
//                   List<UniversityInfo> universityList =
//                       await UniversityPreferences().loadUniversityList();
//                   universityList.add(widget.universityInfo);
//                   await UniversityPreferences()
//                       .saveUniversityList(universityList);
//                   Navigator.of(context).pushNamedAndRemoveUntil(
//                       AppRoutes.home, (Route<dynamic> route) => false);
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
