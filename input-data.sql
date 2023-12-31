INSERT INTO pelanggan (nama, no_hp, email)
VALUES
    ('John Doe', '0892345644', 'johndoe@email.com'),
    ('Jane Smith', '45645624324', 'janesmith@email.com'),
    ('Bob Johnson', '078585677', 'bobjohnson@email.com'),
    ('Alice Brown', '0812381923913', 'alicebrown@email.com'),
    ('David Wilson', '123123132', 'davidwilson@email.com'),
    ('Sarah Lee', '452131423413', 'sarahlee@email.com'),
    ('Michael Davis', '018231023103', 'michaeldavis@email.com'),
    ('Emily Miller', '0128391283013', 'emilymiller@email.com'),
    ('William Taylor', '91203813123', 'williamtaylor@email.com'),
    ('Olivia Johnson', '01829318283', 'oliviajohnson@email.com');


INSERT INTO produk (nama_produk, harga, id_kategori)
VALUES
    ('TV', 7000000.00, 1),
    ('Gergaji', 500000.00, 2),
    ('Laptop', 75000000.00, 1),
    ('Pensil', 2000.00, 3),
    ('Paku', 65000.00, 2),
    ('Radio', 90000.00, 1),
    ('Buku', 11000.00, 3),
    ('Semen', 100000.00, 2),
    ('Mouse', 85000.00, 1),
    ('Cat', 70000.00, 2);

INSERT INTO kategori (nama_kategori)
VALUES
    ('Elektronik'),
    ('Alat Bangunan'),
    ('Alat Tulis');

INSERT INTO pesanan (tanggal, id_pelanggan)
VALUES
    ('2023-10-01', 1),
    ('2023-10-02', 2),
    ('2023-10-03', 3),
    ('2023-11-04', 4),
    ('2023-11-05', 5),
    ('2023-11-06', 6),
    ('2023-11-07', 7),
    ('2023-11-08', 8),
    ('2023-12-09', 9),
    ('2023-12-10', 10);

INSERT INTO detail_pesanan (id_pesanan, id_produk, quantity)
VALUES
  (1, 1, 4),
  (1, 2, 6),
  (2, 3, 1),
  (2, 4, 2),
  (3, 5, 4),
  (3, 6, 2),
  (4, 7, 2),
  (4, 8, 4),
  (5, 9, 7),
  (5, 10, 3),
  (6, 2, 2),
  (7, 5, 4),
  (7, 1, 7),
  (7, 10, 3),
  (8, 5, 4),
  (9, 8, 7),
  (9, 9, 3),
  (9, 9, 4),
  (9, 1, 7),
  (10, 10, 3),
  (10, 8, 4),
  (10, 9, 7);  