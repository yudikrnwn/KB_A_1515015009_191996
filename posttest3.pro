DOMAINS
kali,jumlah = integer %kali dan jumlah merupakan variabel yang bertipe data integer

PREDICATES
tambahkan(jumlah,jumlah,jumlah)%perintah tambahkan memiliki tiga variabel yaitu jumlah,jumlah,jumlah
kalikan(kali,kali,kali)%perintah kalikan memiliki tiga variabel yaitu kali,kali,kali

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y.%pada clauses terdapat perintah jumlahkan X dengan Y tambahkan(X,Y,jumlah)jika jumlah=X+Y
kalikan(X,Y,Kali):-Kali=X*Y.%perintah kalikan antara X dan Y jika kali=X*Y

GOAL
tambahkan(32,54,Jumlah).%hasil akan di dapat dengan mengikuti perintah tambahkan yang mana X=32 dan Y=54 dan jumlah=32+54