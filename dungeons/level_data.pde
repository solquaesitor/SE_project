final char WALL   = '#';
final char FLOOR  = ' ';
final char DOOR   = 'D';
final char COIN   = 'C';
final char PLAYER = 'P';

char[][] LEVEL_1 = {
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'P', ' ', ' ', 'C', ' ', ' ', 'D', '#' },
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' }
};

char[][] LEVEL_2 = {
  { '#', '#', '#', '#', '#' },
  { '#', 'P', ' ', ' ', '#' },
  { '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', '#', '#' },
  { '#', ' ', '#', '#', '#' },
  { '#', ' ', ' ', ' ', '#' },
  { '#', '#', '#', 'D', '#' },
  { '#', '#', '#', '#', '#' }
};

char[][] LEVEL_3 = {
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'P', '#', 'D', ' ', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', '#', '#', '#', '#', ' ', '#' },
  { '#', ' ', '#', 'C', ' ', ' ', '#', ' ', '#' },
  { '#', ' ', '#', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', '#', ' ', '#', 'C', '#' },
  { '#', '#', '#', ' ', '#', ' ', '#', ' ', '#' },
  { '#', 'C', '#', ' ', '#', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', ' ', '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#' },
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' }
};

char[][] LEVEL_4 = {
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'P', ' ', ' ', ' ', ' ', ' ', ' ', '#' },
  { '#', '#', '#', '#', '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', '#', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', ' ', '#', ' ', '#', ' ', '#' },
  { '#', 'C', '#', ' ', '#', ' ', '#', 'C', '#' },
  { '#', '#', '#', ' ', '#', ' ', '#', '#', '#' },
  { '#', 'D', '#', ' ', '#', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', ' ', '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', 'C', ' ', ' ', '#' },
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' }
};

char[][] LEVEL_5 = {
  { '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'C', '#' },
  { '#', ' ', '#', '#', '#', '#', '#', ' ', '#', '#', ' ', '#', '#', '#' },
  { '#', 'C', '#', '#', 'C', '#', '#', ' ', '#', 'C', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', '#', ' ', '#', '#', '#', ' ', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', '#', ' ', '#', 'C', '#', ' ', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', '#', 'C', '#', ' ', '#', ' ', 'C', '#', 'C', '#', ' ', '#' },
  { '#', ' ', '#', '#', '#', ' ', '#', '#', '#', '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'P', '#', 'D', '#' },
  { '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#' }
};

char[][][] LEVELS = {
  LEVEL_1,
  LEVEL_2,
  LEVEL_3,
  LEVEL_4,
  LEVEL_5
};
