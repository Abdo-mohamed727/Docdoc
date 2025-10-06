import 'package:docdoc/Core/Theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocdocImageAndText extends StatelessWidget {
  const DocdocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_background_logo.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.white, Colors.white.withValues(alpha: 0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [.14, .4],
            ),
          ),
          child: Image.asset('assets/images/docdoc_image.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,

          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor \n Appointment App',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.primary,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
