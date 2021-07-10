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
AlýnanKitap int 
);

insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Kuyucaklý Yusuf','Edebi Roman','Sabahattin', ' Ali', 'Kuyucaklý Yusuf','22')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Kürk Mantolu Madonna','Edebi Roman','Sabahattin', ' Ali', 'Kürk Mantolu Madonna','15')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Mai ve Siyah','Tahlil Romaný','Halit Ziya', ' Uþaklýgil', 'Mai ve Siyah','17')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Sefiller','Klasik Roman','Viktor', ' Hugo', 'Sefiller','25')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Þeker Portakalý','Otobiyografik Roman','Jose', ' Mauro', 'Þeker Portakalý','8')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Savaþ ve Barýþ','Düþünce Romaný','Lev', ' Tolstoy', 'Savaþ ve Barýþ','27')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Bülbülü Öldürmek','Edebi Roman','Lee', ' Harper', 'Bülbülü Öldürmek','5')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Uçurtma Avcýsý','Klasik Roman','Halit', ' Hüseyni', 'Uçurtma Avcýsý','14')
insert into KütüphaneBilgileri (KitapAdi,KitapTürü,YazarAdi,YazarSoyadi,YazarKitabi,AlýnanKitap) values ('Dönüþüm','Düþünce Romaný','Franz', ' Kafka', 'Dönüþüm','11')

Update KütüphaneBilgileri set KitapAdi = 'Moby Dick'  where id=2
Update KütüphaneBilgileri set KitapTürü = 'Otobiyografik Roman'  where id=2

alter table KütüphaneBilgileri
add KitapAlanSayýsý int

update KütüphaneBilgileri set KitapAlanSayýsý=26 where id=10

Create table YazarBilgileri (
id int primary key identity (1,1) not null , 
YazarAdi nvarchar(50) not null default(space(0)), 
YazarSoyadi nvarchar(50) not null default(space(0)),
YazarKitabi nvarchar(50) not null default(space(0)) 
);

select * from YazarBilgileri

insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Sabahattin', ' Ali', 'Kuyucaklý Yusuf')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Sabahattin', ' Ali', 'Kürk Mantolu Madonna')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Halit Ziya', ' Uþaklýgil', 'Mai ve Siyah')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Viktor', ' Hugo', 'Sefiller')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Jose', ' Mauro', 'Þeker Portakalý')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Lev', ' Tolstoy', 'Savaþ ve Barýþ')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Lee', ' Harper', 'Bülbülü Öldürmek')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Halit', ' Hüseyni', 'Uçurtma Avcýsý')
insert into YazarBilgileri (YazarAdi,YazarSoyadi,YazarKitabi) values ('Franz', ' Kafka', 'Dönüþüm')



Create Table OgrenciBilgileri(
id int primary key identity (1,1) not null ,
OgrenciAd nvarchar(100) not null default (space(0)),
OgrenciSoyad nvarchar(100) not null default (space(0)),
OgrenciBolum nvarchar (100) not null default (space(0))
);

select * from OgrenciBilgileri

insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Sezen','Aksu','Güzel Sanatlar Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Tarkan','Yýldýz','Güzel Sanatlar Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Nazan','Öncel','Hukuk Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Barýþ','Manço','Ýktisadi ve Ýdari Bilimler Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Tunahan','Özkan','Mühendislik Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Emre','Aydýn','Ýktisadi ve Ýdrai Bilimler Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Derya','Uluð','Mühendislik Fakültesi')
insert into OgrenciBilgileri (OgrenciAd,OgrenciSoyad,OgrenciBolum) values ('Yýldýz','Tilbe','Ýktisadi ve Ýdrai Bilimler Fakültesi')
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
add AlýnanKitap int not null default (space(0))

create table Bolum(
id int primary key identity (1,1),
BolumAdý nvarchar (100) not null default (space(0)),
TercihEdilenTür nvarchar (100) not null default (space(0))
);

insert into Bolum (BolumAdý,TercihEdilenTür) values ('Güzel Sanatlar Fakültesi','Otobiyografik Roman')
insert into Bolum (BolumAdý,TercihEdilenTür) values ('Hukuk Fakültesi','Düþünce Romaný')
insert into Bolum (BolumAdý,TercihEdilenTür) values ('Ýktisadi ve Ýdari Bilimler Fakültesi','Klasik Roman')
insert into Bolum (BolumAdý,TercihEdilenTür) values ('Mühendislik Fakültesi','Tahlil Romaný')

update OgrenciBilgileri set AlýnanKitap=11 where id=9

Select OgrenciAd,OgrenciSoyad,KütüphaneÜye from OgrenciBilgileri where KütüphaneÜye=1

Select Top 5 * from OgrenciBilgileri order by AlýnanKitap desc

Select Top 1 YazarAdi,YazarSoyadi,AlýnanKitap from KütüphaneBilgileri order by AlýnanKitap desc

Select * from Bolum

