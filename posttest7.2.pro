/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0).%fakta pada clausa ini akan di eksekusi sampai rule yang ada di bawah selesai di eksekusi. fakta ini akan di pending terlebih dahulu sampai mendapatkan nilai [].
  length_of([_|T],L):- %fakta ini akan menghitung tail pada rule tersebut, nilai L bertambah sampai dengan Taillenght+1
	length_of(T,TailLength),
	L = TailLength + 1.

goal
  length_of([12,3],L).%tujuan dari program ini untuk mencari nilai L hingga output menghasilkan 3 solusi
