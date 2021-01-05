final int SCORE_POINTS_FOR_COIN = 1;

int playerX;
int playerY;

int playerScore = 0;

void initPlayer(int initialX, int initialY) {
  playerX = initialX;
  playerY = initialY;
}

void movePlayer(int dx, int dy) {
  int nextX = playerX + dx;
  int nextY = playerY + dy;

  char cell = level[nextY][nextX];
  if (cell == DOOR) {
    loadLevel();
  } else if (cell != WALL) {
    playerX = nextX;
    playerY = nextY;
    if (cell == COIN) {
      playerScore += SCORE_POINTS_FOR_COIN;
      level[playerY][playerX] = FLOOR;
    }
  }
}

void drawPlayer() {
  int screenX = centerShiftX + playerX * cellSize;
  int screenY = centerShiftY + playerY * cellSize;

  playerSprite.draw(screenX, screenY, cellSize, cellSize);
}
