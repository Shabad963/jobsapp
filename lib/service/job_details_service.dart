import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:jobsapp/config/urls.dart';
import 'package:jobsapp/model/job_details_model.dart';

class JobDescriptionService {
  static Future<JobDescriptionModel?> getJobDescriptionService() async {
    try {
      http.Response response = await http.get(
        Uri.parse(Urls.jobDescription),
      );

      if (response.statusCode == 200) {
        log(response.body);
        return jobDescriptionModelFromJson(response.body);
      } else {
        // ToastView.toast(json.decode(response.body)['message']);
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
