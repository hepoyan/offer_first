import 'package:offer_first/constants/text_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors_const.dart';

const IconData visibility = Icons.visibility;
const IconData visibilityOff = Icons.visibility_off;
final Widget logoFullSvg = SvgPicture.asset(
  pathFullLogo,
  color: kWhiteColor,
);

final Widget logoSvg = SvgPicture.asset(
  pathLogo,
  color: kDarkGreyColor,
);

final Widget logoSvgSmall = SvgPicture.asset(
  pathLogo,
  color: kGreyColor,
  height: 30.0,
  width: 30.0,
);
final Widget discoverySvg = SvgPicture.asset(
  discoveryPath,
  color: kDarkGreyColor,
  height: 30.0,
  width: 30.0,
);
final Widget errorSvg = SvgPicture.asset(
  errorImagePath,
  color: kRed,

);
