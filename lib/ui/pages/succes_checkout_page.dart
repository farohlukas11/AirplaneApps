import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget contentImage() {
      return Container(
        width: 299.96,
        height: 150,
        margin: const EdgeInsets.only(
          bottom: 80,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_success.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget myBookingButton() {
      return CustomButton(
        title: 'My Bookings',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
        width: 220,
        margin: const EdgeInsets.only(
          top: 50,
        ),
      );
    }

    Widget content() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          contentImage(),
          Text(
            'Well Booked 😍',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
          myBookingButton(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: content(),
      ),
    );
  }
}
