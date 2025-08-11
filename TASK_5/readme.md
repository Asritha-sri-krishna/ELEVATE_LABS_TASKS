# Task 5 – Exploratory Data Analysis (Titanic Dataset)  

## 📌 Objective  
Perform Exploratory Data Analysis (EDA) to extract insights, identify patterns, and visualize relationships in the Titanic dataset.  

## 🛠 Tools & Libraries  
- **Python** (Pandas, NumPy, Matplotlib, Seaborn)  
- **Google Colab / Jupyter Notebook**  

## 📂 Dataset  
Titanic dataset containing passenger information:  
- `train.csv` – Training data with survival labels  
- `test.csv` – Test data (no labels)  
- `gender_submission.csv` – Sample submission file  

## 📊 Steps Performed  
1. **Data Loading & Overview** – `.info()`, `.describe()`, `.value_counts()`  
2. **Missing Value Analysis** – Checked and planned handling strategy  
3. **Correlation Analysis** – `sns.heatmap()`  
4. **Relationship Visualization** – `pairplot`, histograms, boxplots, scatterplots  
5. **Trend Identification** – Using `groupby()` & crosstabs  
6. **Observations & Summary** – Written for each visual and final findings  

## 📈 Key Insights  
- Females had a survival rate ~74% vs ~19% for males  
- 1st class passengers had a much higher survival rate than 3rd class passengers  
- Higher fares correlated with higher survival probability  
- Children had better survival chances compared to adults  

## 📁 Deliverables  
- `task5_eda.ipynb` – Jupyter Notebook with code & visuals  
- `task5_report.pdf` – PDF summary of findings  
- Dataset files: `train.csv`, `test.csv`, `gender_submission.csv`  

---
