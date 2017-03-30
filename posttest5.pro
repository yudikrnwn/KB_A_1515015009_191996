DOMAINS
orang = orang(nama,alamat)
nama = nama(pertama,kedua)
alamat = alamat(jalan,kota_kab,propinsi)
jalan = jalan(nama_jalan,nomor)
kota_kab,propinsi,nama_jalan = string
pertama,kedua = symbol
nomor = integer
%mendeklarasikan domain jamak di mana suatu item terdiri dari 3 informasi berbeda misal orang memiliki nama dan alamat.


GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
P1 = orang(nama(_,fatihah),Alamat),
P2 = orang(nama(nur,fatihah),Alamat),
write("P1=",P1),nl,
write("P2=",P2),nl.
%goal akan menampilkan data P1 dan P2.
%write di gunakan untuk menulis data informasi yang ada pada goal.
%nl merupakan perintah next line untuk menuis pada baris baru.
