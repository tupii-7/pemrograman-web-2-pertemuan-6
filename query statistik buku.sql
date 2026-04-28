-- Total buku seluruhnya
SELECT COUNT(*) AS total_buku FROM buku;

-- Total nilai inventaris
SELECT SUM(harga * stok) AS total_inventaris FROM buku;

-- Rata-rata harga buku
SELECT AVG(harga) AS rata_rata_harga FROM buku;

-- Buku termahal
SELECT judul, harga FROM buku ORDER BY harga DESC LIMIT 1;

-- Buku dengan stok terbanyak
SELECT judul, stok FROM buku ORDER BY stok DESC LIMIT 1;