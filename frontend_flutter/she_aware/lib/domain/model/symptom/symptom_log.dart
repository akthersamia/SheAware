class SymptomLog {
  final int id;
  final String? entryTime;
  final List<Symptom>? symptoms;
  final int? painIntensity;
  final String? mood;
  final String? notes;
  final ScoreSnapshot? scoreSnapshot;

  SymptomLog({
    required this.id,
    required this.entryTime,
    required this.symptoms,
    required this.painIntensity,
    required this.mood,
    required this.notes,
    required this.scoreSnapshot,
  });
}

class Symptom {
  final String? name;
  final int? severity;
  final int? durationValue;
  final String? durationUnit;

  Symptom({
    required this.name,
    required this.severity,
    required this.durationValue,
    required this.durationUnit,
  });
}

class ScoreSnapshot {
  final int? score;
  final String? category;
  final List<String>? flags;
  final String? explanation;
  final String? createdAt;

  ScoreSnapshot({
    required this.score,
    required this.category,
    required this.flags,
    required this.explanation,
    required this.createdAt,
  });
}
