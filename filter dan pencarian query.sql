-- Buku kategori Programming harga < 100.000
SELECT * FROM buku 
WHERE kategori = 'Programming' AND harga < 100000;

-- Judul mengandung PHP atau MySQL
SELECT * FROM buku 
WHERE judul LIKE '%PHP%' OR judul LIKE '%MySQL%';

-- Buku terbit tahun 2024
SELECT * FROM buku 
WHERE tahun_terbit = 2024;

-- Stok antara 5-10
SELECT * FROM buku 
WHERE stok BETWEEN 5 AND 10;

-- Pengarang Budi Raharjo
SELECT * FROM buku 
WHERE pengarang = 'Budi Raharjo';