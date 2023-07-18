int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  teamA.update('Free throws', (value) => value * 1, ifAbsent: () => 0);
  teamB.update('Free throws', (value) => value * 1, ifAbsent: () => 0);

  teamA.update('2 pointer', (value) => value * 2, ifAbsent: () => 0);
  teamB.update('2 pointer', (value) => value * 2, ifAbsent: () => 0);

  teamA.update('3 pointer', (value) => value * 3, ifAbsent: () => 0);
  teamB.update('3 pointer', (value) => value * 3, ifAbsent: () => 0);

  var teamAScore = teamA.values.reduce((a, b) => a + b);
  var teamBScore = teamB.values.reduce((a, b) => a + b);

  return teamAScore.compareTo(teamBScore);
}
