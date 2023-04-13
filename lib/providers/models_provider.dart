import 'package:chatgpt_flutter/models/models_model.dart';
import 'package:chatgpt_flutter/services/api_service.dart';
import 'package:flutter/cupertino.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "gpt-3.5-turbo";

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<openaiModels> modelsList = [];

  List<openaiModels> get getModelsList {
    return modelsList;
  }

  Future<List<openaiModels>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
