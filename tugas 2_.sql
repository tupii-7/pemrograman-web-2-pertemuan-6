-- Tambah kolom baru
ALTER TABLE buku 
ADD id_kategori INT,
ADD id_penerbit INT;

-- Tambah relasi foreign key
ALTER TABLE buku
ADD CONSTRAINT fk_kategori
FOREIGN KEY (id_kategori) REFERENCES kategori_buku(id_kategori);

ALTER TABLE buku
ADD CONSTRAINT fk_penerbit
FOREIGN KEY (id_penerbit) REFERENCES penerbit(id_penerbit);

INSERT INTO kategori_buku (nama_kategori, deskripsi) VALUES
('Mobile Development', 'Pengembangan aplikasi mobile'),
('Cyber Security', 'Keamanan sistem dan jaringan'),
('Data Science', 'Analisis dan pengolahan data'),
('Cloud Computing', 'Teknologi komputasi awan'),
('Game Development', 'Pengembangan game');

INSERT INTO penerbit (nama_penerbit, alamat, telepon, email) VALUES
('TechPress Indonesia', 'Jakarta', '081122334455', 'info@techpress.id'),
('Digital Nusantara', 'Surabaya', '082233445566', 'digital@nusantara.id'),
('Inovasi Media', 'Bandung', '083344556677', 'contact@inovasi.id'),
('Global Edukasi', 'Yogyakarta', '084455667788', 'global@edukasi.id'),
('Cipta Teknologi', 'Semarang', '085566778899', 'cipta@teknologi.id');

INSERT INTO buku (kode, judul, pengarang, tahun, harga, stok, id_kategori, id_penerbit) VALUES
('B101', 'Flutter untuk Pemula', 'Dian Pratama', 2023, 95000, 10, 1, 1),
('B102', 'React Native Guide', 'Salsa Putri', 2022, 105000, 8, 1, 2),
('B103', 'Android Studio Lengkap', 'Rizky Hidayat', 2021, 120000, 6, 1, 3),

('B104', 'Dasar Cyber Security', 'Fajar Nugroho', 2023, 110000, 5, 2, 4),
('B105', 'Ethical Hacking', 'Bima Saputra', 2024, 135000, 4, 2, 5),
('B106', 'Network Defense', 'Agung Setiawan', 2022, 125000, 7, 2, 1),

('B107', 'Python untuk Data Science', 'Lina Marlina', 2023, 115000, 9, 3, 2),
('B108', 'Data Analysis dengan Pandas', 'Tono Wijaya', 2022, 98000, 11, 3, 3),
('B109', 'Machine Learning Praktis', 'Rudi Santoso', 2024, 150000, 3, 3, 4),

('B110', 'Cloud AWS Dasar', 'Hendra Gunawan', 2023, 130000, 6, 4, 5),
('B111', 'Google Cloud Platform', 'Siti Rahma', 2022, 125000, 7, 4, 1),
('B112', 'DevOps Modern', 'Arif Kurniawan', 2021, 140000, 5, 4, 2),

('B113', 'Unity Game Engine', 'Yoga Prasetyo', 2023, 110000, 8, 5, 3),
('B114', 'Game Design Fundamentals', 'Nina Oktaviani', 2022, 100000, 9, 5, 4),
('B115', '2D Game Development', 'Bagas Saputra', 2024, 95000, 12, 5, 5);

-- Menampilkan data buku beserta nama kategori dan penerbit
SELECT 
    b.kode,
    b.judul,
    b.pengarang,
    b.tahun_terbit,
    b.harga,
    b.stok,
    k.nama_kategori,
    p.nama_penerbit
FROM buku b
JOIN kategori_buku k ON b.id_kategori = k.id_kategori
JOIN penerbit p ON b.id_penerbit = p.id_penerbit;

-- Menghitung jumlah buku pada setiap kategori
SELECT 
    k.nama_kategori,
    COUNT(b.id_kategori) AS jumlah_buku
FROM kategori_buku k
LEFT JOIN buku b ON b.id_kategori = k.id_kategori
GROUP BY k.id_kategori;

-- Menghitung jumlah buku pada setiap penerbit
SELECT 
    p.nama_penerbit,
    COUNT(b.id_penerbit) AS jumlah_buku
FROM penerbit p
LEFT JOIN buku b ON b.id_penerbit = p.id_penerbit
GROUP BY p.id_penerbit;

-- Menampilkan detail lengkap buku termasuk kategori dan penerbit
SELECT 
    b.kode,
    b.judul,
    b.pengarang,
    b.tahun_terbit,
    b.harga,
    b.stok,
    k.nama_kategori,
    k.deskripsi,
    p.nama_penerbit,
    p.alamat,
    p.telepon,
    p.email
FROM buku b
JOIN kategori_buku k ON b.id_kategori = k.id_kategori
JOIN penerbit p ON b.id_penerbit = p.id_penerbit;