import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/app_text_styles/home_screen_text_style.dart';
import '../../../data/model/university_info.dart';
import '../../../util/app_routes.dart';
import '../../../util/shared_pref_service.dart';
import '../../app/widgets/chosen_action_button_widget.dart';
import '../../constructor/view/basic_info.dart';
import '../widgets/short_info_widget.dart';
import 'full_info_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UniversityInfo> universities = [];

  @override
  void initState() {
    super.initState();
    _loadUniversities();
  }

  void _onAddComplete() {
    _loadUniversities();
  }

  Future<void> _loadUniversities() async {
    List<UniversityInfo> loadedUniversities =
        await UniversityPreferences().loadUniversityList();
    setState(() {
      universities = loadedUniversities;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: size.width * 0.2,
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              AppRoutes.profile,
            );
          },
          child: Text('Settings'),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            if (universities.isEmpty)
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/hat.svg'),
                            const Text('No university yet')
                          ],
                        ),
                        const Text(
                          "Add the first university",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            else
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.015,
                    left: size.width * 0.015,
                    right: size.width * 0.015,
                  ),
                  child: ListView.builder(
                    itemCount: universities.length,
                    itemBuilder: (context, index) {
                      UniversityInfo uni = universities[index];
                      return ShortUniInfoWidget(
                        name: uni.name,
                        address: uni.address,
                        rating: uni.rating,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FullInfoScreen(universityInfo: uni),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ChosenActionButton(
              text: 'Add new university',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BasicInfoScreen()),
                ).then((_) => _onAddComplete());
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
