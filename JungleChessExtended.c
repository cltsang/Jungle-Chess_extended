#include <ncurses.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_DIGIT_OF_DIMENSION 2
#define TOP_MARGIN 3
#define LEFT_MARGIN 6
#define SQUARE_HEIGHT 2
#define SQUARE_WIDTH 4
#define NUM_ROW 15
#define NUM_COL 15
#define NUM_PLAYER 4

struct CHESS{
	int player;
	char name;
	bool isAlive;
	int row;
	int col;
};

struct CHESS **player;
struct CHESS *monster;
int input;
int turn;
int cursorRow, cursorCol;
struct CHESS *selectedChess;
bool playerAlive[4];

/*
 * find the maximum of two integers
 */
int max(int num1, int num2){
	if(num1 > num2)
		return num1;
	else return num2;
}

/*
 * find the minimum of two integers
 */
int min(int num1, int num2){
	if(num1 < num2)
		return num1;
	else return num2;
}

/*
 * input the y coordinate on the board, return the y for drawing
 */
int yScreen(int row){
	return (TOP_MARGIN + (row-1) * SQUARE_HEIGHT);
}

/*
 * input the x coordinate on the board, return the x for drawing
 */
int xScreen(int col){
	return (LEFT_MARGIN + (col-1) * SQUARE_WIDTH);
}

struct CHESS * chessAt(int row, int col){
	int countP, countC;
	
	/* the monster */
	if(monster->row == row && monster->col==col)
		return monster;
	/* players' chess */
	for(countP=0; countP<NUM_PLAYER; countP++)
		for(countC=0; countC<9; countC++){
			struct CHESS *chess = &(player[countP][countC]);
			if(chess->isAlive && chess->row==row && chess->col==col)
				return chess;
		}
		
	return NULL;
}

void displayMessage(char *msg){
	int x;
	attron(COLOR_PAIR(1));
	mvprintw(yScreen(NUM_ROW + 2), 0, "%s", msg);
	for(x=strlen(msg); x<xScreen(NUM_COL + 1); x++)
		mvaddch(yScreen(NUM_ROW + 2), x, ' ');
	refresh();
}

bool isNextToRiver(int row, int col){
	if((row==5 || row==11) && col==8)
		return true;
	if((row==6 || row==10)&& (col==7 || col==9))
		return true;
	if((row==7 || row==9) && (col==6 || col==10))
		return true;
	if(row==8 && (col==5 || col==8 || col==11))
		return true;
	return false;
}

bool isRiver(int row, int col){
	if((row==6 || row==10) && col==8)
		return true;
	if((row==7 || row==9) && col>=7 && col<=9)
		return true;
	if(row==8 && (col==6 || col==7 || col==9 || col==10))
		return true;
	return false;
}

bool intendToCrossRiver(){
	if(selectedChess == NULL)
		return false;
	/* the chess is not by the river */
	if(!isNextToRiver(selectedChess->row, selectedChess->col))
		return false;
	/* the intended drop location is not by the river */
	if(!isNextToRiver(cursorRow, cursorCol))
		return false;
	/* no chess can cross the river neither horizontally nor vertically */
	if(cursorRow!=selectedChess->row && cursorCol!=selectedChess->col)
		return false;
	/* skipping the central ground */
	if(max(cursorRow, selectedChess->row) - min(cursorRow, selectedChess->row) > 3
	|| max(cursorCol, selectedChess->col) - min(cursorCol, selectedChess->col) > 3)
		return false;

	return true;
}

/*
 * determine if the supplied coordinate is within the chessboard
 */
bool isInsideChessBoard(int row, int col){
	int numSquare = 1;
	int y, x;
	for(x=1; x<=15; x++){
		for(y=8-numSquare; y<=8+numSquare; y++){
			if(y==row && x==col)
				return true;
		}
		if(x < 7)
			numSquare++;
		if(x > 8)
			numSquare--;
	}
	return false;
}

int whoseTrap(int row, int col){
	if((row==14 && col==8) || (row==15 && (col==7 || col==9)))
		return 1;
	if((col==2 && row==8) || (col==1 &&(row==7 || row==9)))
		return 2;
	if((row==2 && col==8) || (row==1 && (col==7 || col==9)))
		return 3;
	if((col==14 && row==8) || (col==15 &&(row==7 || row==9)))
		return 4;
	return 0;
}

int whoseDen(int row, int col){
	if(row==15 && col==8)
		return 1;
	if(row==8 && col==1)
		return 2;
	if(row==1 && col==8)
		return 3;
	if(row==8 && col==15)
		return 4;
	return 0;
}

/*
 * draw the dens, traps, and river
 */
void drawMarkings(){
	int row, col;
	attron(COLOR_PAIR(1));
	
	for(col=1; col<=NUM_COL; col++)
		for(row=1; row<=NUM_ROW; row++){
			if(isRiver(row, col))
				mvprintw(yScreen(row), xScreen(col)-1, "~~~");
			if(whoseTrap(row, col) != 0)
				mvprintw(yScreen(row), xScreen(col)-1, "###");
			if(whoseDen(row, col) != 0)
				mvaddch(yScreen(row), xScreen(col), 'O');
		}
}

/*
 * draw a square
 */
void drawSquare(int row, int col){
	int y, x;
	int top = yScreen(row)-SQUARE_HEIGHT/2;
	int bottom = yScreen(row)+SQUARE_HEIGHT/2;
	int left = xScreen(col)-SQUARE_WIDTH/2;
	int right = xScreen(col)+SQUARE_WIDTH/2;

	attron(COLOR_PAIR(1));
	/* draw the borders of the square, except the corners */
	for(y=top+1; y<bottom; y++){
		mvaddch(y, left, '|');
		mvaddch(y, right, '|');
	}
	for(x=left+1; x<right; x++){
		mvaddch(top, x, '-');
		mvaddch(bottom, x, '-');
	}
	/* handle the corners */
	move(top, left);
	if((char)inch() != ' ')
		mvaddch(top, left, ACS_PLUS);
	else
		mvaddch(top, left, ACS_ULCORNER);
	move(top, right);
	if((char)inch() == ' ')
		mvaddch(top, right, ACS_URCORNER);
	else
		mvaddch(top, right, ACS_PLUS);
	move(bottom, left);
	if((char)inch() == ' ')
		mvaddch(bottom, left, ACS_LLCORNER);
	else
		mvaddch(bottom, left, ACS_PLUS);
	move(bottom, right);
	if((char)inch() == ' ')
		mvaddch(bottom, right, ACS_LRCORNER);
	else
		mvaddch(bottom, right, ACS_PLUS);
}

/*
 * draw the chess board
 */
void drawChessBoard(){
	int row, col;
	int numSquare = 1;

	attron(COLOR_PAIR(1));
	/* draw the squares */
	for(col=1; col<=NUM_COL; col++){
		for(row=1; row<=NUM_ROW; row++){
			if(isInsideChessBoard(row, col))
				drawSquare(row, col);
		}
		if(col < 7)
			numSquare++;
		if(col > 8)
			numSquare--;
	}
	/* handle the edges */
	for(row=1; row<NUM_ROW; row++){
		int x, y = yScreen(row)+SQUARE_HEIGHT/2;
		char c;
		/* vertical left */
		x = xScreen(1)-SQUARE_WIDTH/2;
		move(y, x);
		c = inch();
		if(c != 'l' && c != 'm' && c != ' ')
			mvaddch(y, x, ACS_LTEE);
		/* vertical right */
		x = xScreen(NUM_COL)+SQUARE_WIDTH/2;
		move(y, x);
		c = inch();
		if(c != 'k' && c != 'j' && c != ' ')
			mvaddch(y, x, ACS_RTEE);
	}
	for(col=1; col<NUM_COL; col++){
		int y, x = xScreen(col)+SQUARE_WIDTH/2;
		char c;
		/* vertical left */
		y = yScreen(1)-SQUARE_HEIGHT/2;
		move(y, x);
		c = inch();
		if(c != 'l' && c != 'k' && c != ' ')
			mvaddch(y, x, ACS_TTEE);
		/* vertical right */
		y = yScreen(NUM_ROW)+SQUARE_HEIGHT/2;
		move(y, x);
		c = inch();
		if(c != 'm' && c != 'j' && c != ' ')
			mvaddch(y, x, ACS_BTEE);
	}
}

/*
 * draw a window of size NUM_ROW x NUM_COL
 * assume that NUM_ROW and NUM_COL are under 100
 */
void drawWindow(){
	int row, col;

	attron(COLOR_PAIR(1));
	/* the board */
	for(row=0; row<=yScreen(NUM_ROW+1); row++)
		for(col=0; col<=xScreen(NUM_COL+1); col++)
			mvaddch(row, col, ' ');

	/* the x coordinate index */
	for(col=1; col<=NUM_COL; col++)
		mvprintw(0, xScreen(col), "%d", col);
	/* the y coordinate index */
	for(row=1; row<=NUM_ROW; row++)
		mvprintw(yScreen(row), 0, "%d", row);

	/* the window border */
	for(col=2; col<xScreen(NUM_COL+1); col++){
		mvaddch(1, col, ACS_HLINE);
		mvaddch(yScreen(NUM_ROW+1), col, ACS_HLINE);
	}
	for(row=1; row<yScreen(NUM_ROW+1); row++){
		mvaddch(row, 2, ACS_VLINE);
		mvaddch(row, xScreen(NUM_COL+1), ACS_VLINE);
	}
	/* the corners */
	mvaddch(1, 2, ACS_ULCORNER);
	mvaddch(1, xScreen(NUM_COL+1), ACS_URCORNER);
	mvaddch(yScreen(NUM_ROW+1), 2, ACS_LLCORNER);
	mvaddch(yScreen(NUM_ROW+1), xScreen(NUM_COL+1), ACS_LRCORNER);
}

void drawChess(){
	int countP, countC;
	/* players' chess */
	for(countP=0; countP<NUM_PLAYER; countP++){
		/* colour for player 1 is 11, for 2 is 12, etc. */
		attron(COLOR_PAIR(10+player[countP][0].player));
		for(countC=0; countC<9; countC++){
			struct CHESS *chess = &(player[countP][countC]);
			if(chess->isAlive)
				mvaddch(yScreen(chess->row), xScreen(chess->col), chess->name);
		}
	}
	/* the monster */
	attron(COLOR_PAIR(10+monster->player));
	mvaddch(yScreen(monster->row), xScreen(monster->col), monster->name);
	
	if(selectedChess != NULL)
		mvchgat(yScreen(selectedChess->row), xScreen(selectedChess->col), 1, A_REVERSE, 10 + selectedChess->player, NULL);
}

void highlightCursor(){
	int y, x;
	int top = yScreen(cursorRow)-SQUARE_HEIGHT/2;
	int bottom = yScreen(cursorRow)+SQUARE_HEIGHT/2;
	int left = xScreen(cursorCol)-SQUARE_WIDTH/2;
	int right = xScreen(cursorCol)+SQUARE_WIDTH/2;
	attron(COLOR_PAIR(1));
	attron(A_REVERSE);
	for(y=top; y<=bottom; y++)
		for(x=left; x<=right; x++){
			move(y, x);
			char c = inch();
			if(c == 'l')
				mvaddch(y, x, ACS_ULCORNER);
			else if(c == 'n')
				mvaddch(y, x, ACS_PLUS);
			else if(c == 'm')
				mvaddch(y, x, ACS_LLCORNER);
			else if(c == 'k')
				mvaddch(y, x, ACS_URCORNER);
			else if(c == 'j')
				mvaddch(y, x, ACS_LRCORNER);
			else if(c == 'w')
				mvaddch(y, x, ACS_TTEE);
			else if(c == 'v')
				mvaddch(y, x, ACS_BTEE);
			else if(c == 't')
				mvaddch(y, x, ACS_LTEE);
			else if(c == 'u')
				mvaddch(y, x, ACS_RTEE);
			else
				mvaddch(y, x, c);
		}
	attroff(A_REVERSE);
		
	/*
	for(y=cursory-1; y<=cursory+1; y++)
		mvchgat(y, cursorx-2, 5, A_REVERSE, 3, NULL);
	*/
}

void handleCursorMovement(){
	switch(input){
		case KEY_UP:
			if(isInsideChessBoard(cursorRow-1, cursorCol))
				cursorRow =  cursorRow - 1;
			break;
		case KEY_DOWN:
			if(isInsideChessBoard(cursorRow+1, cursorCol))
				cursorRow =  cursorRow + 1;
			break;
		case KEY_LEFT:
			if(isInsideChessBoard(cursorRow, cursorCol-1))
				cursorCol =  cursorCol - 1;
			break;
		case KEY_RIGHT:
			if(isInsideChessBoard(cursorRow, cursorCol+1))
				cursorCol =  cursorCol + 1;
			break;
		default:
			break;
	}
}

/*
 * handling picking up and dropping
 */
void handleSelection(){
	char buff[66];
	struct CHESS *chess = chessAt(cursorRow, cursorCol);
	if(input != ' ')
		return;
	/* drop the current selection */
	if(selectedChess != NULL){
		if(selectedChess->row==cursorRow && selectedChess->col==cursorCol){
			sprintf(buff, "Player %d dropped the %c", turn, selectedChess->name);
			selectedChess = NULL;
			displayMessage(buff);
		}
	}
	/* pick up a chess piece */
	else if(chess != NULL){
		if(chess->player == turn){
			selectedChess = chessAt(cursorRow, cursorCol);
			sprintf(buff, "Player %d  picked up %c", turn, selectedChess->name);
		}
		else
			sprintf(buff, "opponent's chess, pick again");
		displayMessage(buff);
	}
}

void refreshDisplay(){
	drawWindow();
	drawChessBoard();
	drawMarkings();
	highlightCursor();
	drawChess();
	refresh();
}

/*
 * if there are overlaping pieces, remove the opponent's
 */
void handleCapture(){
	int countPlayer, countChess;
	/* only one chess is moved in each turn, so just consider this against others */
	struct CHESS *movedChess = chessAt(cursorRow, cursorCol);
	if(movedChess == NULL)
		return;
	for(countPlayer=0; countPlayer<NUM_PLAYER; countPlayer++){
		/* ignore chess of the same player */
		if(countPlayer == turn-1)
			continue;
		for(countChess=0; countChess<9; countChess++){
			struct CHESS *chess = &(player[countPlayer][countChess]);
			/* kill the captured chess */
			if(movedChess->row == chess->row && movedChess->col==chess->col){
				chess->isAlive = false;
				return;
			}
		}
	}
}

/*
 * the chess piece has entered a trap on its side
 */
bool isPromoted(struct CHESS *chess){
	if(chess == NULL)
		return false;
	/* the chess is placed in its own trap */
	if(chess->player == whoseTrap(chess->row, chess->col))
		return true;
	/* the monster is considered promoted anyway */
	else if(chess->name == 'M')
		return true;
	return false;
}

/*
 * the chess piece has entered a trap of the opponents'
 */
bool isDemoted(struct CHESS *chess){
	int trap;
	if(chess == NULL)
		return false;
	trap = whoseTrap(chess->row, chess->col);
	/* the chess is in a trap */
	if(trap > 0)
		/* the trap does not belong to the player of this chess */
		if(chess->player != trap)
			return true;

	return false;
}

bool gameEnded(){
	int count;
	int aliveCount = 0;
	if(input=='q' || input=='Q'){
		displayMessage("Game exited, type to exit");
		return true;
	}
	for(count=0; count<NUM_PLAYER; count++)
		if(playerAlive[count] == true)
			aliveCount = aliveCount + 1;
	if(aliveCount == 1){
		displayMessage("Game ended, type to exit");
		return true;
	}
	return false;
}

void handleLose(){
	int countP, countC;
	for(countP=0; countP<NUM_PLAYER; countP++){
		bool allDead = true;
		for(countC=0; countC<9; countC++){
			if(player[countP][countC].isAlive == false)
				continue;
			allDead = false;
			int den = whoseDen(player[countP][countC].row, player[countP][countC].col);
			if(den > 0 && den != countP+1)
				playerAlive[den-1] = false;
		}
		if(allDead)
			playerAlive[countP] = false;
		if(playerAlive[countP] == false){
			for(countC=0; countC<9; countC++)
				player[countP][countC].isAlive = false;
		}
	}
}

void changeTurn(int newTurn){
	char msg[66];
	while(true){
		if(newTurn <= 0){
			if(turn <= NUM_PLAYER)
				turn = turn + 1;
			else
				turn = 1;
		}
		else
			turn = newTurn;
			
		if(playerAlive[turn-1] == true)
			break;
	}
	sprintf(msg, "Player %d, its your turn", turn);
	displayMessage(msg);
}

bool noConflictWithMyChess(char *msg){
	struct CHESS *chess = chessAt(cursorRow, cursorCol);
	/* no chess at all on cursor spot */
	if(chess == NULL)
		return true;
	/* the chess does not belong to the player */
	if(chess->player != turn)
		return true;
	sprintf(msg, "cannot step on your chess");
	return false;
}


/*
 * check if the player intend to move the chess to his own den
 */
bool notInSelfDen(char *msg){
	int den = whoseDen(cursorRow, cursorCol);
	/* the cursor is not on any den */
	if(den == 0)
		return true;
	/* the cursor is on a den of the player */
	if(den != turn)
		return true;
	sprintf(msg, "Cannot move to your own den");
	return false;
}

/*
 * check if the chess is able to step on river
 */
bool canStepOnRiver(char *msg){
	if(selectedChess == NULL)
		return true;
	/* check to see if the cursor is in river */
	if(isRiver(cursorRow, cursorCol) == false)
		return true;

	if(selectedChess->name == 'R' || selectedChess->name == 'C' || selectedChess->name == 'M')
		return true;
	sprintf(msg, "%c cannot step on river", selectedChess->name);
	return false;
}

/*
 * check if there is no chess between the chess and the position of the cursor
 */
bool noObstacleInTheWay(char *msg){
	int count;
	bool returnValue = true;
	int verticalDifference = max(selectedChess->row, cursorRow) - min(selectedChess->row, cursorRow);
	int horizontalDifference = max(selectedChess->col, cursorCol) - min(selectedChess->col, cursorCol);

	/* the movement is not either vertical or horizontal */
	if(verticalDifference != 0 && horizontalDifference != 0)
		return true;

	/* the movement is vertical */
	for(count=min(selectedChess->row, cursorRow)+1; count<max(selectedChess->row, cursorRow); count++)
		if(chessAt(count, cursorCol) != NULL)
			returnValue = false;

	/* the movement is horizontal */
	for(count=min(selectedChess->col, cursorCol)+1; count<max(selectedChess->col, cursorCol); count++)
		if(chessAt(cursorRow, count) != NULL)
			returnValue = false;

	if(returnValue == false)
		sprintf(msg, "There is an obstacle in the way");
	return returnValue;
}

/*
 * check if the capture is valid
 */
bool canCapture(char *msg){
	struct CHESS *target = chessAt(cursorRow, cursorCol);
	if(target == NULL || selectedChess == NULL)
		return true;
	char predator = selectedChess->name;
	char prey = target->name;
	
	/* monster cannot be captured */
	if(target->name == 'M'){
		sprintf(msg, "Monster cannot be captured");
		return false;
	}
	/* a chess in its own trap cannot be captured */
	if(whoseTrap(target->row, target->col) == target->player){
		sprintf(msg, "The target is in its own trap");
		return false;
	}
	/* the selected chess is in opponent's trap */
	if(isDemoted(selectedChess)){
		sprintf(msg, "Cannot capture in a trap");
		return false;
	}
	/* monster can capture any chess */
	if(selectedChess->name == 'M' && !isPromoted(target))
		return true;

	/* the target or the selected chess is in player's trap */
	if(isDemoted(target) || isPromoted(selectedChess))
		return true;

	/* target is in the river and the selected chess is not a rat */
	if(isRiver(target->row, target->col) && selectedChess->name!='R'){
		sprintf(msg, "%c cannot capture a %c in river", predator, prey);
		return false;
	}

	switch(predator){
		case 'C':
			return true;
			break;
		case 'E':
			if(prey=='E'||prey=='L'||prey=='T'||prey=='J'||prey=='W'||prey=='D'||prey=='S')
				return true;
			break;
		case 'L':
			if(prey=='L'||prey=='T'||prey=='J'||prey=='W'||prey=='D'||prey=='S')
				return true;
			if(prey=='R' && isRiver(target->row, target->col)==false)
				return true;
			break;
		case 'T':
			if(prey=='T'||prey=='J'||prey=='W'||prey=='D'||prey=='S'||prey=='R')
				return true;
			break;
		case 'J':
			if(prey=='J'||prey=='W'||prey=='D'||prey=='S'||prey=='R')
				return true;
			break;
		case 'W':
			if(prey=='W'||prey=='D'||prey=='S'||prey=='R')
				return true;
			break;
		case 'D':
			if(prey=='D'||prey=='S'||prey=='R')
				return true;
			break;
		case 'S':
			if(prey=='S'||prey=='R')
				return true;
			break;
		case 'R':
			if(prey=='R')
				return true;
			
			if(prey=='E'){
				/* rat cannot capture elephant if it is in the river */
				if(isRiver(selectedChess->row, selectedChess->col)){
					sprintf(msg, "R in river cannot capture E");
					return false;
				}
				else
					return true;
			}
			break;
	}
	sprintf(msg, "%c cannot capture an %c", predator, prey);
	return false;
}

/*
 * check if the target place is too far away
 */
bool isReachable(char *msg){
	/* Crocodile can only move near the river */
	if(selectedChess->name == 'C')
		if(isRiver(cursorRow, cursorCol)==false && isNextToRiver(cursorRow, cursorCol)==false){
			sprintf(msg, "Crocodle can only move near the river");
			return false;
		}
	/* move vertically one step */
	if(max(selectedChess->row, cursorRow) - min(selectedChess->row, cursorRow) == 1){
		if(selectedChess->col == cursorCol)
			return true;
	}
	/* move horizontally one step */
	if(max(selectedChess->col, cursorCol) - min(selectedChess->col, cursorCol) == 1){
		if(selectedChess->row == cursorRow)
			return true;
	}
	/* supercat and monster can move diagonally */
	if(selectedChess->name=='S' || selectedChess->name=='M'){
		if((max(selectedChess->row, cursorRow) - min(selectedChess->row, cursorRow) == 1)
		&& (max(selectedChess->col, cursorCol) - min(selectedChess->col, cursorCol) == 1))
				return true;
	}
	/* Tiger and Lion can jump across the river */
	if(selectedChess->name=='L' || selectedChess->name=='T'){
		if(intendToCrossRiver())
			return true;
	}

	sprintf(msg, "Cannot move that far");
	return false;
}

/*
 * check conditions to verify whether the move is valid
 */
bool theMoveIsValid(bool (**conditions)(char *), int numberOfConditions){
	int count;
	/* if currently no chess is picked up, then there is no need to verify */
	if(selectedChess == NULL)
		return false;
	/* if the input is space, then there is no need to verify */
	if(input != ' ')
		return false;
	/* if the dropping is handled by handleSelection called by runGame */
	if(cursorRow == selectedChess->row && cursorCol == selectedChess->col)
		return false;
	/* check all conditions */
	for(count=0; count<numberOfConditions; count++){
		char msg[66];
		bool valid = (*conditions[count])(msg);
		if(!valid){
			displayMessage(msg);
			return false;
		}
	}
	return true;
}

/*
 * register condition checkers
 */
int initializeConditionCheckers(bool (***conditions)(char *)){
	int count = 0;
	*conditions = malloc(sizeof(bool (*)(char*)) * 6);
	(*conditions)[count++] = &noConflictWithMyChess;
	(*conditions)[count++] = &notInSelfDen;
	(*conditions)[count++] = &canStepOnRiver;
	(*conditions)[count++] = &noObstacleInTheWay;
	(*conditions)[count++] = &canCapture;
	(*conditions)[count++] = &isReachable;
	return count;
}

void moveMonster(){
	while(true){
		/* generate a random number 0 to 7 */
		int direction = (rand()%8);
		int newRow, newCol;
		switch(direction){
			case 0: /* upwards */
				newRow = monster->row - 1;
				break;
			case 1: /* to upper-right */
				newRow = monster->row - 1;
				newCol = monster->col + 1;
				break;
			case 2: /* to the right */
				newCol = monster->col + 1;
				break;
			case 3: /* to lower-right */
				newRow = monster->row + 1;
				newCol = monster->col + 1;
				break;
			case 4: /* downwards */
				newRow = monster->row + 1;
				break;
			case 5: /* to lower-left */
				newRow = monster->row + 1;
				newCol = monster->col - 1;
				break;
			case 6: /* to the left */
				newCol = monster->col - 1;
				break;
			case 7: /* to upper-left */
				newRow = monster->row - 1;
				newCol = monster->col - 1;
				break;
		}
		if(isInsideChessBoard(newRow, newCol)){
			struct CHESS *chess = chessAt(newRow, newCol);
			/* even the monster cannot capture a chess in its own trap */
			if(chess!=NULL && isPromoted(chess))
				continue;
			monster->row = newRow;
			monster->col = newCol;
			return;
		}
	}
}

void runGame(){
	bool (**conditions)(char *);
	int numberOfConditions = initializeConditionCheckers(&conditions);
	/* put the cursor to the required initial position */
	cursorRow = 11;
	cursorCol = 8;
	input = '\0';
	selectedChess = NULL;
	changeTurn(1);
	refreshDisplay();
	while(true){
		if(gameEnded()){
			getchar();
			return;
		}
		if(turn <= NUM_PLAYER){			
			input = getch();
			handleCursorMovement();
			handleSelection();
		
			/* drop the piece at spot if the move is valid */
			if(theMoveIsValid(conditions, numberOfConditions)){
				char msg[66];
				sprintf(msg, "Moved %c", selectedChess->name);
				displayMessage(msg);
				selectedChess->row = cursorRow;
				selectedChess->col = cursorCol;
				selectedChess = NULL;
				handleCapture();
				handleLose();
				changeTurn(0);
			}
		}
		else{
			moveMonster();
			cursorRow = monster->row;
			cursorCol = monster->col;
			handleCapture();
			handleLose();
			changeTurn(0);
		}
		refreshDisplay();
	};
	free(conditions);
}

/*
 * initialize a CHESS struct variable
 */
void initializeChess(struct CHESS* piece, int player, char name, int row, int col){
	piece->player = player;
	piece->name = name;
	piece->isAlive = true;
	piece->row = row;
	piece->col = col;
}

void initializePlayer(){
	int count;
	player = malloc(NUM_PLAYER * sizeof(struct CHESS*));
	for(count=0; count<NUM_PLAYER; count++){
		/* number of chess a player has is 9 */
		player[count] = malloc(9 * sizeof(struct CHESS));
		playerAlive[count] = true;
	}
	/* player blue */
	initializeChess(player[0]+0, 1, 'C', 11, 8);
	initializeChess(player[0]+1, 1, 'E', 13, 5);
	initializeChess(player[0]+2, 1, 'L', 14, 10);
	initializeChess(player[0]+3, 1, 'T', 14, 6);
	initializeChess(player[0]+4, 1, 'J', 12, 10);
	initializeChess(player[0]+5, 1, 'W', 12, 6);
	initializeChess(player[0]+6, 1, 'D', 13, 9);
	initializeChess(player[0]+7, 1, 'S', 13, 7);
	initializeChess(player[0]+8, 1, 'R', 13, 11);
	/* player black */
	initializeChess(player[1]+0, 2, 'C', 8, 5);
	initializeChess(player[1]+1, 2, 'E', 5, 3);
	initializeChess(player[1]+2, 2, 'L', 10, 2);
	initializeChess(player[1]+3, 2, 'T', 6, 2);
	initializeChess(player[1]+4, 2, 'J', 10, 4);
	initializeChess(player[1]+5, 2, 'W', 6, 4);
	initializeChess(player[1]+6, 2, 'D', 9, 3);
	initializeChess(player[1]+7, 2, 'S', 7, 3);
	initializeChess(player[1]+8, 2, 'R', 11, 3);
	/* player red */
	initializeChess(player[2]+0, 3, 'C', 5, 8);
	initializeChess(player[2]+1, 3, 'E', 3, 11);
	initializeChess(player[2]+2, 3, 'L', 2, 6);
	initializeChess(player[2]+3, 3, 'T', 2, 10);
	initializeChess(player[2]+4, 3, 'J', 4, 6);
	initializeChess(player[2]+5, 3, 'W', 4, 10);
	initializeChess(player[2]+6, 3, 'D', 3, 7);
	initializeChess(player[2]+7, 3, 'S', 3, 9);
	initializeChess(player[2]+8, 3, 'R', 3, 5);
	/* player green */
	initializeChess(player[3]+0, 4, 'C', 8, 11);
	initializeChess(player[3]+1, 4, 'E', 11, 13);
	initializeChess(player[3]+2, 4, 'L', 6, 14);
	initializeChess(player[3]+3, 4, 'T', 10, 14);
	initializeChess(player[3]+4, 4, 'J', 6, 12);
	initializeChess(player[3]+5, 4, 'W', 10, 12);
	initializeChess(player[3]+6, 4, 'D', 7, 13);
	initializeChess(player[3]+7, 4, 'S', 9, 13);
	initializeChess(player[3]+8, 4, 'R', 5, 13);

	/* the monster */
	monster = malloc(sizeof(struct CHESS));
	initializeChess(monster, 5, 'M', 8, 8);
}

void destroyPlayer(){
	int count;
	for(count=0; count<NUM_PLAYER; count++)
		free(player[count]);
	free(player);

	free(monster);
}

void initializeNcurses(){
	initscr();
	curs_set(0);
	cbreak();
	noecho();
	keypad(stdscr, true);
	start_color();
	init_pair(1, COLOR_BLACK, COLOR_WHITE); /* chess board */
	init_pair(11, COLOR_BLUE, COLOR_WHITE); /* PLAYER1's chess */
	init_pair(12, COLOR_BLACK, COLOR_WHITE); /* PLAYER2's chess */
	init_pair(13, COLOR_RED, COLOR_WHITE); /* PLAYER3's chess */
	init_pair(14, COLOR_GREEN, COLOR_WHITE); /* PLAYER4's chess */
	init_pair(15, COLOR_BLACK, COLOR_YELLOW); /* the monster */
}

int main(){
	initializeNcurses();
	initializePlayer();
	srand(time(NULL));
	runGame();
	endwin();
	destroyPlayer();
	return 0;
}
