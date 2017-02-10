#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "game.h"
#include "node.h"

#define NB_DIR_POL 4 // 4 points cardinaux  

struct game_s{
   node* set_of_nodes; // Pointeur de type noeud vers le tableau de noeuds
   int nb_nodes;
   int** bridges_already_build; // Pointeur vers tableau contenant "nb_nodes" tableaux d'entier
   int nb_dir;
   int nb_max_bridges;
};

typedef struct game_s* game;
typedef const struct game_s* cgame;


game new_game(int nb_nodes, node *nodes, int nb_max_bridges_, int nb_dir){

   game g = (game) malloc(sizeof(struct game_s)); // Allocation dynamique du new_game
   if (g == NULL){
      printf("Not enought memory !\n");
      exit(EXIT_FAILURE);
   }

   g->set_of_nodes = malloc(sizeof(node)*nb_nodes); // Demande d'allocation mémoire pour set_of_nodes
   for (int i=0;i<nb_nodes;i++)
      g -> set_of_nodes[i] = nodes[i]; //Récupération du tableau de nodes
   g -> nb_nodes = nb_nodes;


   int** t = malloc(sizeof(int*)*nb_nodes); // On créé le tableau principal qui va contenir l'autre tableau
   if (t==NULL){
      printf("Not enought memory!\n");
      exit(EXIT_FAILURE);
   }

   for (int i=0;i < nb_nodes ;i++){
      t[i] = malloc (sizeof(int)*nb_dir); //Puis on alloue chacun des sous-tableaux, t[i][j] stocke les informations sur le degrès de nodes[i]
      if (t[i]==NULL){
         printf("Not enought memory!\n");
         exit(EXIT_FAILURE);
      }
   }

   for (int i = 0; i< nb_nodes;i++){
      for (int j=0; j < nb_dir ;j++){ //j correspond à une direction (ex: 1 représente le NORD) et 0 <= t[i][j] <= 2
         t[i][j] = 0; // Initialisé à 0
      }
   }

   g->bridges_already_build = t;

   g->nb_dir = nb_dir;

   g->nb_max_bridges = nb_max_bridges_;

   return g;
}

void delete_game (game g){
   if (g!=NULL){

      if (g->bridges_already_build != NULL) {
         for (int i = 0;i<game_nb_nodes(g);i++){
            free(g->bridges_already_build[i]); // Il faut libérer les sous-tableaux avant de pouvoir libérer le tableau principal
         }
         free(g -> bridges_already_build);
         free(g->set_of_nodes);
      }

   free(g);
   }
   return;
}

game copy_game (cgame g_src){
   game g=(game) malloc(sizeof(struct game_s));
   if (g != NULL){ // On recopie tous les champs de la structure game !
      g -> nb_nodes = game_nb_nodes(g_src);

      int** t = malloc(sizeof(int*)*game_nb_nodes(g)); // On créé le tableau principal qui va contenir l'autre tableau
      if (t==NULL){
         printf("Not enought memory!\n");
         exit(EXIT_FAILURE);
      }

      for (int i=0;i< game_nb_nodes(g_src) ;i++){
         t[i] = malloc (sizeof(int)*NB_DIR_POL); //Puis on alloue chacun des sous-tableaux, t[i][j] pour stoques les informations sur le degrés de nodes[i]
         if (t[i]==NULL){
            printf("Not enought memory!\n");
            exit(EXIT_FAILURE);
         }
      }

      for (int i = 0; i< game_nb_nodes(g_src);i++){ // on copie les informations de tous les nodes du game
         for (int j=0; j<NB_DIR_POL;j++){ //j corespond à une direction (ex: 1 représente le NORD) et 0 <= t[i][j] <= 2
            dir d = j;
            t[i][j] = get_degree_dir(g_src,i,d);
         }
      }

      g -> bridges_already_build=t;

      g->set_of_nodes = malloc(sizeof(node) * game_nb_nodes(g_src));
      for (int i=0; i< game_nb_nodes(g); i++){
         g -> set_of_nodes[i] = new_node(get_x(game_node(g_src,i)),get_y(game_node(g_src,i)),get_required_degree(game_node(g_src,i)));
      }

      return g;
   }
   printf("Not enought memory !\n"); // Si le le jeu n'existe pas on annule
   exit(EXIT_FAILURE);
}


int game_nb_nodes (cgame g){
   if (g!=NULL)
      return g -> nb_nodes;
   return EXIT_FAILURE;
}

int game_nb_dir (cgame g){
      if (g!=NULL)
      return g -> nb_dir;
   return EXIT_FAILURE;
}

int game_nb_max_bridges (cgame g){
    if (g!=NULL)
      return g -> nb_max_bridges;
   return EXIT_FAILURE;
}


node game_node(cgame g, int node_num){
   assert(node_num<g->nb_nodes); // On vérifie que node_num est entre 0 et nb_nodes-1
   return g->set_of_nodes[node_num];
}

bool game_over (cgame g){
   if (g!=NULL){

      int somme_bridge_already_build =0 ;
      int somme_bridge_required = 0;

      for (int i=0; i<game_nb_nodes(g);i++){

         for (int j=0;j<NB_DIR_POL; j++){ // !! Attention !! Vérifie uniquement pour les 4 premièrs points cardinaux

            somme_bridge_already_build = somme_bridge_already_build + get_degree_dir(g, i, j);

         }

         /// PB game_node(g,1) ERREUR DE SEGMENTATION
         somme_bridge_required = somme_bridge_required + get_required_degree(game_node(g,0));

      }


      if (somme_bridge_already_build == somme_bridge_required )// Si la somme des ponts de l'ile n°i négale pas le numéro qu'elle affiche alors c'est perdu
         return true;

      return false;

   }

    //////// !!!!!!! AJOUTER LA CONNEXITE !!!!!!!

   return EXIT_FAILURE;
}



void del_bridge_dir (game g, int node_num, dir d){

   int entier = d;

   int neighbour = get_neighbour_dir(g, node_num, d);

   if (g->bridges_already_build[node_num][d] >0){
      g->bridges_already_build[node_num][entier]--;

      switch (entier)
      {
         case 0:
            g->bridges_already_build[neighbour][2]--;
            break;
         case 1:
            g->bridges_already_build[neighbour][3]--;
            break;
         case 2:
            g->bridges_already_build[neighbour][0]--;
            break;
         case 3:
            g->bridges_already_build[neighbour][1]--;
            break;
      }

   }

}

int get_degree_dir (cgame g, int node_num, dir d){
   int entier = d;
   return g->bridges_already_build[node_num][entier];
}


int get_degree (cgame g, int node_num) {
   int cmpt =0;
   for (int i=0; i<NB_DIR_POL;i++){
      cmpt = cmpt + get_degree_dir(g, node_num, i);
   }
   return cmpt;
}


int get_neighbour_dir (cgame g, int node_num, dir d){
   
   int x_node=get_x(game_node(g,node_num)); //on récupère les coords du noeud traité
   int y_node=get_y(game_node(g,node_num));
   

   if (d == EAST){
      for (int u=1; u<=3; u++){ //permet de parcourir les noeuds HORIZONTALEMENT dans l'instance de jeu
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node + u) && (get_y(game_node(g,i)) == y_node))
                                                                                                                                           
               return i;
         }
      }
   }

   if (d == WEST){
      for (int u=1; u<=3; u++){ 
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node - u) && (get_y(game_node(g,i)) == y_node))
                                                                                                                                           
               return i;
         }
      }
   }

   if (d == NORTH){
      for (int u=1; u<=3; u++){ //permet de parcourir les noeuds VERTICALEMENT dans l'instance de jeu
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node) && (get_y(game_node(g,i)) == y_node + 1))
                                                                                                                                           
               return i;
         }
      }
   }

   if (d == SOUTH){
      for (int u=1; u<=3; u++){ 
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node) && (get_y(game_node(g,i)) == y_node - 1))
                                                                                                                                           
               return i;
         }
      }
   }

   
   if (d == NE){
      for (int u=1; u<=3; u++){ //permet de parcourir les noeuds en digonale dans l'instance de jeu
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node + u) && (get_y(game_node(g,i)) == y_node + u))/*si on trouve un noeud différent
                                                                                                                                             * du noeud traité et que ce noeud
                                                                                                                                             * est le prochian qui
                                                                                                                                             * se situe sur la même diagonale
                                                                                                                                             * dans la dir choisie */
                  return i;
         
         
         
         }
      }
      
   }

   if (d == SW){
      for (int u=1; u<=3; u++){ //permet de parcourir les noeuds en digonale dans l'instance de jeu
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node - u) && (get_y(game_node(g,i)) == y_node - u))
                                                                                                                                           
               return i;
         }
      }
   }
   
   if (d == NW){
      for (int u=1; u<=3; u++){ //permet de parcourir les noeuds en digonale dans l'instance de jeu
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node - u) && (get_y(game_node(g,i)) == y_node + u))
                                                                                                                                           
               return i;
         }
      }
   }

   if (d == SE){
      for (int u=1; u<=3; u++){ //permet de parcourir les noeuds en digonale dans l'instance de jeu
         for (int i=0; i<g->nb_nodes;i++){ /*on parcourt la liste des noeuds*/
            if ((game_node(g,node_num) != game_node(g,i)) && (get_x(game_node(g,i)) == x_node + u) && (get_y(game_node(g,i)) == y_node - u))
                                                                                                                                           
               return i;
         }
      }
   }
   
   return -1;
}


int game_get_node_number (cgame g, int x, int y){
   int i=0;
   while (i < g->nb_nodes){
      if (get_x(game_node(g, i)) == x && get_y(game_node(g, i)) == y)
         return i;
      i++;
   }
   return -1;
}

bool can_add_bridge_dir (cgame g, int node_num, dir d){

   if ( get_neighbour_dir(g, node_num, d) == -1)
      return 0;
   return 1; ///////// AJOUTER LA VERIFICATION POUR LES CROISEMENTS !!!!!!!!!!!
}

void add_bridge_dir (game g, int node_num, dir d){
   int entier =d ;

   if (can_add_bridge_dir(g, node_num, d)){

      int neighbour_dir = get_neighbour_dir(g,node_num,d);

      g->bridges_already_build[node_num][entier]++;

      switch (entier) // éviter répétition if sur la même variable "entier"
      {
         case 0:
            g->bridges_already_build[neighbour_dir][2]++;
            break;
         case 1:  // WEST
            g->bridges_already_build[neighbour_dir][3]++;
            break;
         case 2 : //SOUTH
               g->bridges_already_build[neighbour_dir][0]++;
               break;
         case 3: //EAST
            g->bridges_already_build[neighbour_dir][1]++;
            break;
      }
   }
}
