DOMAINS
    nama,jender,pekerjaan,benda,alasan,zat = symbol
    umur = integer

PREDICATES
  nondeterm orang(nama,umur,jender,pekerjaan)
  nondeterm selingkuh(nama,nama)
  terbunuh_dengan(nama,benda)
  terbunuh(nama)
  nondeterm pembunuh(nama)
  motif(alasan)
  ternodai(nama,zat)
  milik(nama,benda)
  nondeterm cara_kerja_mirip(benda,benda)
  nondeterm kemungkinan_milik(nama,benda)
  nondeterm dicurigai(nama)

ClAUSES
  orang(budi,55,m,tukang_kayu).
  orang(aldi,25,m,pemain_sepak_bola).
  orang(aldi,25,m,tukang_jagal).
  orang(joni,25,m,pencopet).

  selingkuh(ina,joni).
  selingkuh(ina,budi).
  selingkuh(siti,joni).

  terbunuh_dengan(siti,pentungan).
  terbunuh(siti).

  motif(uang).
  motif(cemburu).
  motif(dendam).

  ternodai(budi,darah).
  ternodai(siti,darah).
  ternodai(aldi,lumpur).
  ternodai(joni,coklat).
  ternodai(ina,coklat).

  milik(budi,kaki_palsu).
  milik(joni,pistol).

  cara_kerja_mirip(kaki_palsu,pentungan).
  cara_kerja_mirip(balok,pentungan).
  cara_kerja_mirip(gunting,pisau).
  cara_kerja_mirip(sepak_bola,pentungan).

  kemungkinan_milik(X,sepatu_bola):- orang(X,_,_,pemain_sepak_bola).
  kemungkinan_milik(X,gunting):- orang(X,_,_,pekerja_salon).
  kemungkinan_milik(X,Benda):- milik(X,Benda).

  dicurigai(X):-
  terbunuh_dengan(siti,Senjata),
  cara_kerja_mirip(Benda,Senjata),
  kemungkinan_milik(X,Benda).

  dicurigai(X):-
  motif(cemburu),
  orang(X,_,m,_),
  selingkuh(siti,X).

  dicurigai(X):-
  motif(cemburu),
  orang(X,_,f,_),
  selingkuh(X,Lakilaki),
  selingkuh(siti,Lakilaki).

  dicurigai(X):-
  motif(uang),
  orang(X,_,_,pencopet).

  pembunuh(Pembunuh):-
  orang(Pembunuh,_,_,_),
  terbunuh(Terbunuh),
  Terbunuh <> Pembunuh,
  dicurigai(Pembunuh),
  ternodai(Pembunuh,Zat),
  ternodai(Terbunuh,Zat).

GOAL
  pembunuh(X).
  
  %setelah program di jalankan program akan melakukan proses pada clauses, melacak data orang yang telah di deklarasikan di mana terdapat data yang terlibat dalam pembunuhan.
  %dari fakta fakta yang ada, variabel x adalah variabel pembunuh. dari fakta yang ada terdapat beberapa pernyataan. program akan mencari orang yang mengetahui pembunuh dalam kasus ini.
  %selanjutnya program akan mencari pernyataan terbunuh dan di temukan fakta yang terbunuh adalah siti. dan program melakukan pencarian pada pernyataan di curigai(x).
  %kemudian program mencari senjata yang di pakai untuk membunuh, dengan melakukan proses di variabel terbunuh_dengan. maka fakta yang di dapat terbunuh_dengan(siti, pentungan).
  %setelah itu program mencari fakta benda yang cara kerjanya mirip senjata cara_kerja_mirip(benda, senjata) kemudian prolog memanggil pernyataan tersebut agar di ketahui benda yang mirip pentungan.
  %dari pencarian di atas yang di temukan faktanya adalah cara_kerja_mirip(kaki_palsu, pentungan).
  %selanjutnya program mencari fakta variabel kemungkinan_milik(x, benda), milik(x, benda). dari pernyataan itu di temukan bahwa milih(budi, kaki_palsu)., jadi pemilik kaki_palsu adalah budi.
  %kemudian program menjalankan pernyataan dari ternodai(pembunuh, zat). maka proses di jalankan maka hasilnya ternodai(budi, darah).
  %setelah itu program melakukan proses terakhir ternodai(terbunuh, zat). maka hasilnya adalah ternodai(siti, darah). dari pernyataan-pernyataan di atas dapat di simpulkan bahwa siti memiliki noda yang sama seperti budi. maka hasil dari goalnya adalah budi yang membunuh siti.