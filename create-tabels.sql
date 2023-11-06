CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY not null auto_increment,
    nama VARCHAR(255),
    no_hp VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE produk (
    id_produk INT PRIMARY KEY not null auto_increment,
    nama_produk VARCHAR(255),
    harga DECIMAL(10, 2),
    id_kategori INT,
    FOREIGN KEY (id_kategori) REFERENCES pelanggan(id_pelanggan)
);

CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY not null auto_increment,
    nama_kategori VARCHAR(255)
);

CREATE TABLE pesanan (
    id_pesanan INT PRIMARY KEY not null auto_increment,
    tanggal DATE,
    id_pelanggan INT,
    total_harga DECIMAL(10, 2),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

CREATE TABLE detail_pesanan (
    id_detail INT PRIMARY KEY not null AUTO_INCREMENT,
    id_pesanan INT,
    id_produk INT,
    quantity INT,
    FOREIGN KEY (id_pesanan) REFERENCES pesanan(id_pesanan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);