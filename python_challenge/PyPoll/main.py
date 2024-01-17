import csv

import pandas as pd

#Pypoll assignment

#Reading in the CSV file
poll_data = pd.read_csv("C:/Users/jaypa/OneDrive/Documents/GitHub/UofT Bootcamp/python_challenge/PyPoll/Resources/election_data.csv")

#The total number of votes cast
total_votes = len(poll_data)

#All candidates, percentage and total number of votes each candidate won
# Group by 'Candidate' and count
candidate_count = poll_data.groupby('Candidate').size()
total_count = len(poll_data)
proportions = (candidate_count / total_count) * 100
result = pd.DataFrame({'Count': candidate_count, 'Proportion (%)': proportions})

#The winner of the election based on popular vote
popular_vote = result["Count"].max()
winner = result.index[result['Count'] == popular_vote].tolist()[0]

print(f"The total number of votes casted in the dataset is {total_votes}")
print(result)
print(f"The winner of the election based on popular vote is {winner}")

votes = f"The total number of votes casted in the dataset is {total_votes}\n"
win = f"The winner of the election based on popular vote is {winner}\n"

# Write to a text file
with open('C:/Users/jaypa/OneDrive/Documents/GitHub/UofT Bootcamp/python_challenge/PyPoll/Analysis/PyPoll.txt', 'w') as file:
    file.write(votes)
    file.write(result.to_string() + "\n")
    file.write(win)