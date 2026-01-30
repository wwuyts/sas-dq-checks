/*=============================================================================
  CONFIGURATION TEMPLATE FOR SAS DATA QUALITY CHECKS
  
  This template shows how to customize the quality assessment program
  for your specific datasets and requirements.
  
  Copy this file and modify the parameters as needed.
=============================================================================*/

/* Set these macro variables before running sashelp_dqchecks.sas */

/* ─── INPUT DATASET CONFIGURATION ─── */
%LET dataset_name = sashelp.cars;    /* Change to your dataset */


/* ─── OUTPUT LIBRARY CONFIGURATION ─── */
/* Create library if using permanent storage */
LIBNAME myreports "C:\Reports\QualityAssessment";
%LET output_dir = myreports;         /* or use 'work' for temporary */


/* ─── REPORT DATE ─── */
%LET report_date = %SYSFUNC(TODAY(), DATE9.);    /* Auto-generate or specify */


/* ─── EXAMPLE USES ─── */

/* USE CASE 1: Analyze default dataset (sashelp.cars) */
/*
%INCLUDE "src/sashelp_dqchecks.sas";
*/

/* USE CASE 2: Analyze custom dataset */
/*
%LET dataset_name = mylib.my_vehicles;
%INCLUDE "src/sashelp_dqchecks.sas";
*/

/* USE CASE 3: Analyze custom dataset with permanent output */
/*
LIBNAME myreports "C:\Reports\Quality";
%LET dataset_name = mylib.my_vehicles;
%LET output_dir = myreports;
%INCLUDE "src/sashelp_dqchecks.sas";
*/

/* USE CASE 4: Batch process multiple datasets */
/*
%MACRO process_all_datasets;
  %DO i = 1 %TO 5;
    %LET dataset_name = mylib.dataset_&i.;
    %INCLUDE "src/sashelp_dqchecks.sas";
  %END;
%MEND;

%process_all_datasets;
*/
