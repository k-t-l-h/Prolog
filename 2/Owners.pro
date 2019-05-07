/*****************************************************************************

		Copyright (c) My Company

 Project:  OWNERS
 FileName: OWNERS.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "owners.inc"

domains
name = string
adress = string
number = integer
color = string
nick = string
species = string
property = house(adress); car(number, color); animal(nick, species).

predicates
nondeterm proprietor(name, property).
nondeterm get_property(name).

clauses

proprietor("Mary", animal("Rabby","rabbit")).
proprietor("Alex", animal("Kitty","cat")).
proprietor("Robin", animal("Mikle","dog")).
proprietor("Dan", animal("Tony","dog")).

proprietor("Mary", house("Moscow, 24 street")).
proprietor("Ire", house("USA, California")).
proprietor("Dimon", house("USA, New York")).
proprietor("Alex", house("St.Petersburg , Bridge")).

proprietor("Don", car(121, "black")).
proprietor("Ire", car(125, "white")).
proprietor("Alex", car(221, "pink")).
proprietor("Dimon", car(100, "black")).

get_property(NAME):-proprietor(NAME, _).
  

goal
proprietor("Alex", Y).
  
