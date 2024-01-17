import csv

import pandas as pd

#Pybank assignment

#Reading in the CSV file
budget_data = pd.read_csv("C:/Users/jaypa/OneDrive/Documents/GitHub/UofT Bootcamp/python_challenge/PyBank/Resources/budget_data.csv")

#Total number of months in the dataset
month_amount = budget_data["Date"].nunique()

#Net total amount of profit/losses over the entire period 
net_total_amount = sum(budget_data["Profit/Losses"])

#The changes in "Profit/Losses" over the entire period, and then the average of those changes
budget_data["Change"] = budget_data['Profit/Losses'].diff()
average_change = budget_data["Change"].mean()

#Greatest increase in profits over the entire period
max_change = budget_data["Change"].max()
date_max = budget_data.loc[budget_data['Change'] == max_change, 'Date'].iloc[0]

#Greatest decrease in profits over the entire period
min_change = budget_data["Change"].min()
date_min = budget_data.loc[budget_data['Change'] == min_change, 'Date'].iloc[0]

print(f"The total number of months in the dataset is {month_amount}" )
print(f"The net total amount of Profit/Losses over the entire period is ${net_total_amount}")
print(f"Average changes in Profit/Losses over the entire period ${average_change:.2f}")
print(f"Greatest increase in Profit/Losses over the entire period ${max_change} - at date {date_max}")
print(f"Greatest decrease in Profit/Losses over the entire period ${min_change} - at date {date_min}")

# Prepare the string to write to the file
month = f"The total number of months in the dataset is {month_amount}\n"
net = f"The net total amount of Profit/Losses over the entire period is ${net_total_amount}\n"
avrg = f"Average changes in Profit/Losses over the entire period ${average_change:.2f}\n"
max = f"Greatest increase in Profit/Losses over the entire period ${max_change} - at date {date_max}\n"
min = f"Greatest decrease in Profit/Losses over the entire period ${min_change} - at date {date_min}\n"

# Write to a text file
with open('C:/Users/jaypa/OneDrive/Documents/GitHub/UofT Bootcamp/python_challenge/PyBank/Analysis/PyBank.txt', 'w') as file:
    file.write(month)
    file.write(net)
    file.write(avrg)
    file.write(max)
    file.write(min)