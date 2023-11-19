use CampDB
go

drop table if exists Camper
go
create table dbo.Camper(
    CamperId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_Camper_FirstName_cannot_be_blank check(FirstName > ''),
    LastName varchar(30) not null constraint ck_Camper_LastName_cannot_be_blank check(LastName > ''),
    Grade char(1) not null constraint ck_Camper_Grade_must_be_1_or_2 check(Grade in (1, 2)),
    School varchar(50) not null constraint ck_Camper_School_cannot_be_blank check(School > ''),
    Allergies varchar(max) null constraint ck_Camper_Allergies_cannot_be_blank check(Allergies > ''),
    HomePhone bigint not null,
    CellPhone bigint not null,
    BunkRequest varchar(60) null constraint ck_Camper_BunkRequest_cannot_be_blank check(BunkRequest > ''),
    Half varchar(6) null constraint ck_Camper_Half_must_be_first_second_or_both check(Half in ('first', 'second', 'both')),
    EarlyBirdSpecial bit not null constraint df_Camper_EarlyBirdSpecial default 0,
    Paid bit not null constraint df_Camper_Paid default 0,
    Price as case 
    when Half in ('first', 'second') THEN
        case when EarlyBirdSpecial = 0 then 400 else 380 end
    when Half = 'both' THEN
        case when EarlyBirdSpecial = 0 then 800 else 760 end
    end
)