import 'package:education_app/views/home/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/app_text_styles/constructor_text_style.dart';
import '../../../consts/app_text_styles/full_info_text_style.dart';
import '../../../data/model/university_info.dart';

class FullInfoScreen extends StatelessWidget {
  final UniversityInfo universityInfo;

  FullInfoScreen({required this.universityInfo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Back',
          style: ConstructorTextStyle.appBar,
        ),
        titleSpacing: -5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/leading.svg'),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(
            size.width * 0.02,
          ),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.height * 0.01,
                ),
                child: Container(
                  width: size.width * 0.88,
                  height: size.height * 0.2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppColors.lightGreyColor,
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(
                        size.width * 0.04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/hat.svg'),
                              SizedBox(
                                width: size.height * 0.01,
                              ),
                              Text(
                                universityInfo.name,
                                style: FullInfoTextStyle.uniName,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.01,
                          ),
                          Text(
                            universityInfo.address,
                            style: FullInfoTextStyle.address,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          StarRatingRep(rating: universityInfo.rating),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  size.width * 0.02,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.lightGreyColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(size.width * 0.04),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Pros',
                                    textAlign: TextAlign.start,
                                    style: FullInfoTextStyle.subtitle,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  for (String pro in universityInfo.pros)
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.005,
                                      ),
                                      child: Container(
                                          height: size.height * 0.075,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.black,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      size.height * 0.01,
                                                ),
                                                child: Text(
                                                  '$pro',
                                                  style: FullInfoTextStyle.tile,
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                ]),
                          )),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.lightGreyColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(size.width * 0.04),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cons',
                                    textAlign: TextAlign.start,
                                    style: FullInfoTextStyle.subtitle,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  for (String con in universityInfo.cons)
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.005,
                                      ),
                                      child: Container(
                                          height: size.height * 0.075,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.black,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      size.height * 0.01,
                                                ),
                                                child: Text(
                                                  '$con',
                                                  style: FullInfoTextStyle.tile,
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                ]),
                          )),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.lightGreyColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(size.width * 0.04),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Specialties',
                                    style: FullInfoTextStyle.subtitle,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Container(
                                    height: size.height * 0.075,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.black,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        Text(
                                          ' ${universityInfo.specialty?.name}',
                                          style: FullInfoTextStyle.tileSubtitle,
                                        ),
                                        Spacer(),
                                        Text(
                                          ' ${universityInfo.specialty?.priority}',
                                          style: FullInfoTextStyle.tileSubtitle,
                                        ),
                                        SizedBox(
                                          width: size.width * 0.02,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.005,
                                    ),
                                    child: Container(
                                      height: size.height * 0.075,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.black,
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.01,
                                          ),
                                          const Text(
                                            'Tuition fees',
                                            style:
                                                FullInfoTextStyle.tileSubtitle,
                                            textAlign: TextAlign.start,
                                            softWrap: true,
                                            overflow: TextOverflow.visible,
                                          ),
                                          Spacer(),
                                          Text(
                                            ' ${universityInfo.cost}',
                                            style:
                                                FullInfoTextStyle.tileSubtitle,
                                          ),
                                          SizedBox(
                                            width: size.width * 0.02,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          )),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
