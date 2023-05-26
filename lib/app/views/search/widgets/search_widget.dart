import 'package:buss_app/app/constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        height: 60,
        // width: MediaQuery.of(context).size.width * 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: const Color(0xffF5F5F5),
              width: 2,
            )),

        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 15,
            left: 21,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff22BB9C),
                  ),
                  const SizedBox(width: 23.94),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Казань - Нижнекамск",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff171716),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        "14.05.2023, 1 пассажир",
                        style: AppTextStyles.grey12,
                      ),
                    ],
                  ),
                ],
              ),
              SvgPicture.asset('assets/icons/group.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
