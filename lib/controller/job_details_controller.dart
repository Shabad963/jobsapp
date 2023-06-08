import 'package:get/get.dart';
import 'package:jobsapp/model/job_details_model.dart';
import 'package:jobsapp/service/job_details_service.dart';


class JobDescriptionController extends GetxController {


  @override
  void onInit() {
    getAJobDescriptionData();
    super.onInit();
  }
  RxList<JobDescriptionModel> jobDescriptionData =
      <JobDescriptionModel>[].obs;

  RxBool isLoadingService = true.obs;


  List<String> skills = ["UI/Ux Designer, Illustrator, json"];
  void getAJobDescriptionData(
    ) async {
    try {
      final response = await JobDescriptionService.getJobDescriptionService();

      if (response != null) {
        jobDescriptionData.clear();
        jobDescriptionData.add(response);
        isLoadingService(false);
      } else {
        isLoadingService(false);
        return null;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}