final int MENU_STATE    = 0;
final int PLAYING_STATE = 1;
final int PAUSED_STATE  = 2;
final int WON_STATE     = 3;

int gameState = MENU_STATE;

void setup() {
  fullScreen();

  loadFonts();
  loadImages();
  loadLevel();
}
void drawMenu() {
  background(0);
  fill(120,50,120);
  textAlign(CENTER, CENTER);
  textFont(hudFont);
  textSize(200);
  text("DUNGEONS", cx, cy);
  textSize(50);
  fill(255,0,0);
  text("Press  Enter  to  play", cx, cy + 100);
}

void drawWhilePlaying() {
  drawLevel();
  drawPlayer();
 
}

void drawWhilePaused() {
  background(0);
  fill(0,0,120);
  textFont(hudFont);
  textAlign(CENTER, CENTER);
  textSize(100);
  text("Press  Enter  to  Continue", cx, cy);
  fill(120, 0, 0);
  text("Press  ESC  to  Exit", cx, cy + 100);
}

void drawIfWon() {
  background(0);
  fill(120,50,120);
  textAlign(CENTER, CENTER);
  textFont(hudFont);
  textSize(200);
  text("You  Won", cx, cy);
  textSize(50);
  fill(255, 255, 255);
  text("Your  score " + playerScore, cx, cy + 100);
  fill(255, 0, 0);
  text("Press  Enter  to  Restart", cx, cy + 200);
  fill(0, 0, 255);
  text("Press  ESC  to  End", cx, cy + 300);
}

void draw() {
  switch (gameState) {
  case MENU_STATE:
    drawMenu();
    break;
  case PLAYING_STATE:
    drawWhilePlaying();
    break;
  case PAUSED_STATE:
    drawWhilePaused();
    break;
  case WON_STATE:
    drawIfWon();
    break;
  }
}

void keyPressed() {
  switch (gameState) {
  case MENU_STATE:
    keyPressedInMenu();
    break;
  case PLAYING_STATE:
    keyPressedWhilePlaying();
    break;
  case PAUSED_STATE:
    keyPressedOnPause();
    break;
  case WON_STATE:
    keyPressedIfWon();
    break;
  }
}
void keyPressedInMenu() {
  if (keyCode == ENTER) {
    gameState = PLAYING_STATE;
  }
}

void keyPressedWhilePlaying() {
  switch (keyCode) {
  case UP:
    movePlayer(0, -1);
    break;
  case DOWN:
    movePlayer(0, 1);
    break;
  case LEFT:
    movePlayer(-1, 0);
    break;
  case RIGHT:
    movePlayer(1, 0);
    break;
  case ENTER:
    gameState = PAUSED_STATE;
    break;
  }
}

void keyPressedOnPause() {
  if (keyCode == ENTER) {
    gameState = PLAYING_STATE;
  }
}

void keyPressedIfWon() {
  if (keyCode == ENTER) {
    gameState = MENU_STATE;
    playerScore = 0;
  }
}
