CREATE TABLE Personn(
   person_id int PRIMARY KEY,
   first_name VARCHAR (60),
   last_name VARCHAR (60),
   gender VARCHAR(5) CHECK (gender IN ('man', 'woman')),
   birth_date DATE,
   phone bigserial, 
   address varchar(200)

);

INSERT INTO Personn VALUES('1', 'qhazale', 'bakhtiari', 'woman', '1998-03-02', '09100018009', 'piroozi');
INSERT INTO Personn VALUES('2', 'qhazale1', 'bakhtiari1', 'man', '1998-03-21', '09100018001', 'piroozi1');
INSERT INTO Personn VALUES('3', 'qhazale2', 'bakhtiari2', 'woman', '1998-03-22', '09100018002', 'piroozi2');
INSERT INTO Personn VALUES('4', 'qhazale3', 'bakhtiari3', 'man', '1998-03-23', '09100018003', 'piroozi3');
INSERT INTO Personn VALUES('5', 'qhazale4', 'bakhtiari4', 'woman', '1998-03-24', '09100018004', 'piroozi4');
INSERT INTO Personn VALUES('6', 'zahra', 'bashir', 'woman', '1998-03-02', '09398100426', 'rei');
INSERT INTO Personn VALUES('7', 'zahra1', 'bashir1', 'man', '1998-03-21', '09398100421', 'rei1');
INSERT INTO Personn VALUES('8', 'zahra2', 'bashir2', 'woman', '1998-03-22', '09398100422', 'rei2');
INSERT INTO Personn VALUES('9', 'zahra3', 'bashir3', 'man', '1998-03-23', '09398100423', 'rei3');
INSERT INTO Personn VALUES('10', 'zahra4', 'bashir4', 'woman', '1998-03-24', '09398100424', 'rei4');
INSERT INTO Personn VALUES('11', 'mahsa', 'bashir', 'woman', '1998-03-02', '09398100426', 'rei');
INSERT INTO Personn VALUES('12', 'mahsa1', 'bashir1', 'man', '1998-03-21', '09398100421', 'rei1');
INSERT INTO Personn VALUES('13', 'mahsa2', 'bashir2', 'woman', '1998-03-22', '09398100422', 'rei2');
INSERT INTO Personn VALUES('14', 'mahsa3', 'bashir3', 'man', '1998-03-23', '09398100423', 'rei3');
INSERT INTO Personn VALUES('15', 'mahsa4', 'bashir4', 'woman', '1998-03-24', '09398100424', 'rei4');

/*select * from Personn;*/

CREATE TABLE Driver (
    driver_id int PRIMARY KEY,
    education VARCHAR(3) CHECK (education IN('bs', 'ms', 'phd')),
    salary serial,
    person_id int,
    FOREIGN KEY (person_id) REFERENCES Personn(person_id)
);



INSERT INTO Driver VALUES('1', 'bs', '6551', '8');
INSERT INTO Driver VALUES('2', 'ms', '6552', '1');
INSERT INTO Driver VALUES('3', 'phd', '6553', '5');
INSERT INTO Driver VALUES('4', 'ms', '6554', '10');
INSERT INTO Driver VALUES('5', 'bs', '6555', '3');
INSERT INTO Driver VALUES('6', 'phd', '6558', '9');
INSERT INTO Driver VALUES('7', 'ms', '5227528', '6');
INSERT INTO Driver VALUES('8', 'phd', '7575', '4');
INSERT INTO Driver VALUES('9', 'bs', '758272', '2');
INSERT INTO Driver VALUES('10', 'bs', '98765', '7');

/*select * from Driver;*/
/*select * from Driver join Personn where Personn.person_id = Driver.person_id;*/
select * from Driver join Personn on Personn.person_id = Driver.person_id;

CREATE TABLE Passenger(
   passenger_id int PRIMARY KEY,
   person_id int,
   FOREIGN KEY (person_id) REFERENCES Personn(person_id)
);



INSERT INTO Passenger VALUES('1', '15');
INSERT INTO Passenger VALUES('2', '13');
INSERT INTO Passenger VALUES('3', '11');
INSERT INTO Passenger VALUES('4', '14');
INSERT INTO Passenger VALUES('5', '12');

select * from Passenger join Personn on Personn.person_id = Passenger.person_id;

CREATE TABLE Employeee(
    employee_id int PRIMARY KEY,
    education VARCHAR(3) CHECK (education IN('bs', 'ms', 'phd')),
    salary serial
);

INSERT INTO Employeee VALUES('1', 'phd', '34535');
INSERT INTO Employeee VALUES('2', 'ms', '23535');
INSERT INTO Employeee VALUES('3', 'ms', '578');
INSERT INTO Employeee VALUES('4', 'phd', '78989');
INSERT INTO Employeee VALUES('5', 'bs', '688787');
INSERT INTO Employeee VALUES('6', 'bs', '34557');
INSERT INTO Employeee VALUES('7', 'ms', '4655676');
INSERT INTO Employeee VALUES('8', 'bs', '356');
INSERT INTO Employeee VALUES('9', 'bs', '2321');
INSERT INTO Employeee VALUES('10', 'phd', '1236547');

/*select * from Employeee;*/


CREATE TABLE Carr(
    plaque CHAR(7) PRIMARY KEY
);

INSERT INTO Carr VALUES('87s6564');
INSERT INTO Carr VALUES('oq387df');
INSERT INTO Carr VALUES('wqiu3eh');
INSERT INTO Carr VALUES('o3iruf3');
INSERT INTO Carr VALUES('2oihrf4');
INSERT INTO Carr VALUES('0923u4e');
INSERT INTO Carr VALUES('jd10392');
INSERT INTO Carr VALUES('10i3hrf');
INSERT INTO Carr VALUES('102o3ir');
INSERT INTO Carr VALUES('192y4rr');

/*select * from Carr;*/


CREATE TABLE DP(
    DP_id int PRIMARY KEY,
    passenger_id int,
    FOREIGN KEY (passenger_id) REFERENCES Passenger(passenger_id),
    driver_id int,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);


INSERT INTO DP VALUES('1', '1', '1');
INSERT INTO DP VALUES('2', '2', '2');
INSERT INTO DP VALUES('3', '3', '3');
INSERT INTO DP VALUES('4', '4', '4');
INSERT INTO DP VALUES('5', '5', '5');



CREATE TABLE Trip(
    Trip_id int PRIMARY KEY
);

INSERT INTO Trip VALUES('145');
INSERT INTO Trip VALUES('22435');
INSERT INTO Trip VALUES('3435');
INSERT INTO Trip VALUES('4435');
INSERT INTO Trip VALUES('556');
INSERT INTO Trip VALUES('624');
INSERT INTO Trip VALUES('75');
INSERT INTO Trip VALUES('8678');
INSERT INTO Trip VALUES('9345');
INSERT INTO Trip VALUES('1043');


/*select * from Trip;*/

CREATE TABLE Place(
    place_id int PRIMARY KEY
);

INSERT INTO Place VALUES('09876');
INSERT INTO Place VALUES('578');
INSERT INTO Place VALUES('698');
INSERT INTO Place VALUES('8978');
INSERT INTO Place VALUES('234');
INSERT INTO Place VALUES('456');
INSERT INTO Place VALUES('58');
INSERT INTO Place VALUES('678');
INSERT INTO Place VALUES('24234');
INSERT INTO Place VALUES('5567');

/*select * from place;*/
