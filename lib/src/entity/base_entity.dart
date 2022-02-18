
class BaseEntity {

  final DateTime createTime;
  final DateTime updateTime;

  BaseEntity(
      this.updateTime, {
        DateTime? createTime,
      }) : createTime = createTime ?? DateTime.now();

  @override
  List<Object> get props => [];
}