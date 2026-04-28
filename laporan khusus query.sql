-- Buku perlu restocking
SELECT * FROM buku
WHERE stok < 5;

-- Top 5 buku termahal
SELECT judul, harga FROM buku
ORDER BY harga DESC
LIMIT 5;