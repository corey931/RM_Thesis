import os
import pandas as pd

os.getcwd()
os.chdir('/Users/sese/Desktop/RM_Thesis/Data/merged/joerg')
print(os.path)

data = pd.read_csv('data_merged.csv', ';')
data.head()

