// To parse this JSON data, do
//
//     final jobDescriptionModel = jobDescriptionModelFromJson(jsonString);

import 'dart:convert';

JobDescriptionModel jobDescriptionModelFromJson(String str) => JobDescriptionModel.fromJson(json.decode(str));

String jobDescriptionModelToJson(JobDescriptionModel data) => json.encode(data.toJson());

class JobDescriptionModel {
    Response? response;
    String? result;
    bool? showMessage;
    int? status;

    JobDescriptionModel({
        this.response,
        this.result,
        this.showMessage,
        this.status,
    });

    factory JobDescriptionModel.fromJson(Map<String, dynamic> json) => JobDescriptionModel(
        response: json["response"] == null ? null : Response.fromJson(json["response"]),
        result: json["result"],
        showMessage: json["show_message"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "response": response?.toJson(),
        "result": result,
        "show_message": showMessage,
        "status": status,
    };
}

class Response {
    String? message;
    Details? details;

    Response({
        this.message,
        this.details,
    });

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        message: json["message"],
        details: json["details"] == null ? null : Details.fromJson(json["details"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "details": details?.toJson(),
    };
}

class Details {
    int? id;
    List<String>? jobTypes;
    List<dynamic>? workingDays;
    List<dynamic>? skills;
    Employer? employer;
    Staff? staff;
    dynamic jobLocation;
    String? jobCode;
    String? activationStatus;
    String? title;
    String? titleAlt;
    String? description;
    String? lastDateToApply;
    String? locationOption;
    String? jobTag;
    int? noOfVaccancies;
    DateTime? postedOn;
    int? postedAt;
    int? minSalary;
    int? maxSalary;
    String? salaryCycle;
    dynamic timingFrom;
    dynamic timingTo;
    bool? status;
    String? url;
    bool? experienceRequired;
    dynamic experienceFrom;
    dynamic experienceTo;
    dynamic experienceType;
    String? startDate;
    String? joiningTime;
    bool? applyFlag;
    bool? savedFlag;
    int? appliedCount;
    int? interestedJobCount;
    int? acceptedCount;
    int? rejectedCount;
    bool? salaryNegotiable;
    dynamic reasonRejected;
    dynamic reasonUncleared;
    dynamic reasonDeactivated;
    int? totalApplicantCount;
    dynamic reasonChecksRejected;
    dynamic reasonChecksDeactivated;
    dynamic reasonChecksUncleared;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic district;
    String? jobCategory;
    dynamic sortedWorkingDays;

    Details({
        this.id,
        this.jobTypes,
        this.workingDays,
        this.skills,
        this.employer,
        this.staff,
        this.jobLocation,
        this.jobCode,
        this.activationStatus,
        this.title,
        this.titleAlt,
        this.description,
        this.lastDateToApply,
        this.locationOption,
        this.jobTag,
        this.noOfVaccancies,
        this.postedOn,
        this.postedAt,
        this.minSalary,
        this.maxSalary,
        this.salaryCycle,
        this.timingFrom,
        this.timingTo,
        this.status,
        this.url,
        this.experienceRequired,
        this.experienceFrom,
        this.experienceTo,
        this.experienceType,
        this.startDate,
        this.joiningTime,
        this.applyFlag,
        this.savedFlag,
        this.appliedCount,
        this.interestedJobCount,
        this.acceptedCount,
        this.rejectedCount,
        this.salaryNegotiable,
        this.reasonRejected,
        this.reasonUncleared,
        this.reasonDeactivated,
        this.totalApplicantCount,
        this.reasonChecksRejected,
        this.reasonChecksDeactivated,
        this.reasonChecksUncleared,
        this.createdAt,
        this.updatedAt,
        this.district,
        this.jobCategory,
        this.sortedWorkingDays,
    });

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        id: json["id"],
        jobTypes: json["jobTypes"] == null ? [] : List<String>.from(json["jobTypes"]!.map((x) => x)),
        workingDays: json["workingDays"] == null ? [] : List<dynamic>.from(json["workingDays"]!.map((x) => x)),
        skills: json["skills"] == null ? [] : List<dynamic>.from(json["skills"]!.map((x) => x)),
        employer: json["employer"] == null ? null : Employer.fromJson(json["employer"]),
        staff: json["staff"] == null ? null : Staff.fromJson(json["staff"]),
        jobLocation: json["jobLocation"],
        jobCode: json["jobCode"],
        activationStatus: json["activation_status"],
        title: json["title"],
        titleAlt: json["title_alt"],
        description: json["description"],
        lastDateToApply: json["lastDateToApply"],
        locationOption: json["locationOption"],
        jobTag: json["jobTag"],
        noOfVaccancies: json["noOfVaccancies"],
        postedOn: json["postedOn"] == null ? null : DateTime.parse(json["postedOn"]),
        postedAt: json["postedAt"],
        minSalary: json["minSalary"],
        maxSalary: json["maxSalary"],
        salaryCycle: json["salary_cycle"],
        timingFrom: json["timingFrom"],
        timingTo: json["timingTo"],
        status: json["status"],
        url: json["url"],
        experienceRequired: json["experienceRequired"],
        experienceFrom: json["experienceFrom"],
        experienceTo: json["experienceTo"],
        experienceType: json["experienceType"],
        startDate: json["startDate"],
        joiningTime: json["joiningTime"],
        applyFlag: json["applyFlag"],
        savedFlag: json["savedFlag"],
        appliedCount: json["appliedCount"],
        interestedJobCount: json["interestedJobCount"],
        acceptedCount: json["acceptedCount"],
        rejectedCount: json["rejectedCount"],
        salaryNegotiable: json["salaryNegotiable"],
        reasonRejected: json["reason_rejected"],
        reasonUncleared: json["reason_uncleared"],
        reasonDeactivated: json["reason_deactivated"],
        totalApplicantCount: json["totalApplicantCount"],
        reasonChecksRejected: json["reason_checks_rejected"],
        reasonChecksDeactivated: json["reason_checks_deactivated"],
        reasonChecksUncleared: json["reason_checks_uncleared"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        district: json["district"],
        jobCategory: json["jobCategory"],
        sortedWorkingDays: json["sortedWorkingDays"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "jobTypes": jobTypes == null ? [] : List<dynamic>.from(jobTypes!.map((x) => x)),
        "workingDays": workingDays == null ? [] : List<dynamic>.from(workingDays!.map((x) => x)),
        "skills": skills == null ? [] : List<dynamic>.from(skills!.map((x) => x)),
        "employer": employer?.toJson(),
        "staff": staff?.toJson(),
        "jobLocation": jobLocation,
        "jobCode": jobCode,
        "activation_status": activationStatus,
        "title": title,
        "title_alt": titleAlt,
        "description": description,
        "lastDateToApply": lastDateToApply,
        "locationOption": locationOption,
        "jobTag": jobTag,
        "noOfVaccancies": noOfVaccancies,
        "postedOn": postedOn?.toIso8601String(),
        "postedAt": postedAt,
        "minSalary": minSalary,
        "maxSalary": maxSalary,
        "salary_cycle": salaryCycle,
        "timingFrom": timingFrom,
        "timingTo": timingTo,
        "status": status,
        "url": url,
        "experienceRequired": experienceRequired,
        "experienceFrom": experienceFrom,
        "experienceTo": experienceTo,
        "experienceType": experienceType,
        "startDate": startDate,
        "joiningTime": joiningTime,
        "applyFlag": applyFlag,
        "savedFlag": savedFlag,
        "appliedCount": appliedCount,
        "interestedJobCount": interestedJobCount,
        "acceptedCount": acceptedCount,
        "rejectedCount": rejectedCount,
        "salaryNegotiable": salaryNegotiable,
        "reason_rejected": reasonRejected,
        "reason_uncleared": reasonUncleared,
        "reason_deactivated": reasonDeactivated,
        "totalApplicantCount": totalApplicantCount,
        "reason_checks_rejected": reasonChecksRejected,
        "reason_checks_deactivated": reasonChecksDeactivated,
        "reason_checks_uncleared": reasonChecksUncleared,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "district": district,
        "jobCategory": jobCategory,
        "sortedWorkingDays": sortedWorkingDays,
    };
}

class Employer {
    int? id;
    String? code;
    String? name;
    dynamic pin;
    String? contact;
    String? altContact;
    String? email;
    String? regNumber;
    String? employerType;
    String? url;
    bool? status;
    String? logo;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? username;
    String? addressLine1;
    String? addressLine2;
    bool? emailVerified;
    bool? contactVerified;
    dynamic city;
    dynamic company;

    Employer({
        this.id,
        this.code,
        this.name,
        this.pin,
        this.contact,
        this.altContact,
        this.email,
        this.regNumber,
        this.employerType,
        this.url,
        this.status,
        this.logo,
        this.createdAt,
        this.updatedAt,
        this.username,
        this.addressLine1,
        this.addressLine2,
        this.emailVerified,
        this.contactVerified,
        this.city,
        this.company,
    });

    factory Employer.fromJson(Map<String, dynamic> json) => Employer(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        pin: json["pin"],
        contact: json["contact"],
        altContact: json["alt_contact"],
        email: json["email"],
        regNumber: json["reg_number"],
        employerType: json["employer_type"],
        url: json["url"],
        status: json["status"],
        logo: json["logo"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        username: json["username"],
        addressLine1: json["addressLine1"],
        addressLine2: json["addressLine2"],
        emailVerified: json["emailVerified"],
        contactVerified: json["contactVerified"],
        city: json["city"],
        company: json["company"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "pin": pin,
        "contact": contact,
        "alt_contact": altContact,
        "email": email,
        "reg_number": regNumber,
        "employer_type": employerType,
        "url": url,
        "status": status,
        "logo": logo,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "username": username,
        "addressLine1": addressLine1,
        "addressLine2": addressLine2,
        "emailVerified": emailVerified,
        "contactVerified": contactVerified,
        "city": city,
        "company": company,
    };
}

class Staff {
    int? id;
    dynamic city;
    AccessType? accessType;
    String? fullName;
    String? gender;
    String? photo;
    dynamic dob;
    String? code;
    dynamic appointedOn;
    dynamic position;
    dynamic placeOfWork;
    int? approvedCount;
    int? unclearedCount;
    int? rejectedCount;
    String? contact;
    String? email;
    String? address;
    String? pin;
    DateTime? lastActive;
    DateTime? lastLogin;
    bool? live;
    bool? loginEnable;

    Staff({
        this.id,
        this.city,
        this.accessType,
        this.fullName,
        this.gender,
        this.photo,
        this.dob,
        this.code,
        this.appointedOn,
        this.position,
        this.placeOfWork,
        this.approvedCount,
        this.unclearedCount,
        this.rejectedCount,
        this.contact,
        this.email,
        this.address,
        this.pin,
        this.lastActive,
        this.lastLogin,
        this.live,
        this.loginEnable,
    });

    factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        id: json["id"],
        city: json["city"],
        accessType: json["accessType"] == null ? null : AccessType.fromJson(json["accessType"]),
        fullName: json["fullName"],
        gender: json["gender"],
        photo: json["photo"],
        dob: json["dob"],
        code: json["code"],
        appointedOn: json["appointedOn"],
        position: json["position"],
        placeOfWork: json["placeOfWork"],
        approvedCount: json["approvedCount"],
        unclearedCount: json["unclearedCount"],
        rejectedCount: json["rejectedCount"],
        contact: json["contact"],
        email: json["email"],
        address: json["address"],
        pin: json["pin"],
        lastActive: json["lastActive"] == null ? null : DateTime.parse(json["lastActive"]),
        lastLogin: json["last_login"] == null ? null : DateTime.parse(json["last_login"]),
        live: json["live"],
        loginEnable: json["loginEnable"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "city": city,
        "accessType": accessType?.toJson(),
        "fullName": fullName,
        "gender": gender,
        "photo": photo,
        "dob": dob,
        "code": code,
        "appointedOn": appointedOn,
        "position": position,
        "placeOfWork": placeOfWork,
        "approvedCount": approvedCount,
        "unclearedCount": unclearedCount,
        "rejectedCount": rejectedCount,
        "contact": contact,
        "email": email,
        "address": address,
        "pin": pin,
        "lastActive": lastActive?.toIso8601String(),
        "last_login": lastLogin?.toIso8601String(),
        "live": live,
        "loginEnable": loginEnable,
    };
}

class AccessType {
    int? id;
    List<String>? permissions;
    String? name;

    AccessType({
        this.id,
        this.permissions,
        this.name,
    });

    factory AccessType.fromJson(Map<String, dynamic> json) => AccessType(
        id: json["id"],
        permissions: json["permissions"] == null ? [] : List<String>.from(json["permissions"]!.map((x) => x)),
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "permissions": permissions == null ? [] : List<dynamic>.from(permissions!.map((x) => x)),
        "name": name,
    };
}
