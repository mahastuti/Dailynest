create database dailynest;
use dailynest;
drop database dailynest;

-- Create Table -- 
create table category(
	id_category varchar(225) primary key,
    category varchar(225)
);
create table product(
	id_product varchar(225) primary key,
    id_category varchar(225),
    product varchar(225),
    price int,
    stock int,
    constraint fk_id_category foreign key (id_category) references category (id_category)
);
create table customer(
	id_customer varchar(225) primary key,
    phone varchar(15),
    name varchar(225),
    address varchar(225),
    email varchar(225)
);
create table transaction(
	id_transaction varchar(225) primary key,
    id_customer varchar(225),
    transaction_date date,
    constraint fk_id_customer foreign key (id_customer) references customer (id_customer)
);
create table detail_transaction(
	id_transaction varchar(225),
    id_product varchar(225),
    quantity_order int,
    constraint fk_id_transaction foreign key (id_transaction) references transaction (id_transaction),
    constraint fk_id_product foreign key (id_product) references product (id_product)
);

-- Insert Values Into Tables--
insert into category values
	('ATK', 'Alat Tulis'),
    ('MK', 'Makanan'),
    ('MN', 'Minuman'),
    ('OB', 'Obat-obatan'),
    ('PBB', 'Perlengkapan Bayi dan Balita'),
    ('PD', 'Perlengkapan Dapur'),
    ('PKM', 'Perlengkapan Kamar Mandi'),
    ('SB', 'Sembako'),
    ('LN', 'Lainnya');
insert into product values
    ('ATK0001','ATK', 'Kertas Folio', 47000, 42),
    ('ATK0002','ATK', 'Kertas Kado', 1500, 42),
    ('ATK0003','ATK', 'Joyko Eraser EB 30', 1800, 49),
    ('ATK0004','ATK', 'Tip-x', 25889, 90),
    ('ATK0005','ATK', 'Buku Tulis SIDU 58 Lembar', 39000, 71),
    ('ATK0006','ATK', 'Pena', 2750, 52),
    ('MK0001','MK', 'Biskuat Coklat 20 gr', 3120, 78),
    ('MK0002','MK', 'Biskuat Energi 22,5 gr', 1500, 84),
    ('MK0003','MK', 'Coki Coki', 20000, 49),
    ('MK0004','MK', 'DUA KELINCI KACANG 250 gr', 23000, 103),
    ('MK0005','MK', 'HELLO PANDA', 6995, 85),
    ('MK0006','MK', 'KWACI BUNGA MATAHARI', 9995, 34),
    ('MK0007','MK', 'QTELA 23 gr', 2800, 31),
    ('MK0008','MK', 'TARO BARBEQUE', 5500, 70),
    ('MN0001','MN', 'JAHE MERAH AMANAH', 33000, 22),
    ('MN0002','MN', 'BIG COLA', 23300, 77),
    ('MN0003','MN', 'KI KO', 6500, 65),
    ('MN0004','MN', 'Kratingdaeng', 7500, 25),
    ('MN0005','MN', 'Okky jelly drink', 24000, 99),
    ('MN0006','MN', 'ADEM SARI', 2180, 22),
    ('OB0001','OB', 'ALANGSARI', 12270, 88),
    ('OB0002','OB', 'BODREX EXTRA', 2610, 36),
    ('OB0003','OB', 'GELIGA BALSEM 20 GR', 10196, 87),
    ('OB0004','OB', 'OBH COMBI B/ F', 12936, 66),
    ('OB0005','OB', 'SANGOBI ON', 17500, 34),
    ('PBB0001','PBB', 'CUSSONS BABY SABUN', 3500, 99),
    ('PBB0002','PBB', 'TELON LANG 25ML', 29300, 61),
    ('PBB0003','PBB', 'MAMYPOKO S', 192600, 35),
    ('PBB0004','PBB', 'CERELAC BERAS M', 89340, 64),
    ('PBB0005','PBB', 'Susu SGM SOya', 59700, 80),
    ('PBB0006','PBB', 'Pamp SWEETY XL', 34900, 51),
    ('PD0001','PD', 'MIE TELOR 3 AYAM', 4550, 96),
    ('PD0002','PD', 'Fortune minyak goreng 2ltr', 37800, 28),
    ('PD0003','PD', 'Bumbu Racik nasi goreng', 2100, 26),
    ('PD0004','PD', 'Beras Peras paus', 11000, 44),
    ('PD0005','PD', 'Maya sarden 155 Gr', 8545, 39),
    ('PD0006','PD', 'ROSEBRAND TEPUNG BERAS', 7900, 48),
    ('PD0007','PD', 'Blueband sach 17 Gr', 2700, 87),
    ('PKM0001','PKM', 'Ciptadent 75 gr', 3700, 61),
    ('PKM0002','PKM', 'Daia', 17300, 33),
    ('PKM0003','PKM', 'Formula Sikat Gigi', 8800, 61),
    ('PKM0004','PKM', 'Clear shampoo sach', 10250, 53),
    ('PKM0005','PKM', 'MAMA Lemon 160ML', 2800, 82),
    ('PKM0006','PKM', 'MOLTO 1X BILAS', 18900, 75),
    ('PKM0007','PKM', 'KODOMO SHA 45ML', 2498, 101),
    ('PKM0008','PKM', 'Rejoice sach', 13100, 85),
    ('SB0001','SB', 'Garam', 3550, 35),
    ('SB0002','SB', 'Telur', 31600, 56),
    ('SB0003','SB', 'Bawang putih', 30599, 98),
    ('SB0004','SB', 'Sawi', 15000, 101),
    ('SB0005','SB', 'Apel Merah', 31500, 40),
    ('SB0006','SB', 'Pisang Cavendish', 24000, 81),
    ('LN0001','LN', 'LPG 3 kg', 12750, 86),
    ('LN0002','LN', 'SWALLOW SERI', 15000, 47),
    ('LN0003','LN', 'Baygon cair reffil 175 ml', 13506, 60),
    ('LN0004','LN', 'PASEO TISSUE', 10650, 41),
    ('LN0005','LN', 'LILIN CAP PAUS', 6750, 86),
    ('LN0006','LN', 'TUSUK GIGI', 20500, 70);
insert customer values
    ('P1', '081234567890', 'Pekerti Mulyana', 'Jl. Tri No. 174', 'pekertimulyana174@gmail.com'),
    ('P2', '082345678901', 'Gita Anwar', 'Jl. Lukman No. 181', 'gitaanwar181@gmail.com'),
    ('P3', '083456789012', 'Ayuningtyas Octaviana', 'Jl. Diva No. 188', 'ayuningtyasoctaviana188@gmail.com'),
    ('P4', '084567890123', 'Meilisa Nurhayati', 'Jl. Aidifa No. 196', 'meilisanurhayati196@gmail.com'),
    ('P5', '085678901234', 'Sri Syahirah', 'Jl. Putri No. 08', 'srisyahirah08@gmail.com'),
    ('P6', '086789012345', 'Aflah Seto', 'Jl. Anindita No. 15', 'aflahseto15@gmail.com'),
    ('P7', '087890123456', 'Salwa Rahmannia', 'Jl. Razan No. 23', 'salwarahmannia23@gmail.com'),
    ('P8', '088901234567', 'Bramantika Nataniel', 'Jl. Alfahima No. 37', 'bramantikanataniel37@gmail.com'),
    ('P9', '089012345678', 'Nasaruddin Haq', 'Jl. Mirzadiniyah No. 42', 'nasaruddinhaq42@gmail.com'),
    ('P10', '081123456789', 'Ahyaul Afandi', 'Jl. Lovi No. 50', 'ahyaulafandi50@gmail.com'),
    ('P11', '087306095285', 'Kresnaningrum Anindita', 'Jl. Rizki No. 135', 'kresnaningrumanindita135@gmail.com'),
    ('P12', '082851840730', 'Utami Fitriyani', 'Jl. Resi No. 143', 'utamifitriyani143@gmail.com'),
    ('P13', '089273068952', 'Zaqi Brahmayudha', 'Jl. Meliala No. 157', 'zaqibrahmayudha157@gmail.com'),
    ('P14', '088017407386', 'Afghan Sandyka', 'Jl. Wijawati No. 162', 'afghansandyka162@gmail.com'),
    ('P15', '083810683306', 'Nazhif Titis', 'Jl. Faiza No. 170', 'nazhiftitis170@gmail.com');
insert into transaction values
    ('TR1', 'P4', '2023-12-05'),
    ('TR2', 'P11', '2023-12-06'),
    ('TR3', 'P13', '2023-12-06'),
    ('TR4', 'P14', '2023-12-06'),
    ('TR5', 'P6', '2023-12-07'),
    ('TR6', 'P3', '2023-12-07'),
    ('TR7', 'P6', '2023-12-08'),
    ('TR8', 'P6', '2023-12-09'),
    ('TR9', 'P5', '2023-12-09'),
    ('TR10', 'P1', '2023-12-10');
insert into detail_transaction values
    ('TR1', 'ATK0005', 2),
    ('TR1', 'ATK0006', 3),
    ('TR1', 'ATK0004', 3),
    ('TR2', 'SB0003', 1),
    ('TR2', 'SB0004', 1),
    ('TR2', 'SB0002', 5),
    ('TR2', 'SB0001', 1),
    ('TR3', 'ATK0005', 10),
    ('TR4', 'PBB0003', 2),
    ('TR4', 'PKM0001', 2),
    ('TR4', 'PD0002', 1),
    ('TR4', 'PKM0005', 2),
    ('TR4', 'PBB0005', 6),
    ('TR4', 'SB0002', 12),
    ('TR5', 'MK0005', 1),
    ('TR5', 'MK0007', 1),
    ('TR6', 'MN0002', 1),
    ('TR6', 'MK0004', 2),
    ('TR6', 'LN0004', 1),
    ('TR7', 'PKM0002', 1),
    ('TR7', 'PKM0003', 1),
    ('TR7', 'PKM0007', 1),
    ('TR8', 'ATK0001', 1),
    ('TR8', 'ATK0002', 2),
    ('TR8', 'ATK0003', 4),
    ('TR8', 'ATK0004', 2),
    ('TR8', 'ATK0005', 2),
    ('TR9', 'MK0006', 1),
    ('TR10', 'OB0005', 1),
    ('TR10', 'OB0002', 1);

-- Feature 1: Show Information --
select * from category;
select * from product;
select * from customer;
select * from transaction;
select * from detail_transaction;

-- Feature 2: Update Stok [Customer Beli] --
delimiter //
create procedure beli_barang (in input_id_product varchar(225), in input_beli int)
begin
	declare stok_terakhir int;
    
    -- dapetin current stock dari item yang dipilih --
    select stock 
    into stok_terakhir 
    from product 
    where id_product = input_id_product;
    
    -- update stock setelah beli --
    update product
    set stock = stok_terakhir - input_beli
    where id_product = input_id_product;
    
    -- show info setelah update stock --
    select
		product.id_product,
        product.product,
        product.price,
        product.stock
	from detail_transaction
    join product on detail_transaction.id_product = product.id_product
    order by product.id_product;
end //
delimiter ;
call beli_barang('ATK0002', 10);
 
-- Feature 3: Update Stok [Admin Add Barang] --
delimiter //
create procedure nambah_barang(in input_id_product varchar(225), in input_update int)
begin
	declare stok_terakhir int;
    
    -- dapetin current stock dari item yang dipilih --
    select stock 
    into stok_terakhir 
    from product 
    where id_product = input_id_product;
    
    -- update stock setelah beli --
    update product
    set stock = stok_terakhir + input_update
    where id_product = input_id_product;
    
    -- show info setelah update stock --
    select
		product.id_product,
        product.product,
        product.price,
        product.stock
	from detail_transaction
    join product on detail_transaction.id_product = product.id_product
    order by product.id_product;
end //
delimiter ;
call nambah_barang('ATK0002', 2);

-- Feature 4: Print Bill --
select 
    transaction.id_transaction, 
	transaction.transaction_date, 
	customer.name as customer_name, 
    product.product, 
	detail_transaction.quantity_order,
    product.price, 
    (detail_transaction.quantity_order * product.price) as total_price,
    sum(detail_transaction.quantity_order * product.price) over () as total_transaction_payment
from detail_transaction
join product on detail_transaction.id_product = product.id_product
join transaction on detail_transaction.id_transaction = transaction.id_transaction
join customer on transaction.id_customer = customer.id_customer
where transaction.id_transaction = 'TR2';