 
#1. Basic salary of a person is input through the keyboard. His dearness allowance is 40% of basic
#salary and house rent is 20% of basic salary. Write a program to calculate the gross pay.

read -p "Enter Your Salary : " sal 
dearness=$(echo $sal*40/100 | bc)
houserent=$(echo $sal*20/100 | bc)
gross=$((sal-houserent+dearness))
echo "Dearness Allowance : "$dearness
echo "House Rent : "$houserent
echo "Gross Salaray : "$gross

#Output : 
#Enter Your Salary : 20000
#Dearness Allowance : 8000
#House Rent : 4000
#Gross Salaray :  8000

