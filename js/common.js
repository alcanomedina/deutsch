function normalize(s) {
  return s.normalize('NFD').replace(/[̀-ͯ]/g, '');
}

/**
 * Fisher-Yates shuffle — returns a new shuffled array.
 * Does NOT mutate the input.
 */
function shuffleArray(arr) {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}
