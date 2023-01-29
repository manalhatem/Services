import 'package:easy_localization/easy_localization.dart';
import '../../../translation/locale_keys.g.dart';

class  FaqModel{
  String question;
  String answer;

  FaqModel({required this.question, required this.answer});
}

List<FaqModel> faqQuestion=[
  FaqModel(question: LocaleKeys.faqQ1.tr(), answer: LocaleKeys.faqA1.tr()),
  FaqModel(question: LocaleKeys.faqQ2.tr(), answer: LocaleKeys.faqA2.tr()),
  FaqModel(question: LocaleKeys.faqQ3.tr(), answer: LocaleKeys.faqA3.tr()),
  FaqModel(question: LocaleKeys.faqQ4.tr(), answer: LocaleKeys.faqA4.tr()),
  FaqModel(question: LocaleKeys.faqQ5.tr(), answer: LocaleKeys.faqA5.tr()),
  FaqModel(question: LocaleKeys.faqQ6.tr(), answer: LocaleKeys.faqA6.tr()),
  FaqModel(question: LocaleKeys.faqQ7.tr(), answer: LocaleKeys.faqA7.tr()),
  FaqModel(question: LocaleKeys.faqQ8.tr(), answer: LocaleKeys.faqA8.tr()),
];