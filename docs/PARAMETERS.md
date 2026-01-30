# PARAMETERS REFERENCE GUIDE
## Macro Variables & Configuration

**Version**: 1.0 | **Status**: Production Ready | **Last Updated**: January 30, 2026

---

## Macro Variables Overview

The sashelp_dqchecks.sas program uses **3 core macro variables** for flexible configuration:

| Variable | Type | Default | Modifiable |
|----------|------|---------|--------|
| `dataset_name` | Character | sashelp.cars | ✅ Yes |
| `report_date` | Date | TODAY() | ✅ Yes |
| `output_dir` | Character | work | ✅ Yes |

---

## Macro Variables

### 1. DATASET_NAME

**Purpose**: Specifies the input dataset for quality assessment  
**Default Value**: `sashelp.cars`  
**Format**: `libname.tablename`

**Usage Examples**:
```sas
%LET dataset_name = sashelp.cars;        /* Default */
%LET dataset_name = mylib.mycars;        /* Custom library */
%LET dataset_name = work.temp_cars;      /* Temporary */
%INCLUDE "src/sashelp_dqchecks.sas";
```

### 2. REPORT_DATE

**Purpose**: Sets the date stamp for the quality report  
**Default Value**: `%SYSFUNC(TODAY(), DATE9.)`  
**Auto-Generated**: Current system date

**Usage Examples**:
```sas
%LET report_date = 30JAN2026;            /* Manual date */
%LET report_date = %SYSFUNC(TODAY());    /* Automatic */
%INCLUDE "src/sashelp_dqchecks.sas";
```

### 3. OUTPUT_DIR

**Purpose**: Specifies the SAS library where output tables are stored  
**Default Value**: `work` (temporary)  
**Valid Values**: Any accessible SAS library

**Usage Examples**:
```sas
LIBNAME mylib "C:\Reports";
%LET output_dir = mylib;                 /* Permanent */
%INCLUDE "src/sashelp_dqchecks.sas";
```

---

## Common Use Cases

### Example 1: Default (No Changes)
```sas
%INCLUDE "src/sashelp_dqchecks.sas";
/* Uses: sashelp.cars, work library, current date */
```

### Example 2: Custom Dataset + Permanent Output
```sas
LIBNAME reports "C:\Reports\Quality";

%LET dataset_name = mylib.my_dataset;
%LET output_dir = reports;
%INCLUDE "src/sashelp_dqchecks.sas";

/* Results saved to reports.quality_summary, etc. */
```

### Example 3: Batch Processing Multiple Datasets
```sas
%MACRO process_datasets;
  %DO i = 1 %TO 3;
    %LET dataset_name = mylib.cars_&i.;
    %INCLUDE "src/sashelp_dqchecks.sas";
  %END;
%MEND;

%process_datasets;
```

---

## Best Practices

✅ **DO's**
- Use meaningful dataset names
- Set output to permanent library for production
- Document custom settings in comments
- Verify library exists before running
- Use consistent naming for trending

❌ **DON'Ts**
- Use incorrect library syntax (missing dot)
- Change macro variable case
- Hardcode file paths
- Forget to create library first
- Overwrite results without backup

---

## Output Tables

All output tables created in the specified `output_dir`:

- `quality_summary` - Detailed scorecard (Step 7)
- `quality_assessment` - Final assessment with recommendations (Step 9)
- `dq_final_report` - Executive summary report (Step 9)

---

## Troubleshooting

**Q: Macro variable not recognized**  
A: Check spelling and ensure %LET statement before %INCLUDE

**Q: Library not found error**  
A: Create library with LIBNAME before referencing in macro

**Q: Wrong dataset analyzed**  
A: Verify dataset_name macro variable is set to correct value

---

For complete documentation, see [README.md](README.md)
