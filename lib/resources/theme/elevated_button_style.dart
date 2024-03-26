import 'package:flutter/material.dart';

ButtonStyle onboardingElevatedWhiteButtonStyle = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
  foregroundColor: Colors.blue,
  minimumSize: const Size(169.0, 48.0)
);

ButtonStyle onboardingElevatedBlueButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
  foregroundColor: Colors.white,
  minimumSize: const Size(169.0, 48.0)
);