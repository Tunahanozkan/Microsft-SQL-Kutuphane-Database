select * from KütüphaneBilgileri


alter table KütüphaneBilgileri 
add KitapTürü nvarchar (50) not null default(space (0))

ALTER TABLE KütüphaneBilgileri
Drop Column OgrenciSoyad;

Create table KütüphaneBilgileri(
id int  primary key identity (1,1),
KitapAdi nvarchar (100) not null default(space(0)),
KitapTürü nvarchar (100) not null default(space(0)), 
Yazaradi nvarchar (100) not null default(space(0)), 
YazarSoyadi nvarchar (100) not null default(space(0)),
YazarKitabi nvarchar (100) not null default(space(0)),
AlınanKitap int 
);

insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Kuyucaklı Yusuf','Edebi Roman','Sabahattin', ' Ali', 'Kuyucaklı Yusuf','22')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Kürk Mantolu Madonna','Edebi Roman','Sabahattin', ' Ali', 'Kürk Mantolu Madonna','15')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Mai ve Siyah','Tahlil Romanı','Halit Ziya', ' Uşaklıgil', 'Mai ve Siyah','17')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Sefiller','Klasik Roman','Viktor', ' Hugo', 'Sefiller','25')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Şeker Portakalı','Otobiyografik Roman','Jose', ' Mauro', 'Şeker Portakalı','8')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Savaş ve Barış','Düşünce Romanı','Lev', ' Tolstoy', 'Savaş ve Barış','27')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Bülbülü Öldürmek','Edebi Roman','Lee', ' Harper', 'Bülbülü Öldürmek','5')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Uçurtma Avcısı','Klasik Roman','Halit', ' Hüseyni', 'Uçurtma Avcısı','14')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlınanKitap) values ('Dönüşüm','Düşünce Romanı','Franz', ' Kafka', 'Dönüşüm','11')

Update KütüphaneBilgileri set KitapAdi = 'Moby Dick'  where id=2
Update KütüphaneBilgileri set KitapTürü = 'Otobiyografik Roman'  where id=2

alter table KütüphaneBilgileri
add KitapAlanSayısı int

update KütüphaneBilgileri set KitapAlanSayısı=26 where id=10

Create table YazarBilgileri (
id int primary key identity (1,1) not null , 
YazarAdi nvarchar(50) not null default(space(0)), 
YazarSoyadi nvarchar(50) not null default(space(0)),
YazarKitabi nvarchar(50) not null default(space(0)) 
);

select * from YazarBilgileri

insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Sabahattin', ' Ali', 'Kuyucaklı Yusuf')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Sabahattin', ' Ali', 'Kürk Mantolu Madonna')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Halit Ziya', ' Uşaklıgil', 'Mai ve Siyah')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Viktor', ' Hugo', 'Sefiller')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Jose', ' Mauro', 'Şeker Portakalı')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Lev', ' Tolstoy', 'Savaş ve Barış')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Lee', ' Harper', 'Bülbülü Öldürmek')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Halit', ' Hüseyni', 'Uçurtma Avcısı')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Franz', ' Kafka', 'Dönüşüm')



Create Table OgrenciBilgileri(
id int primary key identity (1,1) not null ,
OgrenciAd nvarchar(100) not null default (space(0)),
OgrenciSoyad nvarchar(100) not null default (space(0)),
OgrenciBolum nvarchar (100) not null default (space(0))
);

select * from OgrenciBilgileri

insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Sezen','Aksu','Güzel Sanatlar Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Tarkan','Yıldız','Güzel Sanatlar Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Nazan','Öncel','Hukuk Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Barış','Manço','İktisadi ve İdari Bilimler Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Tunahan','Özkan','Mühendislik Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Emre','Aydın','İktisadi ve İdrai Bilimler Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Derya','Uluğ','Mühendislik Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Yıldız','Tilbe','İktisadi ve İdrai Bilimler Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Hakan','Altun','Hukuk Fakültesi')

Drop table OgrenciBilgileri
Drop table YazarBilgileri
Drop table KütüphaneBilgileri

Alter table OgrenciBilgileri
add KitapAlan bit

update OgrenciBilgileri set KitapAlan=1  Where id=9

select  * from OgrenciBilgileri where KitapAlan=1

alter table ogrenciBilgileri
drop column KütüphaneÜye

Alter table OgrenciBilgileri
add KütüphaneÜye char (10)  not null default(space (0))

update OgrenciBilgileri set KütüphaneÜye=0 Where id=9

alter table OgrenciBilgileri
add AlınanKitap int not null default (space(0))

create table Bolum(
id int primary key identity (1,1),
BolumAdı nvarchar (100) not null default (space(0)),
TercihEdilenTür nvarchar (100) not null default (space(0))
);

insert into Bolum (BolumAdı,TercihEdilenTür) values ('Güzel Sanatlar Fakültesi','Otobiyografik Roman')
insert into Bolum (BolumAdı,TercihEdilenTür) values ('Hukuk Fakültesi','Düşünce Romanı')
insert into Bolum (BolumAdı,TercihEdilenTür) values ('İktisadi ve İdari Bilimler Fakültesi','Klasik Roman')
insert into Bolum (BolumAdı,TercihEdilenTür) values ('Mühendislik Fakültesi','Tahlil Romanı')

update OgrenciBilgileri set AlınanKitap=11 where id=9

Select OgrenciAd,OgrenciSoyad,KütüphaneÜye from OgrenciBilgileri where KütüphaneÜye=1

Select Top 5 * from OgrenciBilgileri order by AlınanKitap desc

Select Top 1 YazarAdi,YazarSoyadi,AlınanKitap from KütüphaneBilgileri order by AlınanKitap desc

Select * from Bolum

