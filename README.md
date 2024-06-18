# Image Analysis and Index Calculations

This repository contains scripts and visualizations for analyzing and comparing different indices derived from satellite images. The indices considered are NDVI, NDWI, and NDBI, alongside electricity usage data.

## Table of Contents

1. [Introduction](#introduction)
2. [Data Preprocessing](#data-preprocessing)
3. [Index Calculations](#index-calculations)
    - NDVI
    - NDWI
    - NDBI
4. [Visualizations](#visualizations)
    - Line Graphs
    - Bar Charts
    - Heatmaps
    - Pie Charts
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [License](#license)

## Introduction

This project focuses on analyzing satellite image data to compute and visualize various indices. The main objective is to compare cell-based and block-based methods for calculating these indices and visualize the results using different types of plots.

## Data Preprocessing

### Loading and Preparing Data

Satellite image data and electricity usage data are loaded from provided `.csv` and `.tif` files. The data is then preprocessed to calculate NDVI, NDWI, and NDBI indices.

```python
import rasterio
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
```
# Example of loading a .tif image
```
with rasterio.open('path_to_image.tif') as src:
    image = src.read()
```
# Dimensions of the image
```
rows, cols = image.shape[1], image.shape[2]
```
# Example of loading a CSV file
```
data = pd.read_csv('path_to_csv.csv')
```

## Index Calculations

### NDVI
Normalized Difference Vegetation Index (NDVI) is calculated as follows:
\[ NDVI = \frac{NIR - RED}{NIR + RED} \]

### NDWI
Normalized Difference Water Index (NDWI) is calculated as follows:
\[ NDWI = \frac{GREEN - NIR}{GREEN + NIR} \]

### NDBI
Normalized Difference Built-up Index (NDBI) is calculated as follows:
\[ NDBI = \frac{SWIR - NIR}{SWIR + NIR} \]

### Electricity Data
Electricity usage data is represented alongside the indices to analyze its correlation with vegetation, water, and built-up indices. The data is processed similarly to the indices for comparison purposes.


## Visualizations

### Line Graphs
Line graphs are used to compare cell-based and block-based methods for NDVI, NDWI, and NDBI indices along with electricity usage data.

python
```
plt.figure(figsize=(10, 6))
plt.plot(cell_based_ndvi, label='Cell-Based NDVI', color='green')
plt.plot(block_based_ndvi, label='Block-Based NDVI', color='red')
plt.xlabel('Index')
plt.ylabel('NDVI Value')
plt.legend()
plt.title('Cell-Based vs Block-Based NDVI')
plt.show()
```

### Bar Charts
Bar charts are used to show the distribution of index values in different datasets.
```
plt.figure(figsize=(10, 6))
plt.bar(x, cell_based_ndvi, width=0.4, label='Cell-Based NDVI', color='green')
plt.bar(x + 0.4, block_based_ndvi, width=0.4, label='Block-Based NDVI', color='red')
plt.xlabel('Index')
plt.ylabel('NDVI Value')
plt.legend()
plt.title('Distribution of NDVI Values')
plt.show()
```
### Heatmaps
Heatmaps visualize the difference between indices over the area.

```
import seaborn as sns

heatmap_data = np.array([block_based_ndvi, block_based_ndwi, block_based_ndbi, block_based_electricity])
plt.figure(figsize=(12, 8))
sns.heatmap(heatmap_data, annot=True, cmap='coolwarm')
plt.title('Block-Based Indices Heatmap')
plt.xlabel('Block Index')
plt.ylabel('Index Type')
plt.show()

```
### Pie Charts
Pie charts are used to visualize the proportion of each index's sum of absolute differences.


```
labels = ['NDVI', 'NDWI', 'NDBI', 'Electricity']
values = [np.sum(np.abs(ndvi_data)), np.sum(np.abs(ndwi_data)), np.sum(np.abs(ndbi_data)), np.sum(np.abs(electricity_data))]
colors = ['green', 'blue', 'red', 'orange']

plt.figure(figsize=(8, 8))
plt.pie(values, labels=labels, colors=colors, autopct='%1.1f%%', startangle=140)
plt.title('Proportion of Indices')
plt.show()

```
### Usage
Clone the repository.
Install the necessary dependencies.
Run the scripts to generate the visualizations.
```
git clone https://github.com/your_username/repository_name.git
cd repository_name
pip install -r requirements.txt
python script_name.py

```

### Learn More
If you want to delve deeper into the algorithms and methodologies used in this project, please read my detailed article on [Medium](https://medium.com/@royabhisek083/exploring-spatio-temporal-urbanization-patterns-using-satellite-data-278b8c8a46ff). This article explores the spatio-temporal urbanization patterns using satellite data and provides a comprehensive overview of the techniques implemented in this project. Reading the article will provide you with valuable insights and a thorough understanding of the project's background and significance.






