class DetermineNameModel {
  String? name;
  String? gender;
  num? probability;
  int? count;

  DetermineNameModel({this.gender = "", this.name = "", this.probability = 0, this.count = 0});

  factory DetermineNameModel.fromJson(Map<String, dynamic> data) {
    return DetermineNameModel(
      gender: data['gender'],
      name: data['name'],
      probability: data['probability'],
      count: data['count'],
    );
  }

  Map<String, dynamic> toJson() => 
  {
    'name' : name,
    'probability' : probability,
    'gender' : gender,
    'count' : count,
  };
}