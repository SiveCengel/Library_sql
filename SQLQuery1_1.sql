CREATE TABLE KitapKopyalari (
    KopyaID INT PRIMARY KEY IDENTITY(1,1),
    KitapID INT,
    Durum NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_Kopya_Kitap FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID)
);

CREATE TABLE Yayincilar (
    YayinciID INT PRIMARY KEY IDENTITY(1,1),
    YayinciAdi NVARCHAR(100) NOT NULL
);

CREATE TABLE Etiketler (
    EtiketID INT PRIMARY KEY IDENTITY(1,1),
    EtiketAdi NVARCHAR(100) NOT NULL
);

CREATE TABLE KitapEtiketleri (
    KitapID INT,
    EtiketID INT,
    PRIMARY KEY (KitapID, EtiketID),
    CONSTRAINT FK_KitapEtiketi_Kitap FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID),
    CONSTRAINT FK_KitapEtiketi_Etiket FOREIGN KEY (EtiketID) REFERENCES Etiketler(EtiketID)
);

ALTER TABLE Kitaplar
ADD YayinciID INT;

ALTER TABLE Kitaplar
ADD CONSTRAINT FK_Yayinci FOREIGN KEY (YayinciID) REFERENCES Yayincilar(YayinciID);


