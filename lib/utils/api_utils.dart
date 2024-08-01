import 'dart:convert';
import 'dart:math';

class ApiUtils {
  static String getEncryptKey(int length) {
    const symbols =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    final random = Random();
    final buffer = StringBuffer();

    while (buffer.length < length) {
      buffer.write(symbols[random.nextInt(62)]);
    }

    return buffer.toString();
  }

  static int getEncryptKeyPosition(String character) {
    const symbols =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';

    for (var i = 0; i < symbols.length; i++) {
      if (symbols[i] == character) {
        return i;
      }
    }

    return -1; // Character not found
  }

  static String getEncryptPositionChar(int position) {
    const symbols =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    return symbols[position];
  }

  static String encryptRequest(dynamic data) {
    const encryptPosition = 0;
    const encryptLengthPosition = 1;
    final stringData = json.encode(data);
    final encodedData = base64.encode(utf8.encode(stringData));
    var encryptKeyLength = Random().nextInt(30);

    if (encryptKeyLength < 20) {
      encryptKeyLength = 20;
    }

    var position = Random().nextInt(encodedData.length);

    if (position >= 42) {
      position = 42;
    }

    final encryptKey = getEncryptKey(encryptKeyLength);
    final encryptedData =
        '${encodedData.substring(0, position)}$encryptKey${encodedData.substring(position)}';
    final encryptPositionChar = getEncryptPositionChar(position);
    final encryptLengthPositionChar = getEncryptPositionChar(encryptKeyLength);
    final modifiedEncryptedData =
        '${encryptedData.substring(0, encryptPosition)}$encryptPositionChar${encryptedData.substring(encryptPosition)}';

    return '${modifiedEncryptedData.substring(0, encryptLengthPosition)}$encryptLengthPositionChar${modifiedEncryptedData.substring(encryptLengthPosition)}';
  }

  static dynamic decryptResponse(String data1) {
    var rawResponse = data1;
    final encPos = getEncryptKeyPosition(rawResponse[rawResponse.length - 2]);
    final encLen = getEncryptKeyPosition(rawResponse[rawResponse.length - 1]);
    rawResponse = rawResponse.substring(0, rawResponse.length - 2);
    // final encKey = rawResponse.substring(encPos, encPos + encLen);
    var encodedStr =
        '${rawResponse.substring(0, encPos)}${rawResponse.substring(encPos + encLen)}';
    encodedStr = utf8.decode(base64.decode(encodedStr));
    final data = json.decode(encodedStr);

    return data;
  }
}
