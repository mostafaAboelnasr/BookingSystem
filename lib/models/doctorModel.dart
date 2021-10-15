class doctorModel {
  int? id, departmentId;
  String? name;

  doctorModel(this.id, this.departmentId, this.name);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'departmentId': departmentId,
    };
  }

  @override
  String toString() {
    return 'doctorModel{id: $id, departmentId: $departmentId, name: $name}';
  }
}
