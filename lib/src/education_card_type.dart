// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../l10n/generated/l10n.dart';

enum EmotionCardType {
  acceptance(Color(0xFFcadf8b)),
  admiration(Color(0xFF8ac650)),
  amazement(Color(0xFF0099cd)),
  anger(Color(0xFFf2736d)),
  annoyance(Color(0xFFf48d80)),
  anticipation(Color(0xFFf9ad66)),
  apprehension(Color(0xFF7ac698)),
  boredom(Color(0xFFb9aad3)),
  disgust(Color(0xFFa390c4)),
  distraction(Color(0xFF89c7e4)),
  ecstasy(Color(0xFFffca05)),
  fear(Color(0xFF30b575)),
  grief(Color(0xFF2983c5)),
  interest(Color(0xFFfcc487)),
  joy(Color(0xFFffdc7b)),
  loathing(Color(0xFF8973b3)),
  pensiveness(Color(0xFFa0c0e5)),
  rage(Color(0xFFf05b61)),
  sadness(Color(0xFF74a8da)),
  serenity(Color(0xFFffed9f)),
  surprise(Color(0xFF36aed7)),
  terror(Color(0xFF00a551)),
  trust(Color(0xFFabd26a)),
  vigilance(Color(0xFFf6923d)),
  aggressiveness(Color(0xFFf3774f)),
  optimism(Color(0xFFfbae21)),
  contempt(Color(0xFFbd678a)),
  awe(Color(0xFF009f8f)),
  love(Color(0xFFc5c82b)),
  remorse(Color(0xFF597bbc)),
  disapproval(Color(0xFF158ec9)),
  submission(Color(0xFF45b651)),

  guilt(Color(0xFFc25f3f)),
  curiosity(Color(0xFFc88b1a)),
  despair(Color(0xFF97526e)),
  unbelief(Color(0xFF009f8f)),
  envy(Color(0xFF007f72)),
  cynicism(Color(0xFF476296)),
  pride(Color(0xFF1071a0)),
  hope(Color(0xFF379140)),

  delight(Color(0xFFf59272)),
  sentimentality(Color(0xFFfcc663)),
  shame(Color(0xFFd094ad)),
  outrage(Color(0xFFf77b72)),
  pessimism(Color(0xFFf998a5)),
  morbidness(Color(0xFF8aa2d0)),
  dominance(Color(0xFF72bbde)),
  anxiety(Color(0xFFdcde7f)),

  bittersweetness(Color(0xFF60b7f3)),
  ambivalence(Color(0xFFc7e67f)),
  frozenness(Color(0xFFd3e4f4)),
  confusion(Color(0xFFdaafc6)),
  ;

  final Color color;

  const EmotionCardType(this.color);

  static Color get getSerenityOpaqueColor => const Color(0xFFfffbd4);
  static Color get getAcceptanceOpaqueColor => const Color(0xFFd8e8b4);
  static Color get getApprehensionOpaqueColor => const Color(0xFF9fd4b0);
  static Color get getDistractionOpaqueColor => const Color(0xFFbdd7e9);
  static Color get getPensivenessOpaqueColor => const Color(0xFFc6dcf2);
  static Color get getBoredomOpaqueColor => const Color(0xFFcbbedd);
  static Color get getAnnoyanceOpaqueColor => const Color(0xFFf9bab0);
  static Color get getInterestOpaqueColor => const Color(0xFFffdeb5);
}

extension EducationCardTypeStringExt on String {
  EmotionCardType? get xEmotionTypes => EmotionCardType.values.firstWhereOrNull((element) => element.xRawValue == this);
}

extension EducationCardTypeKeysExt on EmotionCardType {
  String get xRawValue => toString().split('.').last;

  String xGetName(BuildContext context) {
    switch (this) {
      case EmotionCardType.acceptance:
        return LocaleProvider.of(context).acceptance;
      case EmotionCardType.admiration:
        return LocaleProvider.of(context).admiration;
      case EmotionCardType.amazement:
        return LocaleProvider.of(context).amazement;
      case EmotionCardType.anger:
        return LocaleProvider.of(context).anger;
      case EmotionCardType.annoyance:
        return LocaleProvider.of(context).annoyance;
      case EmotionCardType.anticipation:
        return LocaleProvider.of(context).anticipation;
      case EmotionCardType.apprehension:
        return LocaleProvider.of(context).apprehension;
      case EmotionCardType.boredom:
        return LocaleProvider.of(context).boredom;
      case EmotionCardType.disgust:
        return LocaleProvider.of(context).disgust;
      case EmotionCardType.distraction:
        return LocaleProvider.of(context).distraction;
      case EmotionCardType.ecstasy:
        return LocaleProvider.of(context).ecstasy;
      case EmotionCardType.fear:
        return LocaleProvider.of(context).fear;
      case EmotionCardType.grief:
        return LocaleProvider.of(context).grief;
      case EmotionCardType.interest:
        return LocaleProvider.of(context).interest;
      case EmotionCardType.joy:
        return LocaleProvider.of(context).joy;
      case EmotionCardType.loathing:
        return LocaleProvider.of(context).loathing;
      case EmotionCardType.pensiveness:
        return LocaleProvider.of(context).pensiveness;
      case EmotionCardType.rage:
        return LocaleProvider.of(context).rage;
      case EmotionCardType.sadness:
        return LocaleProvider.of(context).sadness;
      case EmotionCardType.serenity:
        return LocaleProvider.of(context).serenity;
      case EmotionCardType.surprise:
        return LocaleProvider.of(context).surprise;
      case EmotionCardType.terror:
        return LocaleProvider.of(context).terror;
      case EmotionCardType.trust:
        return LocaleProvider.of(context).trust;
      case EmotionCardType.vigilance:
        return LocaleProvider.of(context).vigilance;
      case EmotionCardType.aggressiveness:
        return LocaleProvider.of(context).aggressiveness;
      case EmotionCardType.optimism:
        return LocaleProvider.of(context).optimism;
      case EmotionCardType.contempt:
        return LocaleProvider.of(context).contempt;
      case EmotionCardType.awe:
        return LocaleProvider.of(context).awe;
      case EmotionCardType.love:
        return LocaleProvider.of(context).love;
      case EmotionCardType.remorse:
        return LocaleProvider.of(context).remorse;
      case EmotionCardType.disapproval:
        return LocaleProvider.of(context).disapproval;
      case EmotionCardType.submission:
        return LocaleProvider.of(context).submission;
      case EmotionCardType.guilt:
        return 'guilt';
      case EmotionCardType.curiosity:
        return 'curiosity';
      case EmotionCardType.despair:
        return 'despair';
      case EmotionCardType.unbelief:
        return 'unbelief';
      case EmotionCardType.envy:
        return 'envy';
      case EmotionCardType.cynicism:
        return 'cynicism';
      case EmotionCardType.pride:
        return 'pride';
      case EmotionCardType.hope:
        return 'hope';
      case EmotionCardType.delight:
        return 'delight';
      case EmotionCardType.sentimentality:
        return 'sentimentality';
      case EmotionCardType.shame:
        return 'shame';
      case EmotionCardType.outrage:
        return 'outrage';
      case EmotionCardType.pessimism:
        return 'pessimism';
      case EmotionCardType.morbidness:
        return 'morbidness';
      case EmotionCardType.dominance:
        return 'dominance';
      case EmotionCardType.anxiety:
        return 'anxiety';
      case EmotionCardType.bittersweetness:
        return 'bittersweetness';
      case EmotionCardType.ambivalence:
        return 'ambivalence';
      case EmotionCardType.frozenness:
        return 'frozenness';
      case EmotionCardType.confusion:
        return 'confusion';
    }
  }
}
