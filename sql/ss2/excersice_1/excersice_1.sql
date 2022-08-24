drop database if exists bai_tap_1;
create database if not exists bai_tap_1;
use bai_tap_1;

create table phieu_xuat(
so_phieu_xuat int primary key auto_increment,
ngay_xuat date
);

create table vat_tu(
ma_vat_tu int primary key auto_increment,
ten_vat_tu varchar(50)
);

create table phieu_xuat_vat_tu(
so_phieu_xuat int,
ma_vat_tu int,
don_gia_xuat double,
so_luong_san_xuat int,
primary key (so_phieu_xuat, ma_vat_tu),
foreign key(so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table phieu_nhap(
so_phieu_nhap int primary key auto_increment,
ngay_nhap date
);

create table phieu_nhap_vat_tu(
ma_vat_tu int,
so_phieu_nhap int, 
don_gia_nhap double,
so_luong_nhap int,
primary key(ma_vat_tu, so_phieu_nhap),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key(so_phieu_nhap) references phieu_nhap(so_phieu_nhap)
);

create table nha_cung_cap(
ma_nha_cung_cap int primary key auto_increment,
ten_nha_cung_cap varchar(50),
dia_chi varchar(50)
);

create table don_dat_hang(
so_dat_hang int primary key auto_increment,
ngay_dat_hang date,
ma_nha_cung_cap int,
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);


create table don_dat_hang_vat_tu(
ma_vat_tu int,
so_dat_hang int,
primary key (ma_vat_tu, so_dat_hang),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key (so_dat_hang) references don_dat_hang(so_dat_hang)
);

create table so_dien_thoai(
so_dien_thoai varchar(20),
ma_nha_cung_cap int,
foreign key(ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);
