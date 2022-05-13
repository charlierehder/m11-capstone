INSERT INTO States
    (States.State_ID, States.State_Name)
        SELECT Census.State_ID, Census.State
        FROM [Census];

CREATE TABLE StateAbbrs (
    StateName VARCHAR(50) NOT NULL,
    StateAbbr CHAR(2) NOT NULL
)

INSERT INTO StateAbbrs
    (StateName, StateAbbr)
    VALUES ('Alabama', 'AL'),
        ('Alaska', 'AK'),
        ('Arizona', 'AZ'),
        ('Arkansas', 'AR'),
        ('California', 'CA'),
        ('Colorado', 'CO'),
        ('Connecticut', 'CT'),
        ('Delaware', 'DE'),
        ('District of Columbia', 'DC'),
        ('Florida', 'FL'),
        ('Georgia', 'GA'),
        ('Hawaii', 'HI'),
        ('Idaho', 'ID'),
        ('Illinois', 'IL'),
        ('Indiana', 'IN'),
        ('Iowa', 'IA'),
        ('Kansas', 'KS'),
        ('Kentucky', 'KY'),
        ('Louisiana', 'LA'),
        ('Maine', 'ME'),
        ('Maryland', 'MD'),
        ('Massachusetts', 'MA'),
        ('Michigan', 'MI'),
        ('Minnesota', 'MN'),
        ('Mississippi', 'MS'),
        ('Missouri', 'MO'),
        ('Montana', 'MT'),
        ('Nebraska', 'NE'),
        ('Nevada', 'NV'),
        ('New Hampshire', 'NH'),
        ('New Jersey', 'NJ'),
        ('New Mexico', 'NM'),
        ('New York', 'NY'),
        ('North Carolina', 'NC'),
        ('North Dakota', 'ND'),
        ('Ohio', 'OH'),
        ('Oklahoma', 'OK'),
        ('Oregon', 'OR'),
        ('Pennsylvania', 'PA'),
        ('Rhode Island', 'RI'),
        ('South Carolina', 'SC'),
        ('South Dakota', 'SD'),
        ('Tennessee', 'TN'),
        ('Texas', 'TX'),
        ('Utah', 'UT'),
        ('Vermont', 'VT'),
        ('Virginia', 'VA'),
        ('Washington', 'WA'),
        ('West Virginia', 'WV'),
        ('Wisconsin', 'WI'),
        ('Wyoming', 'WY');

INSERT INTO Locations
    (
        Facility_ID,
        Facility_Name,
        Location_City,
        Location_State,
        Location_Zip_Code,
        Location_County,
        State_ID
    )
        SELECT DISTINCT facility_id, facility_name, city, state, zip_code, county_name, State_ID
        FROM PaymentAndValueOfCare
        JOIN stateAbbrs ON PaymentAndValueOfCare.state = stateAbbrs.StateAbbr
        JOIN States ON stateAbbrs.StateName = States.State_Name;

