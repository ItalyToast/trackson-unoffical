// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

class AuthPostRequest {
  static String name = 'auth';

  final String username; 
  final String password;

   AuthPostRequest.fromJson(Map<String, dynamic> json)
      : username = json['username'] ?? '',
      password = json['password'] ?? '';

      Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
      };
}

class AuthPostResponse {
  static String name = 'auth';

  final String token; 

   AuthPostResponse.fromJson(Map<String, dynamic> json)
      : token = json['token'] ?? '';

    Map<String, dynamic> toJson() => {
      'token': token,
    };
}

class AuthGetResponse {
  static String name = 'auth';

  final String? archivedTsMs; 
  final List<Int64> currentVehicle; 
  final String defaultVehicles; 
  final String displayEmail; 
  final String displayName; 
  final bool gdprApproved; 
  final Int64 id; 
  final Int64 inviteSentTsMs; 
  final bool isArchived; 
  final String lastSeenApp; 
  final String lastSeenDriving; 
  final String mapType; 
  final Int64 organizationId; 
  final String organizations; 
  final String permittedVehicles; 
  final String? phone; 
  final List<String> purposes; 
  final List<String> roles; 
  final Int64 userId;

   AuthGetResponse.fromJson(Map<String, dynamic> json)
      : 
      archivedTsMs = json['archivedTsMs'] ?? '',
      currentVehicle = json['currentVehicle'] ?? '',
      defaultVehicles = json['defaultVehicles'] ?? '',
      displayEmail = json['displayEmail'] ?? '',
      displayName = json['displayName'] ?? '',
      gdprApproved = json['gdprApproved'] ?? '',
      id = json['id'] ?? '',
      inviteSentTsMs = json['inviteSentTsMs'] ?? '',
      isArchived = json['isArchived'] ?? '',
      lastSeenApp = json['lastSeenApp'] ?? '',
      lastSeenDriving = json['lastSeenDriving'] ?? '',
      mapType = json['mapType'] ?? '',
      organizationId = json['organizationId'] ?? '',
      organizations = json['organizations'] ?? '',
      permittedVehicles = json['permittedVehicles'] ?? '',
      phone = json['phone'] ?? '',
      purposes = json['purposes'] ?? '',
      roles = json['roles'] ?? '',
      userId = json['userId'] ?? '';

    Map<String, dynamic> toJson() => {
      'archivedTsMs': archivedTsMs,
      'currentVehicle': currentVehicle,
      'defaultVehicles': defaultVehicles,
      'displayEmail': displayEmail,
      'displayName': displayName,
      'gdprApproved': gdprApproved,
      'id': id,
      'inviteSentTsMs': inviteSentTsMs,
      'isArchived': isArchived,
      'lastSeenApp': lastSeenApp,
      'lastSeenDriving': lastSeenDriving,
      'mapType': mapType,
      'organizationId': organizationId,
      'organizations': organizations,
      'permittedVehicles': permittedVehicles,
      'phone': phone,
      'purposes': purposes,
      'roles': roles,
      'userId': userId,
    };
}

class DevicesGetResponse {
  static String name = 'devices';

  final Int64 id; 
  final String imei; 
  final String deviceType; 
  final Int64 installedVehicle; 
  final Int64 organizationId; 
  final bool retired; 
  final bool isTracker; 
  final String? latestResponseFrequency; 
  final String? selectedResponseFrequency; 
  final Int64 physicalInstallTimestamp; 
  final String? goneMissing; 
  final DevicesStatus status;
   DevicesGetResponse.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',
      imei = json['imei'] ?? '',
      deviceType = json['deviceType'] ?? '',
      installedVehicle = json['installedVehicle'] ?? '',
      organizationId = json['organizationId'] ?? '',
      retired = json['retired'] ?? '',
      isTracker = json['isTracker'] ?? '',
      latestResponseFrequency = json['latestResponseFrequency'] ?? '',
      selectedResponseFrequency = json['selectedResponseFrequency'] ?? '',
      physicalInstallTimestamp = json['physicalInstallTimestamp'] ?? '',
      goneMissing = json['goneMissing'] ?? '',
      status = json['status'] ?? '';

      Map<String, dynamic> toJson() => {
        'id': id,
        'imei': imei,
        'deviceType': deviceType,
        'installedVehicle': installedVehicle,
        'organizationId': organizationId,
        'retired': retired,
        'isTracker': isTracker,
        'latestResponseFrequency': latestResponseFrequency,
        'selectedResponseFrequency': selectedResponseFrequency,
        'physicalInstallTimestamp': physicalInstallTimestamp,
        'goneMissing': goneMissing,
        'status': status,
      };
}

class DevicesStatus {
  final String timestampMs; 
  final String latestBatteryLevel; 

  DevicesStatus.fromJson(Map<String, dynamic> json)
      : timestampMs = json['timestampMs'] ?? '',
      latestBatteryLevel = json['latestBatteryLevel'] ?? '';

      Map<String, dynamic> toJson() => {
        'timestampMs': timestampMs,
        'latestBatteryLevel': latestBatteryLevel,
      };
}

class OrganizationSimpleGetResponse {
  static String name = 'organization-simple';

  final String fullName;
  final String organizationId;
  final String parentOrganization;

   OrganizationSimpleGetResponse.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'] ?? '',
      organizationId = json['organizationId'] ?? '',
      parentOrganization = json['parentOrganization'] ?? '';

    Map<String, dynamic> toJson() => {
      'fullName': fullName,
      'organizationId': organizationId,
      'parentOrganization': parentOrganization,
    };
}

class JournalGetResponse {
  static String name = 'journal';

  final List<List<JournalEntry>> journals;
  final Int64 minDist;

   JournalGetResponse.fromJson(Map<String, dynamic> json)
      : journals = json['journals'] ?? '',
      minDist = json['minDist'] ?? '';

    Map<String, dynamic> toJson() => {
      'journals': journals,
      'minDist': minDist,
    };
}

class JournalEntry {
  final Vehicle vehicle; 
  final Trip trip;
  final Driver driver;
  final Int64 organizationId;
  final bool merged;
  final String? congestionData;
  final String status;
  final String? congestionTaxSek;
  final String? congestionTaxSekOverride;
  final String? congestionTaxCount;
  final bool checkedForCongestion;
  final String? infraTaxSek;
  final String? infraTaxSekOverride;
  final String? infraTaxCount;
  final String? adminComment;
  final String? isBadTrip;
  final String? adminApproved;
  final String? devComment;
  final bool attested;
  final bool lightAttested;
  final String? correctedByDriver;
  final String? stopTimeBackwards;
  final Int64 journal_id;
  final GeoCode geocode_start;
  final GeoCode geocode_stop;
  final String override_start;
  final String override_stop;

  JournalEntry.fromJson(Map<String, dynamic> json)
    : vehicle = json['vehicle'] ?? '',
    trip = json['trip'] ?? '',
    driver = json['driver'] ?? '',
    organizationId = json['organizationId'] ?? '',
    merged = json['merged'] ?? '',
    congestionData = json['congestionData'] ?? '',
    status = json['status'] ?? '',
    congestionTaxSek = json['congestionTaxSek'] ?? '',
    congestionTaxSekOverride = json['congestionTaxSekOverride'] ?? '',
    congestionTaxCount = json['congestionTaxCount'] ?? '',
    checkedForCongestion = json['checkedForCongestion'] ?? '',
    infraTaxSek = json['infraTaxSek'] ?? '',
    infraTaxSekOverride = json['infraTaxSekOverride'] ?? '',
    infraTaxCount = json['infraTaxCount'] ?? '',
    adminComment = json['adminComment'] ?? '',
    isBadTrip = json['isBadTrip'] ?? '',
    adminApproved = json['adminApproved'] ?? '',
    devComment = json['devComment'] ?? '',
    attested = json['attested'] ?? '',
    lightAttested = json['lightAttested'] ?? '',
    correctedByDriver = json['correctedByDriver'] ?? '',
    stopTimeBackwards = json['stopTimeBackwards'] ?? '',
    journal_id = json['journal_id'] ?? '',
    geocode_start = json['geocode_start'] ?? '',
    geocode_stop = json['geocode_stop'] ?? '',
    override_start = json['override_start'] ?? '',
    override_stop = json['override_stop'] ?? '';

  Map<String, dynamic> toJson() => {
    'vehicle': vehicle, 
    'trip': trip, 
    'driver': driver, 
    'organizationId': organizationId, 
    'merged': merged, 
    'congestionData': congestionData, 
    'status': status, 
    'congestionTaxSek': congestionTaxSek, 
    'congestionTaxSekOverride': congestionTaxSekOverride, 
    'congestionTaxCount': congestionTaxCount, 
    'checkedForCongestion': checkedForCongestion, 
    'infraTaxSek': infraTaxSek, 
    'infraTaxSekOverride': infraTaxSekOverride, 
    'infraTaxCount': infraTaxCount, 
    'adminComment': adminComment, 
    'isBadTrip': isBadTrip, 
    'adminApproved': adminApproved, 
    'devComment': devComment, 
    'attested': attested, 
    'lightAttested': lightAttested, 
    'correctedByDriver': correctedByDriver, 
    'stopTimeBackwards': stopTimeBackwards, 
    'journal_id': journal_id, 
    'geocode_start': geocode_start, 
    'geocode_stop': geocode_stop, 
    'override_start': override_start, 
    'override_stop': override_stop, 
  };
}

class Vehicle {
  final String vehicleId;
  final String reg;
  final String type;
  final String co2GKm;
  final String fuelLKm;
  final String full_name;

  Vehicle.fromJson(Map<String, dynamic> json)
      : vehicleId = json['vehicleId'] ?? '',
    reg = json['reg'] ?? '',
    type = json['type'] ?? '',
    co2GKm = json['co2GKm'] ?? '',
    fuelLKm = json['fuelLKm'] ?? '',
    full_name = json['full_name'] ?? '';

    Map<String, dynamic> toJson() => {
      'vehicleId': vehicleId,
      'reg': reg,
      'type': type,
      'co2GKm': co2GKm,
      'fuelLKm': fuelLKm,
      'full_name': full_name,
    };
}

class Trip {
  final String coords;
  final String description;
  final String purpose;
  final String organizationId;
  final String totCo2Kg;
  final String totFuelL;
  final String fuelType;
  final String timestamp_start_ms;
  final String timestamp_stop_ms;
  final String odometer_start;
  final String odometer_stop;
  final String odometer_max;

  Trip.fromJson(Map<String, dynamic> json)
    : coords = json['coords'] ?? '',
    description = json['description'] ?? '',
    purpose = json['purpose'] ?? '',
    organizationId = json['organizationId'] ?? '',
    totCo2Kg = json['totCo2Kg'] ?? '',
    totFuelL = json['totFuelL'] ?? '',
    fuelType = json['fuelType'] ?? '',
    timestamp_start_ms = json['timestamp_start_ms'] ?? '',
    timestamp_stop_ms = json['timestamp_stop_ms'] ?? '',
    odometer_start = json['odometer_start'] ?? '',
    odometer_stop = json['odometer_stop'] ?? '',
    odometer_max = json['odometer_max'] ?? '';

  Map<String, dynamic> toJson() => {
    'coords': coords,
    'description': description,
    'purpose': purpose,
    'organizationId': organizationId,
    'totCo2Kg': totCo2Kg,
    'totFuelL': totFuelL,
    'fuelType': fuelType,
    'timestamp_start_ms': timestamp_start_ms,
    'timestamp_stop_ms': timestamp_stop_ms,
    'odometer_start': odometer_start,
    'odometer_stop': odometer_stop,
    'odometer_max': odometer_max,
  };
}

class Driver {
  final String id;
  final String displayName;
  final String isArchived;

  Driver.fromJson(Map<String, dynamic> json)
    : id = json['id'] ?? '',
    displayName = json['displayName'] ?? '',
    isArchived = json['isArchived'] ?? '';

  Map<String, dynamic> toJson() => {
    'id': id,    
    'displayName': displayName,
    'isArchived': isArchived,    
  };
}

class GeoCode {
  final String lookupId;
  final String streetName;
  final String streetNumber;
  final String place;
  final String format;

 GeoCode.fromJson(Map<String, dynamic> json)
    : lookupId = json['lookupId'] ?? '',
    streetName = json['streetName'] ?? '',
    streetNumber = json['streetNumber'] ?? '',
    place = json['place'] ?? '',
    format = json['format'] ?? '';

  Map<String, dynamic> toJson() => {
    'lookupId': lookupId,
    'streetName': streetName,
    'streetNumber': streetNumber,
    'place': place,
    'format': format,
  };
}

class NoMapViewGetResponse {
  final List<Int64> orgIds;

  NoMapViewGetResponse.fromJson(Map<String, dynamic> json)
    : orgIds = json['orgIds'] ?? '';

  Map<String, dynamic> toJson() => {
    'orgIds': orgIds,
    };
}