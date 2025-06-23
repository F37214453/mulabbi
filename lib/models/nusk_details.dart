class nusks_details {
  String? type;
  List<Steps>? steps;

  nusks_details({this.type, this.steps});

  nusks_details.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['steps'] != null) {
      steps = <Steps>[];
      json['steps'].forEach((v) {
        steps!.add(Steps.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    if (steps != null) {
      data['steps'] = steps!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Steps {
  String? timing;
  List<Details>? details;

  Steps({this.timing, this.details});

  Steps.fromJson(Map<String, dynamic> json) {
    timing = json['timing'];
    if (json['details'] != null) {
      details = <Details>[];
      json['details'].forEach((v) {
        details!.add(Details.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timing'] = timing;
    if (details != null) {
      data['details'] = details!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  String? highlight;
  String? description;

  Details({this.highlight, this.description});

  Details.fromJson(Map<String, dynamic> json) {
    highlight = json['highlight'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['highlight'] = highlight;
    data['description'] = description;
    return data;
  }
}
