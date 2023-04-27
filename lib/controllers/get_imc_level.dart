getImcLevel(double imc) {
  const imcLevels = [18.5, 24.9, 29.9, 34.9, 39.9];

  int imcLevel = imcLevels.indexWhere((level) => imc <= level);

  return imcLevel == -1 ? imcLevels.length : imcLevel;
}
