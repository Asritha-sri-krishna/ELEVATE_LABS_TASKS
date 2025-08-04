# Task 1 – Customer Personality Analysis 🧠

This task is part of the Elevate Labs internship program. The goal is to clean and preprocess the **Customer Personality dataset** to make it analysis-ready.

---

## 📂 Dataset Used
**Source:** [Kaggle - Customer Personality Analysis](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)

---

## ✅ Objectives

- Identify and clean missing values
- Remove duplicates
- Standardize categorical values
- Format dates and fix data types
- Rename columns for better readability
- Prepare a clean CSV file for analysis

---

## 🔧 Cleaning Steps Performed

### 1. Missing Value Handling
- Found 24 missing values in the `Income` column
- Dropped those 24 rows to retain clean records

### 2. Duplicate Removal
- Checked for duplicates using `.duplicated()`
- Found **0 duplicate rows** ✅

### 3. Standardization of Text Columns
- Cleaned odd entries in `Marital_Status` (e.g. 'YOLO', 'Absurd', 'Alone' ➝ 'Single')
- Kept `Education` categories as-is since they're meaningful

### 4. Date Formatting
- Converted `Dt_Customer` to datetime format (`dd-mm-yyyy`)

### 5. Column Renaming
Renamed columns to be:
- Lowercase
- Underscore-separated
- Descriptive

Examples:
- `MntWines` → `spent_on_wine`
- `NumCatalogPurchases` → `catalog_purchases`

### 6. Data Type Correction
- Verified `year_birth` as integer
- Ensured `Dt_Customer` is `datetime`
- All spending and count columns are `int64`

---



## 💡 Tools Used

- Google Colab
- Python (Pandas, NumPy)
- GitHub

---

## 🔚 Final Output
A cleaned dataset ready for:
- Customer segmentation
- Clustering
- Marketing strategy analysis

---

## 🙋‍♀️ Author
** YAKKALA VENKATA ASRITHA SRI KRISHNA **  
Elevate Labs Intern  

