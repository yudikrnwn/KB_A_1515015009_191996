Predicates
  nondeterm pria(String)
  nondeterm wanita(String)
  nondeterm anak(String,String)
  nondeterm istri(String,String) 
  nondeterm ayah(String,String)
  nondeterm ibu(String,String)
  nondeterm adik(String,String)
  nondeterm cucu(String,String)
  nondeterm kakek(String,String)
  nondeterm usia(String,Integer)
Clauses
 anak("Jhon","James").
 anak("James","Peter").
 anak("Sue","Ann").
 istri("Mary","Peter").
 istri("Ann","James").
 pria("Jhon").
 pria("James").
 pria("Peter").
 wanita("Mary").
 wanita("Sue").
 wanita("Ann").
 usia("Jhon",10).
 usia("Sue",13).
 
 ayah(P,Q):-anak(Q,P).
 kakek(P,Q):-ayah(P,R),ayah(R,Q).
 ibu(P,Q):-istri(Q,R),anak(P,R).
 cucu(P,Q):-anak(P,R),anak(R,Q).
 cucu(P,Q):-anak(P,R),istri(R,S),anak(S,Q).
 adik(P,Q):-usia(P,R),usia(Q,S),R<S.
 
Goal
 cucu(A,B);
 ibu(A,B);
 adik(A,B);
 kakek(A,B).