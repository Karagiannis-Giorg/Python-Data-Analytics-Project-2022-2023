
import pandas as pd
import matplotlib.pyplot as plt
import mysql.connector
import csv
import tkinter as tk
from tkinter import messagebox
from tkinter import *

# ΔΙΑΒΑΣΤΕ ΤΟ CSV
# καθορίστε τη διεύθυνση URL του αρχείου CSV προς ανάγνωση
url = 'https://www.stats.govt.nz/assets/Uploads/Effects-of-COVID-19-on-trade/Effects-of-COVID-19-on-trade-At-15-December-2021-provisional/Download-data/effects-of-covid-19-on-trade-at-15-december-2021-provisional.csv'

# αποθήκευσε το csv σε ένα DataFrame
df = pd.read_csv(url)

# =================== question 1ο ===========================
months_order = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

# Δημιουργήστε μια νέα στήλη που περιέχει μόνο τις πληροφορίες του month από τη στήλη Date
df['Month'] = pd.to_datetime(df['Date'], format='%d/%m/%Y').dt.strftime('%B')

# Μετατρέψτε τη στήλη Month σε κατηγορηματική στήλη με την καθορισμένη σειρά
df['Month'] = pd.Categorical(df['Month'], categories=months_order, ordered=True)

# Ομαδοποιήστε ανά  month και αθροίστε τις τιμές
totals = df.groupby(['Month', 'Measure'])['Value'].sum().reset_index()

# Φιλτράρετε τα σύνολα USD και δημιουργήστε ένα DataFrame με στήλες Month και Value columns
totals_usd1 = totals[totals['Measure'] == '$'][['Month', 'Value']]

# Φιλτράρετε τα σύνολα Tonnes και δημιουργήστε ένα DataFrame με στήλες Month and Value columns
totals_ton1 = totals[totals['Measure'] == 'Tonnes'][['Month', 'Value']]


# =================== question 2ο ===========================#
# ομαδοποιηση των στοιχείων που θελουμε
grouped = df.groupby(['Country', 'Measure'])
totals = grouped['Value'].sum()

# Φιλτράρετε τα σύνολα USD και δημιουργήστε ένα DataFrame με στήλες Country και Value columns
totals_usd2 = totals.reset_index()
totals_usd2 = totals_usd2[totals_usd2['Measure'] == '$']
totals_usd2 = totals_usd2[['Country', 'Value']]

# Φιλτράρετε τα σύνολα Tonnes και δημιουργήστε ένα DataFrame με στήλες Country και Value columns
totals_ton2 = totals.reset_index()
totals_ton2 = totals_ton2[totals_ton2['Measure'] == 'Tonnes']
totals_ton2 = totals_ton2[['Country', 'Value']]


# =================== question 3ο ===========================#
# ομαδοποιηση των στοιχείων που θελουμε
grouped = df.groupby(['Transport_Mode', 'Measure'])
totals = grouped['Value'].sum()

# Φιλτράρετε τα σύνολα USD και δημιουργήστε ένα DataFrame με στήλες Transport_Mode και Value columns
totals_usd3 = totals.reset_index()
totals_usd3 = totals_usd3[totals_usd3['Measure'] == '$']
totals_usd3 = totals_usd3[['Transport_Mode', 'Value']]

# Φιλτράρετε τα σύνολα Tonnes και δημιουργήστε ένα DataFrame με στήλες Transport_Mode και Value columns
totals_ton3 = totals.reset_index()
totals_ton3 = totals_ton3[totals_ton3['Measure'] == 'Tonnes']
totals_ton3 = totals_ton3[['Transport_Mode', 'Value']]


# =================== question 4ο ===========================#
# Καθορίστε τη σειρά των καθημερινών
weekday_order = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

# Μετατρέψτε τη στήλη Weekday σε κατηγορηματικό τύπο δεδομένων με την καθορισμένη σειρά
df['Weekday'] = pd.Categorical(df['Weekday'], categories=weekday_order, ordered=True)

# ομαδοποιηση των στοιχείων που θελουμε
grouped = df.groupby(['Weekday', 'Measure'])
totals = grouped['Value'].sum()
# Φιλτράρετε τα σύνολα USD και δημιουργήστε ένα DataFrame με στήλες Weekday και Value columns
totals_usd4 = totals.reset_index()
totals_usd4 = totals_usd4[totals_usd4['Measure'] == '$']
totals_usd4 = totals_usd4[['Weekday', 'Value']]
# Φιλτράρετε τα σύνολα Tonnes και δημιουργήστε ένα DataFrame με στήλες Weekday και Value columns
totals_ton4 = totals.reset_index()
totals_ton4 = totals_ton4[totals_ton4['Measure'] == 'Tonnes']
totals_ton4 = totals_ton4[['Weekday', 'Value']]

# =================== question 5ο ===========================#
# ομαδοποιηση των στοιχείων που θελουμε
grouped = df.groupby(['Commodity', 'Measure'])
totals = grouped['Value'].sum()

# Φιλτράρετε τα σύνολα USD και δημιουργήστε ένα DataFrame με στήλες Commodity και Value columns
totals_usd5 = totals.reset_index()
totals_usd5 = totals_usd5[totals_usd5['Measure'] == '$']
totals_usd5 = totals_usd5[['Commodity', 'Value']]
# Φιλτράρετε τα σύνολα Tonnes και δημιουργήστε ένα DataFrame με στήλες Commodity και Value columns
totals_ton5 = totals.reset_index()
totals_ton5 = totals_ton5[totals_ton5['Measure'] == 'Tonnes']
totals_ton5 = totals_ton5[['Commodity', 'Value']]

# =================== question 6ο ===========================#

# Ομαδοποιήστε τα δεδομένα ανά month και υπολογίστε τον συνολικό τζιρο σε όλα τα μέσα και τους τύπους ανακυκλώσιμων
totals_all = df.groupby('Month')['Value'].sum().reset_index()

# Ταξινομήστε τα δεδομένα κατά τον συνολικό τζιρο με φθίνουσα σειρά
totals_all = totals_all.sort_values(by='Value', ascending=False)

# Επιλέξτε τους κορυφαίους 5 μήνες με τον υψηλότερο συνολικό τζιρο
top_5_months = totals_all.head(5)

# =================== question 7ο ===========================#

# Ομαδοποιήστε τα δεδομένα ανά Country και Commodity και υπολογίστε τον συνολικό τζιρο σε όλα τα μέσα και τους τύπους ανακυκλώσιμων
totals_country_commodity = df.groupby(['Country', 'Commodity'])['Value'].sum().reset_index()

# Ταξινομήστε τα δεδομένα κατά τον συνολικό τζιρο με φθίνουσα σειρά
totals_country_commodity = totals_country_commodity.sort_values(by=['Country', 'Value'], ascending=[True, False])

# Επιλέξτε τισ 5 κορυφαιεσ κατηγορίες με τον υψηλότερο συνολικό τζιρο
top_commodity_country = totals_country_commodity.groupby('Country').head(5)

# =================== question 8ο =========================== #

# Ομαδοποίηση δεδομένων βάσει Commodity και Date and και υπολογισμος του συνολικου τζιρου για καθε ομαδα
totals_commodity_date = df.groupby(['Commodity', 'Date'])['Value'].sum().reset_index()

# Ταξινομήστε τα δεδομένα κατά Commodity και Value σε φθίνουσα σειρά
totals_commodity_date = totals_commodity_date.sort_values(by=['Commodity', 'Value'], ascending=[True, False])

# Επιλέξτε το κορυφαίο commodity για κάθε κατηγορία
top_commodity_category = totals_commodity_date.groupby('Commodity').head(1)

# ======================= SQL Data ===================================== #
#δημιουργια σύνδεσης με την SQL
db = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="karagiannis",
    database="Covid_19_Data"
)

mycursor = db.cursor()
# ======================= tables for question 1 ===================================== #
# δημιουργια πινάκων ερωτήματος 1 
create_table_query1 = "CREATE TABLE Total_usd_per_month (Month VARCHAR(255), DOLLARS FLOAT)"
mycursor.execute(create_table_query1)

create_table_query2 = "CREATE TABLE Total_ton_per_month (Month VARCHAR(255), TONNES FLOAT)"
mycursor.execute(create_table_query2)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 1
for _, row in totals_usd1.iterrows():
    insert_query1 = "INSERT INTO Total_usd_per_month (Month, DOLLARS) VALUES (%s, %s)"
    mycursor.execute(insert_query1, (row['Month'], float(row['Value'])))

for _, row in totals_ton1.iterrows():
    insert_query2 = "INSERT INTO Total_ton_per_month (Month, TONNES) VALUES (%s, %s)"
    mycursor.execute(insert_query2, (row['Month'], float(row['Value'])))

# ======================= tables for question 2 ===================================== #
# δημιουργια πινάκων ερωτήματος 2
create_table_query3 = "CREATE TABLE Total_usd_per_Country (Country VARCHAR(255), DOLLARS FLOAT)"
mycursor.execute(create_table_query3)

create_table_query4 = "CREATE TABLE Total_ton_per_Country (Country VARCHAR(255), TONNES FLOAT)"
mycursor.execute(create_table_query4)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 2

for _, row in totals_usd2.iterrows():
    insert_query3 = "INSERT INTO Total_usd_per_Country (Country, DOLLARS) VALUES (%s, %s)"
    mycursor.execute(insert_query3, (row['Country'], float(row['Value'])))

for _, row in totals_ton2.iterrows():
    insert_query4 = "INSERT INTO Total_ton_per_Country (Country, TONNES) VALUES (%s, %s)"
    mycursor.execute(insert_query4, (row['Country'], float(row['Value'])))

# ======================= tables for question 3 ===================================== #
# δημιουργια πινάκων ερωτήματος 3
create_table_query5 = "CREATE TABLE Total_usd_per_Transport (Transport VARCHAR(255), DOLLARS FLOAT)"
mycursor.execute(create_table_query5)

create_table_query6 = "CREATE TABLE Total_ton_per_Transport (Transport VARCHAR(255), TONNES FLOAT)"
mycursor.execute(create_table_query6)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 3

for _, row in totals_usd3.iterrows():
    insert_query5 = "INSERT INTO Total_usd_per_Transport (Transport, DOLLARS) VALUES (%s, %s)"
    mycursor.execute(insert_query5, (row['Transport_Mode'], float(row['Value'])))

for _, row in totals_ton3.iterrows():
    insert_query6 = "INSERT INTO Total_ton_per_Transport (Transport, TONNES) VALUES (%s, %s)"
    mycursor.execute(insert_query6, (row['Transport_Mode'], float(row['Value'])))

# ======================= tables for question 4 ===================================== #
# δημιουργια πινάκων ερωτήματος 4
create_table_query7 = "CREATE TABLE Total_usd_per_Weekday (Weekday VARCHAR(255), DOLLARS FLOAT)"
mycursor.execute(create_table_query7)

create_table_query8 = "CREATE TABLE Total_ton_per_Weekday (Weekday VARCHAR(255), TONNES FLOAT)"
mycursor.execute(create_table_query8)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 4
for _, row in totals_usd4.iterrows():
    insert_query7 = "INSERT INTO Total_usd_per_Weekday (Weekday, DOLLARS) VALUES (%s, %s)"
    mycursor.execute(insert_query7, (row['Weekday'], float(row['Value'])))

for _, row in totals_ton4.iterrows():
    insert_query8 = "INSERT INTO Total_ton_per_Weekday (Weekday, TONNES) VALUES (%s, %s)"
    mycursor.execute(insert_query8, (row['Weekday'], float(row['Value'])))

# ======================= tables for question 5 ===================================== #
# δημιουργια πινάκων ερωτήματος 5
create_table_query9 = "CREATE TABLE Total_usd_per_Commodity (Commodity VARCHAR(255), DOLLARS FLOAT)"
mycursor.execute(create_table_query9)

create_table_query10 = "CREATE TABLE Total_ton_per_Commodity (Commodity VARCHAR(255), TONNES FLOAT)"
mycursor.execute(create_table_query10)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 5

for _, row in totals_usd5.iterrows():
    insert_query9 = "INSERT INTO Total_usd_per_Commodity (Commodity, DOLLARS) VALUES (%s, %s)"
    mycursor.execute(insert_query9, (row['Commodity'], float(row['Value'])))

for _, row in totals_ton5.iterrows():
    insert_query10 = "INSERT INTO Total_ton_per_Commodity (Commodity, TONNES) VALUES (%s, %s)"
    mycursor.execute(insert_query10, (row['Commodity'], float(row['Value'])))

# ======================= tables for question 6 ===================================== #
# δημιουργια πινάκων ερωτήματος 6
create_table_query11 = "CREATE TABLE Top5_months (Month VARCHAR(255), Value FLOAT)"
mycursor.execute(create_table_query11)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 6

for _, row in top_5_months.iterrows():
    insert_query11 = "INSERT INTO Top5_months (Month, Value) VALUES (%s, %s)"
    mycursor.execute(insert_query11, (row['Month'], float(row['Value'])))

# ======================= tables for question 7 ===================================== #
# δημιουργια πινάκων ερωτήματος 7
create_table_query12 = "CREATE TABLE Top5_Commodities (Country VARCHAR(255), Commodity VARCHAR(255), Value FLOAT)"
mycursor.execute(create_table_query12)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 7

for country in top_commodity_country['Country'].unique():
    data = top_commodity_country[top_commodity_country['Country'] == country]
    for _, row in data.iterrows():
        insert_query12 = "INSERT INTO Top5_Commodities (Country, Commodity, Value) VALUES (%s, %s, %s)"
        mycursor.execute(insert_query12, (country, row['Commodity'], float(row['Value'])))


# ======================= tables for question 8 ===================================== #
# δημιουργια πινάκων ερωτήματος 8
create_table_query13 = "CREATE TABLE Top1_DATE (Commodity VARCHAR(255), Date VARCHAR(255), Value FLOAT)"
mycursor.execute(create_table_query13)

# εισαγωγή δεδομένων στους πίνακεσ του ερωτήματος 8
for commodity in top_commodity_category['Commodity'].unique():
    data = top_commodity_category[top_commodity_category['Commodity'] == commodity]
    for _, row in data.iterrows():
        insert_query13 = "INSERT INTO Top1_DATE (Commodity, Date, Value) VALUES (%s, %s, %s)"
        mycursor.execute(insert_query13, (commodity, row['Date'], float(row['Value'])))

# ============================= select for question 1 ===============================
# Εξαγωγή δεδομένων ερωτήματος 1
select_query1 = "SELECT * FROM Total_usd_per_month"
mycursor.execute(select_query1)
data1 = mycursor.fetchall()

select_query2 = "SELECT * FROM Total_ton_per_month"
mycursor.execute(select_query2)
data2 = mycursor.fetchall()

# ============================= select for question 2 ===============================
# Εξαγωγή δεδομένων ερωτήματος 2
select_query3 = "SELECT * FROM Total_usd_per_Country"
mycursor.execute(select_query3)
data3 = mycursor.fetchall()

select_query4 = "SELECT * FROM Total_ton_per_Country"
mycursor.execute(select_query4)
data4 = mycursor.fetchall()
# ============================= select for question 3 ===============================
# Εξαγωγή δεδομένων ερωτήματος 3
select_query5 = "SELECT * FROM Total_usd_per_Transport"
mycursor.execute(select_query5)
data5 = mycursor.fetchall()

select_query6 = "SELECT * FROM Total_ton_per_Transport"
mycursor.execute(select_query6)
data6 = mycursor.fetchall()
# ============================= select for question 4 ===============================
# Εξαγωγή δεδομένων ερωτήματος 4
select_query7 = "SELECT * FROM Total_usd_per_Weekday"
mycursor.execute(select_query7)
data7 = mycursor.fetchall()

select_query8 = "SELECT * FROM Total_ton_per_Weekday"
mycursor.execute(select_query8)
data8 = mycursor.fetchall()
# ============================= select for question 5 ===============================
# Εξαγωγή δεδομένων ερωτήματος 5
select_query9 = "SELECT * FROM Total_usd_per_Commodity"
mycursor.execute(select_query9)
data9 = mycursor.fetchall()

select_query10 = "SELECT * FROM Total_ton_per_Commodity"
mycursor.execute(select_query10)
data10 = mycursor.fetchall()
# ============================= select for question 6 ===============================
# Εξαγωγή δεδομένων ερωτήματος 6
select_query11 = "SELECT * FROM Top5_months"
mycursor.execute(select_query11)
data11 = mycursor.fetchall()
# ============================= select for question 7 ===============================
# Εξαγωγή δεδομένων ερωτήματος 7
select_query12 = "SELECT * FROM Top5_Commodities"
mycursor.execute(select_query12)
data12 = mycursor.fetchall()
# ============================= select for question 8 ===============================
# Εξαγωγή δεδομένων ερωτήματος 8
select_query13 = "SELECT * FROM Top1_DATE"
mycursor.execute(select_query13)
data13 = mycursor.fetchall()

# Τερματισμός ένωσης με την Βάση
db.commit()
db.close()
# ============================= CSV ===============================
# Δημιοργεία αρχείου CSV
csv_file = 'Covid_19_Data.csv'

# ============================= write the datas to csv ===============================
# Εγγραφή δεδομένων στο CSV
with open(csv_file, 'w', newline='') as file:
    writer = csv.writer(file)

    # ============================= array 1 ===============================   

    # Δημιουργία κεφαλής για τον πίνακα 1
    writer.writerow(['Month', 'Dollars'])

    # Εισαγωγή δεδομένων πίνακα 1
    for row1 in data1:
        writer.writerow(row1)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # Δημιουργία κεφαλής για τον πίνακα 2
    writer.writerow(['Month', 'Tonnes'])

    # Εισαγωγή δεδομένων πίνακα 2
    for row2 in data2:
        writer.writerow(row2)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 2 ===============================

    # Δημιουργία κεφαλής για τον πίνακα 3
    writer.writerow(['Country', 'Dollars'])

    # Εισαγωγή δεδομένων πίνακα 3
    for row3 in data3:
        writer.writerow(row3)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # Δημιουργία κεφαλής για τον πίνακα 4
    writer.writerow(['Country', 'Tonnes'])

    # Εισαγωγή δεδομένων πίνακα 4'
    for row4 in data4:
        writer.writerow(row4)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 3 ===============================

    # Δημιουργία κεφαλής για τον πίνακα 5
    writer.writerow(['Transport', 'Dollars'])

    # Εισαγωγή δεδομένων πίνακα 5
    for row5 in data5:
        writer.writerow(row5)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # Δημιουργία κεφαλής για τον πίνακα 6
    writer.writerow(['Transport', 'Tonnes'])

    # Εισαγωγή δεδομένων πίνακα 5
    for row6 in data6:
        writer.writerow(row6)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 4 ===============================

    # Δημιουργία κεφαλής για τον πίνακα 7
    writer.writerow(['Weekday', 'Dollars'])

    # Εισαγωγή δεδομένων πίνακα 7
    for row7 in data7:
        writer.writerow(row7)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # Δημιουργία κεφαλής για τον πίνακα 8
    writer.writerow(['Weekday', 'Tonnes'])

    # Εισαγωγή δεδομένων πίνακα 8
    for row8 in data8:
        writer.writerow(row8)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 5 ===============================
    
    # Δημιουργία κεφαλής για τον πίνακα 9
    writer.writerow(['Commodity', 'Dollars'])

    # Εισαγωγή δεδομένων πίνακα 9
    for row9 in data9:
        writer.writerow(row9)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # Δημιουργία κεφαλής για τον πίνακα 10
    writer.writerow(['Commodity', 'Tonnes'])

    # Εισαγωγή δεδομένων πίνακα 10
    for row10 in data10:
        writer.writerow(row10)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 6 ===============================

    # Δημιουργία κεφαλής για τον πίνακα 11
    writer.writerow(['Month', 'Dollars'])

    # Εισαγωγή δεδομένων πίνακα 11
    for row11 in data11:
        writer.writerow(row11)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 7 ===============================

    # Δημιουργία κεφαλής για τον πίνακα 12
    writer.writerow(['Country', 'Commodity', 'Value'])

    # Εισαγωγή δεδομένων πίνακα 12
    for row12 in data12:
        writer.writerow(row12)

    # Δημιουργία κενής κεφαλής
    writer.writerow([])

    # ============================= array 8 ===============================

    # Δημιουργία κεφαλής για τον πίνακα 13
    writer.writerow(['Commodity', 'Date', 'Value'])

    # Εισαγωγή δεδομένων πίνακα 13
    for row13 in data13:
        writer.writerow(row13)

# δημιουργία συνάρτησης για το ερώτημα 1


def show_chart1():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))

    totals_usd1.plot(kind='bar', x='Month', y='Value', ax=ax1, color='grey')
    ax1.set_title('Total Turnover in USD by Month')
    ax1.set_xlabel('Month')
    ax1.set_ylabel('Total Turnover (USD)')

    totals_ton1.plot(kind='bar', x='Month', y='Value', ax=ax2, color='maroon')
    ax2.set_title('Total Turnover in Tonnes by Month')
    ax2.set_xlabel('Month')
    ax2.set_ylabel('Total Turnover (Tonnes)')

    plt.show()

# δημιουργία συνάρτησης για το ερώτημα 2


def show_chart2():
    fig, (ax3, ax4) = plt.subplots(1, 2, figsize=(12, 6))

    totals_usd2.plot(kind='bar', x='Country', y='Value', ax=ax3, color='grey')
    ax3.set_title('Total Turnover in USD by Country')
    ax3.set_xlabel('Country')
    ax3.set_ylabel('Total Turnover (USD)')

    totals_ton2.plot(kind='bar', x='Country', y='Value', ax=ax4, color='maroon')
    ax4.set_title('Total Turnover in Tonnes by Country')
    ax4.set_xlabel('Country')
    ax4.set_ylabel('Total Turnover (Tonnes)')

    plt.show()

# δημιουργία συνάρτησης για το ερώτημα 3


def show_chart3():
    fig, (ax5, ax6) = plt.subplots(1, 2, figsize=(12, 6))

    totals_usd3.plot(kind='bar', x='Transport_Mode', y='Value', ax=ax5, color='grey')
    ax5.set_title('Total Turnover in USD by Transport_Mode')
    ax5.set_xlabel('Transport_Mode')
    ax5.set_ylabel('Total Turnover (USD)')

    totals_ton3.plot(kind='bar', x='Transport_Mode', y='Value', ax=ax6, color='maroon')
    ax6.set_title('Total Turnover in Tonnes by Transport_Mode')
    ax6.set_xlabel('Transport_Mode')
    ax6.set_ylabel('Total Turnover (Tonnes)')

    plt.show()

# δημιουργία συνάρτησης για το ερώτημα 4


def show_chart4():
    fig, (ax7, ax8) = plt.subplots(1, 2, figsize=(12, 6))

    totals_usd4.plot(kind='bar', x='Weekday', y='Value', ax=ax7, color='grey')
    ax7.set_title('Total Turnover in USD by Weekday')
    ax7.set_xlabel('Weekday')
    ax7.set_ylabel('Total Turnover (USD)')

    totals_ton4.plot(kind='bar', x='Weekday', y='Value', ax=ax8, color='maroon')
    ax8.set_title('Total Turnover in Tonnes by Weekday')
    ax8.set_xlabel('Weekday')
    ax8.set_ylabel('Total Turnover (Tonnes)')

    plt.show()

# δημιουργία συνάρτησης για το ερώτημα 5


def show_chart5():
    fig, (ax9, ax10) = plt.subplots(1, 2, figsize=(12, 6))

    totals_usd5.plot(kind='bar', x='Commodity', y='Value', ax=ax9, color='grey')
    ax9.set_title('Total Turnover in USD by Commodity')
    ax9.set_xlabel('Commodity')
    ax9.set_ylabel('Total Turnover (USD)')

    totals_ton5.plot(kind='bar', x='Commodity', y='Value', ax=ax10, color='maroon')
    ax10.set_title('Total Turnover in Tonnes by Commodity')
    ax10.set_xlabel('Commodity')
    ax10.set_ylabel('Total Turnover (Tonnes)')

    plt.show()

# δημιουργία συνάρτησης για το ερώτημα 6


def show_chart6():
    explode = (0.1, 0.0, 0.0, 0.0, 0.0)
    # Create a pie chart to visualize the data
    fig, ax11 = plt.subplots(figsize=(8, 6))

    top_5_months.plot(kind='pie', y='Value', labels=top_5_months['Month'], ax=ax11,
                      colors=['blue', 'green', 'yellow', 'silver', 'red'], shadow=True, startangle=90, explode=explode,
                      autopct='%1.1f%%')
    ax11.set_title('Top 5 Months with the Highest Turnover')
    ax11.set_ylabel('')

    plt.show()

# δημιουργία συνάρτησης για το ερώτημα 7


def show_chart7():
    for country in top_commodity_country['Country'].unique():
        data = top_commodity_country[top_commodity_country['Country'] == country]

        # Create the bar chart
        fig, ax12 = plt.subplots(figsize=(8, 6))
        ax12.bar(data['Commodity'], data['Value'], width=0.2)
        ax12.set_title('Top 5 Commodities for {}'.format(country))
        ax12.set_xlabel('Commodity')
        ax12.set_ylabel('Total Turnover')

        # Rotate the x-axis labels for better readability
        plt.xticks(rotation=45)

        plt.show()

# δημιουργία συνάρτησης για το ερώτημα 8


def show_chart8():
    for commodity in top_commodity_category['Commodity']:
        data = top_commodity_category[top_commodity_category['Commodity'] == commodity]

        # Create the bar chart
        fig, ax13 = plt.subplots(figsize=(8, 6))
        ax13.bar(data['Date'], data['Value'], width=0.2)
        ax13.set_title('Top Date for {}'.format(commodity))
        ax13.set_xlabel('Date')
        ax13.set_ylabel('Total Turnover')

        # Rotate the x-axis labels for better readability
        plt.xticks(rotation=0)

        # Show the plot
        plt.show()

# δημιουργία δεύτερου παραθύρου για το Gui


def open_new_window():
    def go_back():
        new_window.destroy()
        root.deiconify()
    new_window = Toplevel(root)
    new_window.geometry("800x600")
    new_window.title("Charts")
    new_window.configure(background='#E0E0EE')
    # δημιοργία label παραθύρου
    Label(new_window, text="Kαλώς ήρθατε στην ενότητα των γραφημάτων!", font="Times 22", padx=20, pady=10, background='#E0E0EE').pack()
    Label(new_window, text="Σε αυτήν την ενότητα μπορείτε να δείτε και να επεξεργαστείτε τα "
                                   "γραφήματα που προέκυψαν έπειτα\n από σχολαστική μελέτη του αρχείου που μας ζητήθηκε."
                                   "Παρακάτω σας παραθέτω τους τίτλους\n του κάθε γραφήματος για την περεταίρω διευκόλυνση σας."
          , font="Times 14", padx=30, pady=10, background='#E0E0EE').pack()
    Label(new_window, text="Chart1:Συνολική παρουσίαση του τζίρου ανά μήνα.\n"
                           "Chart2:Συνολική παρουσίαση του τζίρου για κάθε χώρα.\n"
                           "Chart3:Συνολική παρουσίαση του τζίρου για κάθε μέσο μεταφοράς.\n"
                           "Chart4:Συνολική παρουσίαση του τζίρου για κάθε μέρα της εβδομάδας.\n"
                           "Chart5:Συνολική παρουσίαση του τζίρου για κάθε κατηγορία εμπορεύματος.\n"
                           "Chart6:Παρουσίαση των 5 μηνών με το μεγαλύτερο τζίρο,ανεξαρτήτως\n μέσου μεταφοράς και είδους ανακυκλώσιμων ειδών.\n"
                           "Chart7:Παρουσίαση των 5 κατηγοριών εμπορευμάτων με το μεγαλύτερο τζίρο,για κάθε χώρα.\n"
                           "Chart8:Παρουσίαση της ημέρας με το μεγαλύτερο τζίρο, για κάθε κατηγορία εμπορεύματος.\n"
          , font="Times 14", padx=25, pady=10, background='#E0E0EE').pack()
    # δημιοργία drop down κουμπιου
    chart_options = ["Chart 1", "Chart 2", "Chart 3", "Chart 4", "Chart 5", "Chart 6", "Chart 7", "Chart 8"]
    selected_chart = tk.StringVar()
    selected_chart.set(chart_options[0])  # Set the default selected option

    chart_dropdown = OptionMenu(new_window, selected_chart, *chart_options)
    chart_dropdown.pack(padx=20, pady=20)

    def handle_selection():
        selected_option = selected_chart.get()
        if selected_option == "Chart 1":
            show_chart1()
        elif selected_option == "Chart 2":
            show_chart2()
        elif selected_option == "Chart 3":
            show_chart3()
        elif selected_option == "Chart 4":
            show_chart4()
        elif selected_option == "Chart 5":
            show_chart5()
        elif selected_option == "Chart 6":
            show_chart6()
        elif selected_option == "Chart 7":
            show_chart7()
        elif selected_option == "Chart 8":
            show_chart8()

        # δημιουργία κουμπιου για τηυν εμφάνιση των γραφικών

    chart_button = tk.Button(new_window, text="Show Chart", command=handle_selection, background='#EEEEE9')
    chart_button.pack(padx=20, pady=20)

    # δημιουργια κουμπιου που σε πάει πίσω
    back_button = tk.Button(new_window, text="Back", command=go_back, background='#EEEEE9')
    back_button.pack(padx=20, pady=20)


def close_window():
    if messagebox.askokcancel("Close", "Are you sure you want to close the window?"):
        root.destroy()  # Close the current window

# δημιουργία πρώτου παραθύρου για το Gui
root = tk.Tk()
root.geometry("1000x400")
root.title("Covid_19 Data")
root.configure(background='#E0E0EE')

# δημιοργία label παραθύρου
Label(root, text="Covid-19 X Python ?", font="Times 22", padx=20, pady=10, background='#E0E0EE').pack()
Label(root, text="Στο project αυτό, αναλύσαμε ένα αρχείο CSV για την επίδραση του COVID-19 στο εμπόριο.\n"
                 "Χρησιμοποιώντας κατάλληλα ορίσαματα της γλώσσας Python,καταφέραμε να διαβάσαμε τα δεδομένα\n"
                 " και δημιουργήσαμε τα απαραιτητα γραφήματα για την οπτική αναπαράσταση τους.\n"
                 "Επειτα χρησιμοποιώντασ το περιβάλλων τησ Mysql, καταφέραμε να αποθηκεύσουμε τα δεδομένα \n"
                 " σε πίνακες για την καλύτερη διαχείρηση τους για περεταίρω εργασίες στο αμμεσο μέλλον.\n"
                 "Τα γραφήματα οπωσ θα δείται και εσείς μας αποκάλυψαν μια εικόνα της επίδρασης του COVID-19 στο παγκόσμιο εμπόριο.\n"
                 "Εάν θέλετε να δείτε τα γραφήματα που πρόεκυψαν παρακαλώ πατείστε το κουμπι Continue, αλλιώς μπορείτε να βγείτε \n"
                 "από την εφαρμογή πατώντας Exit. Σας  ευχαριστώ πολύ!"
          , font="Times 14", padx=25, pady=10, background='#E0E0EE').pack()
# δημιοργία κουμπιού συνέχισης
open_button = tk.Button(root, text="Continue", command=open_new_window, background='#E0E0EE')
open_button.pack(padx=50, pady=20)

# δημιοργία κουμπιού τερματισμού
close_button = tk.Button(root, text="Exit", command=close_window, background='#E0E0EE')
close_button.pack(padx=0, pady=20)


root.mainloop()
