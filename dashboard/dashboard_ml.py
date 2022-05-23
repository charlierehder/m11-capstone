# 'dataset' holds the input data for this script

import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.metrics import r2_score
from xgboost import XGBRegressor
import joblib

X = dataset[[           'MSPB_Baseline',         'MSPB_Performance',
                   'HAI_Baseline',          'HAI_Performance',
              'MORT_AMI_Baseline',         'MORT_AMI_Perform',
               'MORT_HF_Baseline',          'MORT_HF_Perform',
               'MORT_PN_Baseline',          'MORT_PN_Perform',
         'COMP_HIP_KNEE_Baseline',    'COMP_HIP_KNEE_Perform',
           'Comm_Nurses_Baseline',      'Comm_Nurses_Perform',
          'Comm_Doctors_Baseline',     'Comm_Doctors_Perform',
         'Comm_Hospital_Baseline',    'Comm_Hospital_Perform',
       'Care_Transition_Baseline',  'Care_Transition_Perform',
        'Comm_Medicines_Baseline',   'Comm_Medicines_Perform',
           'Clean_Quiet_Baseline',      'Clean_Quiet_Perform',
        'Discharge_Info_Baseline',   'Discharge_Info_Perform',
        'Overall_Rating_Baseline',   'Overall_Rating_Perform',
                       'State_ID',                        '0',
                              '1',                        '2',
                              '3',                        '4',
                              '5',                        '6',
                              '7',                        '8',
                              '9',                       '10',
                              '11',                      '12',
                           '0_VC',                     '1_VC',
                           '2_VC',                     '3_VC',
                           '4_VC',                     '5_VC',
                           '6_VC',                     '7_VC',
                           '8_VC',                     '9_VC',
                          '10_VC']]
y = dataset[['Payment']]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

#CHANGE FILE PATH TO WHERE YOU HAVE THE MODEL SAVED
model = joblib.load(r"C:\Users\theth\Documents\Gen10\M11\repo\code\xgboost_model.model")

predictions = model.predict(X_test)
predict_df = pd.DataFrame(predictions)

final_df = predict_df.insert(loc=1, value=y_test, column='Payment')