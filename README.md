# Team Rocket Capstone Project - Health

![Team PFP](https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/pokemon-team-rocket-1274884-2.jpg)

This repository contains all of the documentation and code behind the concepts learned as a part of the February 2022 Data cohort in Genesis10's Dev10 program. In it we demonstrate a strong understanding of data literacy, data analysis and data engineering. More specifically, this project aims to present insights about healthcare data from the US Census Bureau and the Centers for Medicare and Medicaid (CMS); links to the data sources are included at the bottom of the readme. Additionally, we sought to create a machine learning model capable of accurately predicting the cost of hospitalizations based on the myriad scores and metrics provided by CMS.

The content in this repository was created by Charlie Rehder, Alysia Halverson and Jakob Thunen. Flies in the repository include:

## [code](https://github.com/charlierehder/m11-capstone/tree/master/code)

Folder containing all code used in the process of making this project. Further details about tools/libraries used.

  * **sql** - folder containing SQL code to create and run project database.

  * **ETL-CO-Rocket.ipynb** - notebook with ETL done to the Clinical Outcomes Scores dataset from CMS.

  * **ETL-Efficiency.ipynb** - notebook with ETL done to the Efficiency Scores dataset from CMS.

  * **ETL-PCE-Rocket.ipynb** - notebook with ETL done to the Community Engagment Scores dataset from CMS.

  * **ETL-Safety-Rocket.ipynb** - notebok with ETL done to the Safety Scores dataset from CMS.

  * **ETL-Payment-Rocket.ipynb** - notebook with ETL done to the Payment and Value of Care dataset from CMS.

  * **team-rocket-census-consumer.ipynb** - notebook with Kafka consumer, code meant for Census Health Insureance dataset.

  * **team-rocket-census-producer.ipynb** - notebook with Kafka producer, code meant for Census Health Insurance dataset.

  * **team-rocket-cms-consumer.ipynb** - notebook with Kafka consumer, code meant for Centers for Medicare/Medicaid Services datasets.

  * **team-rocket-cms-producer.ipynb** - notebook with Kafka producer, code meant for Centers for Medicare/Medicaid Services datasets.

  * **team-rocket-ml.ipynb** - notebook containing machine learning datapreprocessing and model training for payment estimates.

  * **requirments.txt** - list of necessary python packages and versions.

  * **xgboost_model.model** - file containing the model used to estimate payments.

## [dashboard](https://github.com/charlierehder/m11-capstone/tree/master/dashboard)

Folder containing dashboard files.

## [project-specifications](https://github.com/charlierehder/m11-capstone/tree/master/project-specifications)

Folder containing the documentation and planning steps taken during the project.

  * **ExploratoryQuestions.pdf** - list of questions this project aims to answer.

  * **ProjectManagementPlan.pdf** - rough schedule of when particular aspects of the project were completed, by whom and the urgency of each task.

  * **VisualizationsNapkinsAndFeedback.pdf** - rough outlines and feedback of initial visualization outlines.

  * **DashboardNapkinsAndFeedback.pdf** - feedback and finished dashboard screenshots, end result of initial visualization sketches.

  * **RepeatableETLReport.pdf** - all cleaning and ETL done to the data gathered condensed into a list of steps, as well as further details about tools used.

  * **CapstonePresentationSlides.pdf** - slides used in final presentation of this project.

## Data Sources

 * [Hospital Value-Based Purchasing (HVBP) - Efficiency Scores](https://data.cms.gov/provider-data/dataset/su9h-3pvj)

 * [Hospital Value-Based Purchasing (HVBP) - Person and Community Engagement Domain Scores](https://data.cms.gov/provider-data/dataset/avtz-f2ge)

 * [Hospital Value-Based Purchasing (HVBP) - Safety](https://data.cms.gov/provider-data/dataset/dgmq-aat3)

 * [Hospital Value-Based Purchasing (HVBP) - Clinical Outcomes Domain Scores](https://data.cms.gov/provider-data/dataset/pudb-wetr)

 * [Payment and value of care - Hospital](https://data.cms.gov/provider-data/dataset/c7us-v4mf)

 * [2015-2019 5-Year American Community Survey, Table S2704: Public Health Insurance Coverage by Type and Selected Characteristics](https://data.census.gov/cedsci/table?t=Health%20Insurance&g=0100000US%240400000&tid=ACSST5Y2020.S2704&tp=true)
