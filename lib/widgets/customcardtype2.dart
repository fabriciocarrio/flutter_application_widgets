import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String urlImage;
  final String? name;

  const CustomCardType2({Key? key, required this.urlImage, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: AppThemes.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(urlImage),
          placeholder: const AssetImage('assets/speening.gif'),
          width: double.infinity,
          height: 175,
          fit: BoxFit.contain,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
            child: Text(name!),
          )
      ]),
    );
  }
}
