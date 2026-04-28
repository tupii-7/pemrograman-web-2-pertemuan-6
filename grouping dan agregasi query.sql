-- Jumlah buku & total stok per kategori
SELECT kategori, COUNT(*) AS jumlah_buku, SUM(stok) AS total_stok
FROM buku
GROUP BY kategori;

-- Rata-rata harga per kategori
SELECT kategori, AVG(harga) AS rata_harga
FROM buku
GROUP BY kategori;

-- Kategori dengan nilai inventaris terbesar
SELECT kategori, SUM(harga * stok) AS total_nilai
FROM buku
GROUP BY kategori
ORDER BY total_nilai DESC
LIMIT 1;