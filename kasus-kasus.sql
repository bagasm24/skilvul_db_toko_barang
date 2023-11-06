-- 1 pelanggan membeli 3 barang yang berbeda.
SELECT pelanggan.nama AS NamaPelanggan, pesanan.id_pesanan, COUNT(distinct detail_pesanan.id_produk) AS TotalProduk
FROM pelanggan
JOIN pesanan ON pelanggan.id_pelanggan = pesanan.id_pelanggan
JOIN detail_pesanan ON pesanan.id_pesanan = detail_pesanan.id_pesanan
GROUP BY pelanggan.nama, pesanan.id_pesanan
HAVING COUNT(distinct detail_pesanan.id_produk) >= 3;

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT produk.nama_produk, SUM(detail_pesanan.quantity) AS total_pembelian
FROM detail_pesanan
JOIN produk ON detail_pesanan.id_produk = produk.id_produk
GROUP BY detail_pesanan.id_produk
ORDER BY total_pembelian DESC
LIMIT 3;







-- Melihat Kategori barang yang paling banyak barangnya.
SELECT kategori.nama_kategori AS NamaKategori, COUNT(produk.id_produk) AS TotalProduk
FROM kategori
JOIN produk ON kategori.id_kategori = produk.id_kategori
GROUP BY kategori.nama_kategori
ORDER BY TotalProduk DESC
LIMIT 1;