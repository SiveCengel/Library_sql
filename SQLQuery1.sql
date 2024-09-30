CREATE TABLE Yazarlar (
    YazarID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100) NOT NULL,
    Soyad NVARCHAR(100) NOT NULL
);

CREATE TABLE Kategoriler (
    KategoriID INT PRIMARY KEY IDENTITY(1,1),
    KategoriAdi NVARCHAR(100) NOT NULL
);

CREATE TABLE Uyeler (
    UyeID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100) NOT NULL,
    Soyad NVARCHAR(100) NOT NULL,
    DogumTarihi DATE,
    Email NVARCHAR(100)
);
CREATE TABLE Kitaplar (
    KitapID INT PRIMARY KEY IDENTITY(1,1),
    Baslik NVARCHAR(255) NOT NULL,
    YazarID INT,
    KategoriID INT,
    YayýnYili INT,
    ISBN NVARCHAR(13),
    CONSTRAINT FK_Yazar FOREIGN KEY (YazarID) REFERENCES Yazarlar(YazarID),
    CONSTRAINT FK_Kategori FOREIGN KEY (KategoriID) REFERENCES Kategoriler(KategoriID)
);

CREATE TABLE OduncAlmaIslemleri (
    IslemID INT PRIMARY KEY IDENTITY(1,1),
    KitapID INT,
    UyeID INT,
    OduncAlmaTarihi DATE,
    IadeTarihi DATE,
    CONSTRAINT FK_Kitap FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID),
    CONSTRAINT FK_Uye FOREIGN KEY (UyeID) REFERENCES Uyeler(UyeID)
);



