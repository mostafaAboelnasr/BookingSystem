class departmentModel{
  int? id;
  String? name;
  
  departmentModel(this.id, this.name);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
    };
  }

  @override
  String toString() {
    return 'departmentModel{id: $id, name: $name}';
  }
}