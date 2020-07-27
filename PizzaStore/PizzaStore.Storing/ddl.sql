use master;
go

create database PizzaStoreDb;
go

create schema Pizza;
go

create table Pizza.Pizza
(
    PizzaId int not null primary key,
    CrustId int null foreign key references Pizza.Crust(CrustId),
    SizeId int null,
    [Name] nvarchar(250) not null,
    DateModified datetime2(0) not null,
    IsValid bit not null default 1,
    constraint SizeId foreign key references Pizza.Size(SizeId)
);

create table Pizza.Crust
(
    CurstId int not null,
    [Name] nvarchar(100) not null,
    IsValid bit not null,
    constraint CrustId primary key,
    constraint Active default 1
);

create table Pizza.Size
(
    SizeId int not null,
    [Name] nvarchar(100) not null,
    IsValid bit not null
);

create table Pizza.Topping
(
    ToppingId int not null,
    [Name] nvarchar(250) not null,
    IsValid bit not null
);

create table Pizza.PizzaTopping
(
    PizzaToppingId int not null,
    PizzaId int not null,
    ToppingId int,
    IsValid bit not null
);

create table Pizza.User
(
    UserId int not null,
    [Name] nvarchar(250) not null,
    IsValid bit not null
);

create table Pizza.Store
(
    Storeid int not null,
    [Name] nvarchar(250) not null,
    IsValid bit not null
)
go

alter table Pizza.Size
    add constraint PK_Size_SizeId SizeId primary key

alter table Pizza.Topping
    add constraint PK_Topping_ToppingId ToppingId primary key

alter table Pizza.PizzaTopping
    add constraint PK_PizzaTopping_PizzaToppingId PizzaToppingId primary key

alter table Pizza.Topping
    add constraint FK_PizzaTopping_PizzaId PizzaId foreign key references Pizza.Pizza(PizzaId)

alter table Pizza.Topping
    add constraint FK_PizzaTopping_ToppingId ToppingId foreign key references Pizza.Topping(ToppingId)