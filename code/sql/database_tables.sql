CREATE TABLE States (
    State_ID INT PRIMARY KEY,
    State_Name VARCHAR(50) UNIQUE
)

CREATE TABLE Locations (
    Facility_ID VARCHAR(6) PRIMARY KEY,     --unique identifier
    Facility_Name VARCHAR(100) NOT NULL,    --hospital name
    Location_City VARCHAR(50),
    Location_State VARCHAR(50),
    Location_Zip_Code VARCHAR(5),
    Location_County VARCHAR(50),
    State_ID INT FOREIGN KEY REFERENCES States(State_ID)
)

CREATE TABLE ClinicalOutcomeScores (
    ClinicalOutcome_ID INT PRIMARY KEY IDENTITY(1,1),
    Facility_ID VARCHAR(6), --FOREIGN KEY REFERENCES Locations(Facility_ID),
    MORT_AMI_Baseline FLOAT(3),
    MORT_AMI_Perform FLOAT(3),
    MORT_HF_Baseline FLOAT(3),
    MORT_HF_Perform FLOAT(3),
    MORT_PN_Baseline FLOAT(3),
    MORT_PN_Perform FLOAT(3),
    COMP_HIP_KNEE_Baseline FLOAT(3),
    COMP_HIP_KNEE_Perform FLOAT(3),
)

CREATE TABLE EfficiencyScores (
    Efficiency_ID INT PRIMARY KEY IDENTITY(1,1),
    Facility_ID VARCHAR(6), --FOREIGN KEY REFERENCES Locations(Facility_ID),
    MSPB_Baseline FLOAT(3),
    MSPB_Performance FLOAT(3),
)

CREATE TABLE SafetyScores (
    Safety_ID INT PRIMARY KEY IDENTITY(1,1),
    Facility_ID VARCHAR(6), --FOREIGN KEY REFERENCES Locations(Facility_ID),
    HAI_Baseline FLOAT(3),
    HAI_Performance FLOAT(3),
)

CREATE TABLE EngagementScores (
    EngagementScore_ID INT PRIMARY KEY IDENTITY(1,1),
    Facility_ID VARCHAR(6), --FOREIGN KEY REFERENCES Locations(Facility_ID),
    Comm_Nurses_Baseline FLOAT(3),
    Comm_Nurses_Perform FLOAT(3),
    Comm_Doctors_Baseline FLOAT(3),
    Comm_Doctors_Perform FLOAT(3),
    Comm_Hospital_Baseline FLOAT(3),
    Comm_Hospital_Perform FLOAT(3),
    Care_Transition_Baseline FLOAT(3),
    Care_Transition_Perform FLOAT(3),
    Comm_Medicines_Baseline FLOAT(3),
    Comm_Medicines_Perform FLOAT(3),
    Clean_Quiet_Baseline FLOAT(3),
    Clean_Quiet_Perform FLOAT(3),
    Discharge_Info_Baseline FLOAT(3),
    Discharge_Info_Perform FLOAT(3),
    Overall_Rating_Baseline FLOAT(3),
    Overall_Rating_Perform FLOAT(3),
)

CREATE TABLE PaymentAndValueOfCareVals (
    Payment_ID INT PRIMARY KEY IDENTITY(1,1),
    Facility_ID VARCHAR(6), --FOREIGN KEY REFERENCES Locations(Facility_ID),
    Payment MONEY,
    Lower_Estimate MONEY,
    Higher_Estimate MONEY,
    Payment_Category VARCHAR(50),
    Value_Of_Care_Category VARCHAR(50)
)

CREATE TABLE CensusVals (
    Census_ID INT PRIMARY KEY IDENTITY(1,1),
    Census_State VARCHAR(50),
    State_ID INT, --FOREIGN KEY REFERENCES States(State_ID),
    Total_Population INT,
    Population_Publicly_Insured INT,
    Population_Medicare INT,
    Population_Medicaid INT,
    Population_VA INT
);