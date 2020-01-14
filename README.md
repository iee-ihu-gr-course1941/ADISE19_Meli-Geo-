# ADISE19_Meli-Geo-

uno-game

This is an implementation in PHP and JS of the classic card game UNO.

2 players(Human-human)

Deck:

19 blue cards - 0 to 9;

19 red cards - 0 to 9;

19 yellow cards - 0 to 9;

19 green cards - 0 to 9;

8 “Draw Two” cards- two of each color;

8 “Skip” cards- two of each color;

8 “Reverse” cards- two of each color;

4 “Wild” cards;

4 “Wild Draw Four” cards.


Info:

7 cards are dealt out to each player in the beginning of the game. A player may always draw a card from the deck.

If the entire deck is used during play, the top discard is set aside and the rest of the pile is shuffled to create a new deck.

In a two-player game, the Reverse card acts like the Skip card.

# API 


URL | METHOD |ACTION | RETURN STATUS 
--- | --- | --- | ---  
/board | GET | Επιστρέφει σε json την τρέχουσα μορφή του board. |  200 (OK) , 400 (Bad Request) 
/board | POST | Κάνει reset το board στην αρχική κατάσταση και επιστρέφει την τρέχουσα μορφή του παιχνιδιού σε json. | 200 (OK) , 400 (Bad Request) 
/board/card/C | GET | Επιστρέφει σε json τις πληροφορίες της κάρτας C.  | 200 (OK) , 400 (Bad Request) 
/board/card/C | PUT | Ρίχνει την κάρτα С στο τραπέζι. | 200 (OK) , 400 (Bad Request) 
/board/player/P | GET | Επιστρέφει σε json το nickname του παίκτη p(player1,player2). | 200 (OK) , 400 (Bad Request)  
/board/players | GET | Επιστρέφει σε json τα στοιχεία των παικτών του παιχνιδιού. | 200 (OK) , 400 (Bad Request) 
/board/draw | PUT | Ο παίκτης που έχει σειρά τραβάει μία κάρτα. | 200 (OK) , 400 (Bad Request) 
/board/paso | PUT | Δίνει την σειρά στον αντίπαλο παίκτη. | 200 (OK) , 400 (Bad Request) 
/board/uno | PUT | Με αυτό ο παίκτης λέει UNO. | 200 (OK) , 400 (Bad Request) 
/board/game | GET | Επιστρέφει σε json την κατάσταση του παιχνιδιού. | 200 (OK) , 400 (Bad Request) 


# Created by:

# Georgiadou Anastasia and Melissas Alexandros
