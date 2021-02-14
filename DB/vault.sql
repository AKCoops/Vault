CREATE TABLE Entity (
  EID integer primary key,
  CName varchar(30),
  HQ integer(1)
);

CREATE TABLE Contact (
  CID integer primary key,
  EID integer,
  CName varchar(30),
  HQ integer(1),
  CreateDate datetime,
  UpdateDate datetime

);

CREATE TABLE Member (
  MID integer primary key,
  MType integer,
  HQ integer(1),
  Vault integer(1),
  Safe integer(1),
  CID integer,
  ShareID integer,
  ShareHash integer,
  DraftID integer,
  DraftHash integer,
  CreateDate datetime,
  UpdateDate datetime
);

CREATE TABLE MType (
  MType integer primary key,
  TypeName varchar(30),
  NaturalPerson integer(1),
  ForProfit integer(1)
);

CREATE TABLE CommonBond (
  CBID integer primary key,
  Name varchar(30),
  CBType integer,
  Vault integer(1),
  Safe integer(1),
  HQ integer(1),
  CreateDate datetime,
  UpdateDate datetime

);

CREATE TABLE CBType (
  CBType integer primary key,
  TypeName varchar(30),
  Fraternal integer(1),
  Occupational integer(1),
  Heritage integer(1),
  ReligiousCongregation integer(1),
  BondOfAssociation integer(1)
);

CREATE TABLE PII (
  MID integer primary key,
  SSN integer,
  EIN integer,
  FirstName varchar(30),
  LastName varchar(30)
);

CREATE TABLE OFAC (
  VocalHash_First varchar(60),
  VocalHash_Last varchar(60)
);

CREATE TABLE PII (
  ACHID integer primary key,
  MID integer,
  File blob
);

CREATE TABLE Storage (
  TableName varchar(30) primary key,
  PKName varchar(30),
  Storage varchar(30),
  HQ integer(1),
  Vault integer(1),
  Safe integer(1)
);
