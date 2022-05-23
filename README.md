# Team Rocket Capstone Project - Health

![Team PFP](https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/pokemon-team-rocket-1274884-2.jpg)

This repository contains all of the documentation and code behind the concepts learned as a part of the February 2022 Data cohort in Genesis10's Dev10 program. In it we demonstrate a strong understanding of data literacy, data analysis and data engineering. The content in this repository was created by Charlie Rehder, Alysia Halverson and Jakob Thunen. Flies in the repository include:

## project-specifications

Folder containing the documentation and planning steps taken during the project.

  * **ExploratoryQuestions.pdf** - list of questions this project aims to answer.

  * **ProjectManagementPlan.pdf** - rough schedule of when particular aspects of the project were completed, by who and the urgency of each task.

  * **VisualizationsNapkinsAndFeedback.pdf** - rough outlines and feedback of initial visualization outlines.

  * **DashboardNapkinsAndFeedback.pdf** - feedback and finished dashboard screenshots, end result of initial visualization sketches.

  * **RepeatableETLReport.pdf** - all cleaning and ETL done to the data gathered condensed into a list of steps, as well as further details about tools used.

  * **CapstonePresentationSlides.pdf** - slides used in final presentation of this project.

## dashboard

Folder containing dashboard files.

## code

Folder containing all code used in the process of making this project. Further details about tools/libraries used required.

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

  * **requirments.txt** - list of necessary python packages and versions

  * **xgboost_model.model** - file containing the model used to estimate payments
