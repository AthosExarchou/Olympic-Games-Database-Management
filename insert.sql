--2nd part - Insertion Of Values

alter session
set nls_date_format='YYYY-MM-DD'; --customizes the date format

--inserted values for country
INSERT INTO COUNTRY VALUES ('AUS','Australia');
INSERT INTO COUNTRY VALUES ('USA','United States');
INSERT INTO COUNTRY VALUES ('GRE','Greece');
INSERT INTO COUNTRY VALUES ('ITA','Italy');
INSERT INTO COUNTRY VALUES ('CHN','China');
INSERT INTO COUNTRY VALUES ('CAN','Canada');
INSERT INTO COUNTRY VALUES ('GBR','Great Britain');
INSERT INTO COUNTRY VALUES ('RUS','Russia');
INSERT INTO COUNTRY VALUES ('BRA','Brazil');
INSERT INTO COUNTRY VALUES ('KOR','South Korea');
INSERT INTO COUNTRY VALUES ('JPN','Japan');
INSERT INTO COUNTRY VALUES ('FRA','France');
INSERT INTO COUNTRY VALUES ('JAM', 'Jamaica');
INSERT INTO COUNTRY VALUES ('NOR', 'Norway');

SELECT * FROM COUNTRY; --displays the inserted countries

--inserted values for games
INSERT INTO GAMES VALUES (2000,'Summer','Sydney','AUS');
INSERT INTO GAMES VALUES (2002,'Winter','Salt Lake City','USA');
INSERT INTO GAMES VALUES (2004,'Summer','Athens','GRE');
INSERT INTO GAMES VALUES (2006,'Winter','Turin','ITA');
INSERT INTO GAMES VALUES (2008,'Summer','Beijing','CHN');
INSERT INTO GAMES VALUES (2010,'Winter','Vancouver','CAN');
INSERT INTO GAMES VALUES (2012,'Summer','London','GBR');
INSERT INTO GAMES VALUES (2014,'Winter','Sochi','RUS');
INSERT INTO GAMES VALUES (2016,'Summer','Rio de Janeiro','BRA');
INSERT INTO GAMES VALUES (2018,'Winter','Pyeongchang','KOR');
INSERT INTO GAMES VALUES (2020,'Summer','Tokyo','JPN');
INSERT INTO GAMES VALUES (2022,'Winter','Beijing','CHN');
INSERT INTO GAMES VALUES (2024,'Summer','Paris','FRA');
INSERT INTO GAMES VALUES (2026,'Winter','Milan','ITA');

SELECT * FROM GAMES; --displays the inserted games

--inserted values for events
INSERT INTO EVENT VALUES ('100m men','Athletics','Individual');
INSERT INTO EVENT VALUES ('200m men','Athletics','Individual');
INSERT INTO EVENT VALUES ('4x100m relay men','Athletics','Team');
INSERT INTO EVENT VALUES ('100m free women','Swimming','Individual');
INSERT INTO EVENT VALUES ('100m fly women','Swimming','Individual');
INSERT INTO EVENT VALUES ('4x100m free women','Swimming','team');
INSERT INTO EVENT VALUES ('100m fly men','Swimming','Individual');
INSERT INTO EVENT VALUES ('4x200m free men','Swimming','Team');
INSERT INTO EVENT VALUES ('4x100m relay women','Athletics','Team');
INSERT INTO EVENT VALUES ('200m women','Athletics','Individual');
INSERT INTO EVENT VALUES ('Long Jump men','Athletics','Individual');
INSERT INTO EVENT VALUES ('Still Rings men','Artistic gymnastics','Individual');
INSERT INTO EVENT VALUES ('Pole Vault women','Athletics','Individual');
INSERT INTO EVENT VALUES ('Basketball men','Basketball','Team');
INSERT INTO EVENT VALUES ('Water Polo men','Aquatic','Team');
INSERT INTO EVENT VALUES ('Snutch','Weightlifting','Individual');
INSERT INTO EVENT VALUES ('Clean and Jerk','Weightlifting','Individual');
INSERT INTO EVENT VALUES ('470 class','Sailing','Individual');
INSERT INTO EVENT VALUES ('Biathlon men','Biathlon','Individual');

SELECT * FROM EVENT; --displays the inserted events

--inserted values for athletes
INSERT INTO ATHLETE VALUES ('1','Usain Bolt','1986-08-21','M','JAM');
INSERT INTO ATHLETE VALUES ('2','Emma Jennifer McKeon','1994-05-24','F','AUS');
INSERT INTO ATHLETE VALUES ('3','Michael Phelps','1985-06-30','M','USA');
INSERT INTO ATHLETE VALUES ('4','Allyson Felix','1985-11-18','F','USA');
INSERT INTO ATHLETE VALUES ('5','Miltiadis Tentoglou','1998-03-18','M','GRE');
INSERT INTO ATHLETE VALUES ('6','Eleftherios Petrounias','1990-11-30','M','GRE');
INSERT INTO ATHLETE VALUES ('7','Katerina Stefanidi','1990-02-04','F','GRE');
INSERT INTO ATHLETE VALUES ('8','Ioannis Fountoulis','1988-05-25','M','GRE');
INSERT INTO ATHLETE VALUES ('9','Pyrros Dimas','1971-10-13','M','GRE');
INSERT INTO ATHLETE VALUES ('10','Sofia Bekatorou','1977-12-26','F','GRE');
INSERT INTO ATHLETE VALUES ('11','Kevin Wayne Durant','1988-07-29','M','USA');
INSERT INTO ATHLETE VALUES ('12','Johannes Thingnes BOE','1993-05-16','M','NOR');
INSERT INTO ATHLETE VALUES ('13','Emmanouil Zerdevas','1997-08-12','M','GRE');

SELECT * FROM ATHLETE; --displays the inserted athletes

--inserted values for participations
INSERT INTO PARTICIPATION VALUES ('1',2008,'Summer','100m men','Gold'); --Usain Bolt
INSERT INTO PARTICIPATION VALUES ('1',2008,'Summer','200m men','Gold'); --Usain Bolt
INSERT INTO PARTICIPATION VALUES ('1',2012,'Summer','4x100m relay men','Gold'); --Usain Bolt
INSERT INTO PARTICIPATION VALUES ('1',2016,'Summer','100m men','Gold'); --Usain Bolt
INSERT INTO PARTICIPATION VALUES ('2',2020,'Summer','100m fly women','Bronze'); --Emma Jennifer McKeon
INSERT INTO PARTICIPATION VALUES ('2',2016,'Summer','100m fly women',''); --Emma Jennifer McKeon
INSERT INTO PARTICIPATION VALUES ('2',2016,'Summer','4x100m free women','Gold'); --Emma Jennifer McKeon
INSERT INTO PARTICIPATION VALUES ('3',2016,'Summer','100m fly men','Silver'); --Michael Phelps
INSERT INTO PARTICIPATION VALUES ('3',2004,'Summer','4x200m free men','Gold'); --Michael Phelps
INSERT INTO PARTICIPATION VALUES ('4',2012,'Summer','4x100m relay women','Gold'); --Allyson Felix
INSERT INTO PARTICIPATION VALUES ('4',2004,'Summer','200m women','Silver'); --Allyson Felix
INSERT INTO PARTICIPATION VALUES ('5',2020,'Summer','Long Jump men','Gold'); --Miltiadis Tentoglou
INSERT INTO PARTICIPATION VALUES ('5',2024,'Summer','Long Jump men',''); --Miltiadis Tentoglou
INSERT INTO PARTICIPATION VALUES ('6',2016,'Summer','Still Rings men','Gold'); --Eleftherios Petrounias
INSERT INTO PARTICIPATION VALUES ('6',2020,'Summer','Still Rings men','Bronze'); --Eleftherios Petrounias
INSERT INTO PARTICIPATION VALUES ('6',2024,'Summer','Still Rings men',''); --Eleftherios Petrounias
INSERT INTO PARTICIPATION VALUES ('7',2016,'Summer','Pole Vault women','Gold'); --Katerina Stefanidi
INSERT INTO PARTICIPATION VALUES ('7',2020,'Summer','Pole Vault women',''); --Katerina Stefanidi
INSERT INTO PARTICIPATION VALUES ('7',2024,'Summer','Pole Vault women',''); --Katerina Stefanidi
INSERT INTO PARTICIPATION VALUES ('8',2020,'Summer','Water Polo men','Silver'); --Ioannis Fountoulis
INSERT INTO PARTICIPATION VALUES ('9',2000,'Summer','Clean and Jerk','Gold'); --Pyrros Dimas
INSERT INTO PARTICIPATION VALUES ('9',2004,'Summer','Snutch','Bronze'); --Pyrros Dimas
INSERT INTO PARTICIPATION VALUES ('10',2004,'Summer','470 class','Gold'); --Sofia Bekatorou
INSERT INTO PARTICIPATION VALUES ('11',2012,'Summer','Basketball men','Gold'); --Kevin Wayne Durant
INSERT INTO PARTICIPATION VALUES ('11',2016,'Summer','Basketball men','Gold'); --Kevin Wayne Durant
INSERT INTO PARTICIPATION VALUES ('11',2024,'Summer','Basketball men',''); --Kevin Wayne Durant
INSERT INTO PARTICIPATION VALUES ('12',2014,'Winter','Biathlon men',''); --Johannes Thingnes BOE
INSERT INTO PARTICIPATION VALUES ('12',2018,'Winter','Biathlon men','Gold'); --Johannes Thingnes BOE
INSERT INTO PARTICIPATION VALUES ('12',2022,'Winter','Biathlon men','Bronze'); --Johannes Thingnes BOE
INSERT INTO PARTICIPATION VALUES ('13',2020,'Summer','Water Polo men','Silver'); --Emmanouil Zerdevas

SELECT * FROM PARTICIPATION; --displays the inserted participations


COMMIT; --saves all the inserted values
