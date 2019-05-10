/*****************************************************************************

		Copyright (c) My Company

 Project:  TREE
 FileName: TREE.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "tree.inc"

domains

result = real
operation = string
tree = t(operation, tree, tree); v(real).

predicates

nondeterm count(tree, result).

clauses
  
  count(t("+", LEFT, RIGHT), Res):- count(LEFT, R1), count(RIGHT, R2), Res = R1 + R2.
  count(t("-", LEFT, RIGHT), Res):- count(LEFT, R1), count(RIGHT, R2), Res = R1 - R2.
  count(t("*", LEFT, RIGHT), Res):- count(LEFT, R1), count(RIGHT, R2), Res = R1 * R2.
  count(t("/", LEFT, RIGHT), Res):- count(LEFT, R1), count(RIGHT, R2), Res = R1 / R2.
  count(v(X), X):-!.
  

goal

  count(t(X, v(3), t(Y, v(2), t(Z, v(6) ,v(4)))), 7).