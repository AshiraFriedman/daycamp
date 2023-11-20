use CampDB
GO

delete Camper
go

insert Camper(FirstName, LastName, Grade, School, HomePhone, CellPhone, Allergies, BunkRequest, Half, EarlyBirdSpecial, Paid)
select 'Shayna', 'Stein', 1, 'Beis Rivka', 2161234567, 2162345678, null, 'Shaindy Bauman', 'first', 1, 1
union select 'Bracha', 'Katz', 1, 'Beis Leah', 2163456789, 2165678910, null, 'Gitty Kohn', 'first', 0, 1
union select 'Gitty', 'Kohn', 1, 'Beis Leah', 2164567890, 2162468102, 'peanuts', 'Bracha Katz', 'first', 1, 0
union select 'Sarah', 'Baum', 2, 'Beis Rivka', 2166782345, 2169876543, null, 'Rochel Berman', 'both', 1, 0
union select 'Miriam', 'Cohen', 2, 'Beis Rochel', 2165678910, 2167654321, 'dairy', null, 'second', 0, 0
union select 'Rivky', 'Cohen', 1, 'Beis Rochel', 2165678910, 2167654321, null, null, 'second', 0, 0
union select 'Shaindy', 'Bauman', 1, 'Beis Rochel', 2168901234, 7324356759, null, 'Shayna Stein', 'first', 1, 1
union select 'Rivka', 'Katz', 2, 'Beis Leah', 2163845829, 2165093968, null, null, 'second', 1, 1
union select 'Avigayil', 'Steinman', 2, 'Beis Sarah', 2164931984, 8482842339, 'dairy', null, 'both', 0, 1
union select 'Rochel', 'Berman', 2, 'Beis Sarah', 2162081945, 2163058293, null, 'Sarah Baum', 'both', 0, 1
union select 'Chana', 'Braun', 1,'Beis Sarah', 2169852492, 7322038038, null, null, 'both', 1, 1
union select 'Leah', 'Gross', 1, 'Beis Rivka', 2161357900, 2168642020, null, null, 'both', 0, 1
union select 'Yocheved', 'Bernstein', 2, 'Beis Rochel', 2168027034, 2483841049, null, null, 'both', 0, 1
