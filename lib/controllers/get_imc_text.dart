getImcText(int imcLevel) {
  const imcTexts = [
    'abaixo do peso',
    'normal',
    'acima do peso',
    'obesidade grau 1',
    'obesidade grau 2',
    'obesidade grau 3'
  ];

  return imcTexts[imcLevel];
}
