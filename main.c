#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <time.h>



void random(int *ship, int *range);
int mode();
void get_coordinates(int *cords);
void save_to_file(char *text[], int attempt);
void play(char *game_size[2]);

int main() {
//    setting game size via dynamic allocation
    int *game_size;
    game_size = malloc(2 * sizeof(*game_size));

    printf("Podaj wymiary planszy:\n");
    get_coordinates(game_size);
//    printf("Wymiary: %d x %d\n",game_size[0],game_size[1]);

//    running the game
    play(game_size);

    free(game_size);
    return 0;
}

void random(int *ship, int *range){
    time_t t;
    srand((unsigned) time(&t));
    for(int i = 0; i<2; i++) {  //setting random location
        ship[i] = (rand() % (range[i] - 0 + 1)) + 0;
    }
}

void save_to_file(char *text[], int attempt){
    FILE *fp;
    fp = fopen("C:\\Users\\pchmi\\CLionProjects\\Ships the Game\\log.txt", "a");     //file path
    if (fp == NULL){
        /* Unable to open file hence exit */
        printf("\nUnable to open file.\n");
        printf("Please check whether file exists and you have write privilege.\n");
        exit(EXIT_FAILURE);
    }
    if(attempt==NULL)   //if lost write only "lost"
        fprintf(fp, "%s\n",text);
    else                //if won write "you won at attempt %d"
        fprintf(fp, "%s liczba prób: %d\n",text, attempt);
    fclose(fp);         //close file
}

int mode(){ //mode selector
    int input;
    printf("Wybierz tryb gry:\n1) latwy - 5 strzalow\n2) sredni - 3 strzaly\n3) trudny - 1 strzal\n");
    scanf("%d", &input); Sleep(100);
    switch (input) {
        case 1:
            printf("Tryb latwy\n");
            return 5;
        case 2:
            printf("Tryb sredni\n");
            return 3;
        case 3:
            printf("Tryb trudny\n");
            return 1;
        default:
            printf("No such choice: \n");
            break;
    }
}

void get_coordinates(int *cords){   //coords input
    printf("x:");
    scanf("%d", &cords[0]); Sleep(100);
    printf("y:");
    scanf("%d", &cords[1]); Sleep(100);
}

void play(char *game_size[2]){  //game logic
    int ship[2];
    random(ship,game_size);
    printf("Kordy statku %d x %d\n",ship[0],ship[1]);

    int flag=0;
    int counter=0;
    for(int attempts=mode(); attempts>0; attempts--){
        counter++;
        int cords[2];
        printf("Podaj koordynaty strzalu:\n");
        get_coordinates(cords);
        if (cords[0]<=game_size[0] || cords [1]<=game_size[1]){
//            printf("Kordy strzalu %d x %d\n",cords[0],cords[1]);

            if (memcmp(ship, cords, sizeof(ship))==0){
//            hit
                save_to_file("Zwycieztwo", counter);
                printf("Trafiony\n\n");
                flag=0;
                break;}
            else{
//            missed
                printf("Pudlo\n\n");
                flag=1;
            }
        }
        else{
            printf("Niepoprawne koordynaty strzalu\n");
        }
    }

    if (flag){
        save_to_file("Porazka", counter=NULL);
    }
}


