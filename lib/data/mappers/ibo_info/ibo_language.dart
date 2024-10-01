import '../../../domain/entities/settings/ibo_lanugage.dart';
import '../../../domain/value_objects/ibo/ibo_language_data.dart';
import '../../dtos/ibo/language/language.dart';

class IboLanguageMapper {
  LanguageJsonModel toJsonModel(IboLanguage language) {
    return LanguageJsonModel(
      code: language.data.code,
      name: language.data.name,
      words: language.data.words,
    );
  }

  IboLanguage toEntity(LanguageJsonModel languageJsonModel) {
    return IboLanguage(
      data: IboLanguageData(
        code: languageJsonModel.code,
        name: languageJsonModel.name,
        words: languageJsonModel.words,
      ),
    );
  }
}
