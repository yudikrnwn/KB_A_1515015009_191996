DOMAINS
merek,warna = symbol
usia = byte
harga, kilometer = ulong
%di dalam domain terdapat pendeklarasian variabel yaitu merek dan warna dengan tipe data symbol
%variabel usia dengan tipe data byte
%dan variabel harga dan kilometer dengan tipe data ulong

PREDICATES
nondeterm mobil(merek,kilometer,usia,warna,harga)
%di dalam predikat terdapat pendeklarasian mobil yang memiliki merek,kilometer,usia,warna,dan harga
%nondeterm berfungsi memberitahu compiler bahwa predikat memiliki lebih dari satu kemungkinan

CLAUSES
mobil(atoz,130000,3,merah,120000000).
mobil(karimun,90000,4,silver,100000000).
mobil(ceria,8000,1,hitam,75000000).
%clauses merupakan pendeklarasian fakta fakta tentang mobil berupa merek,kilometer,usia,warna, dan harga

GOAL
mobil(karimun, 90000,4, silver, 100000000).
%goal berfungsi untuk menampilkan hasil apakah mobil yang memiliki kriteria di atas ada atau tidak
%jika kriteria mobil tersebut ada maka 