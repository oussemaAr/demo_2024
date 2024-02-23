class CoresModel {
    CoresModel({
        required this.coreSerial,
        required this.block,
        required this.status,
        required this.originalLaunch,
        required this.originalLaunchUnix,
        required this.missions,
        required this.reuseCount,
        required this.rtlsAttempts,
        required this.rtlsLandings,
        required this.asdsAttempts,
        required this.asdsLandings,
        required this.waterLanding,
        required this.details,
    });

    final String? coreSerial;
    final int? block;
    final String? status;
    final DateTime? originalLaunch;
    final int? originalLaunchUnix;
    final List<Mission> missions;
    final int? reuseCount;
    final int? rtlsAttempts;
    final int? rtlsLandings;
    final int? asdsAttempts;
    final int? asdsLandings;
    final bool? waterLanding;
    final String? details;

    factory CoresModel.fromJson(Map<String, dynamic> json){ 
        return CoresModel(
            coreSerial: json["core_serial"],
            block: json["block"],
            status: json["status"],
            originalLaunch: DateTime.tryParse(json["original_launch"] ?? ""),
            originalLaunchUnix: json["original_launch_unix"],
            missions: json["missions"] == null ? [] : List<Mission>.from(json["missions"]!.map((x) => Mission.fromJson(x))),
            reuseCount: json["reuse_count"],
            rtlsAttempts: json["rtls_attempts"],
            rtlsLandings: json["rtls_landings"],
            asdsAttempts: json["asds_attempts"],
            asdsLandings: json["asds_landings"],
            waterLanding: json["water_landing"],
            details: json["details"],
        );
    }

    Map<String, dynamic> toJson() => {
        "core_serial": coreSerial,
        "block": block,
        "status": status,
        "original_launch": originalLaunch?.toIso8601String(),
        "original_launch_unix": originalLaunchUnix,
        "missions": missions.map((x) => x?.toJson()).toList(),
        "reuse_count": reuseCount,
        "rtls_attempts": rtlsAttempts,
        "rtls_landings": rtlsLandings,
        "asds_attempts": asdsAttempts,
        "asds_landings": asdsLandings,
        "water_landing": waterLanding,
        "details": details,
    };

}

class Mission {
    Mission({
        required this.name,
        required this.flight,
    });

    final String? name;
    final int? flight;

    factory Mission.fromJson(Map<String, dynamic> json){ 
        return Mission(
            name: json["name"],
            flight: json["flight"],
        );
    }

    Map<String, dynamic> toJson() => {
        "name": name,
        "flight": flight,
    };

}
