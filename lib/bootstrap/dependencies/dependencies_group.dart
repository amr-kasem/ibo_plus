abstract class DependenciesGroup {
  const DependenciesGroup();
  Future<void> setupDependencies();
  Future<void> updateDependencies(Map<String, dynamic> updateInfo);
}
