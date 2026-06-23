# DataCamp Statistics Fundamentals - Basic Descriptive Statistics
import pandas as pd
import numpy as np

# Create a sample dataset for analysis
data = {'student_scores': [85, 90, 78, 92, 88, 76, 95, 89]}
df = pd.DataFrame(data)

# Calculate fundamental statistical metrics
mean_score = np.mean(df['student_scores'])
median_score = np.median(df['student_scores'])
std_dev = np.std(df['student_scores'])

# Print the results
print(f"Mean: {mean_score}")
print(f"Median: {median_score}")
print(f"Standard Deviation: {std_dev:.2f}")
