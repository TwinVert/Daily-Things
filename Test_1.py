
#Check Vitals and Update to Proper Folder
#Dictionary
#Modules Used:os, json, random, datetime

import urllib.request, os, pathlib, re, csv, codecs, json, random, datetime
from bs4 import BeautifulSoup
from pathlib import Path
from urllib.request import urlopen

cwd = os.getcwd()
f = open('words_dictionary.json')
data = json.load(f)
from datetime import date

today = date.today()


dailynumber = random.randint(0,370101)
count=0
for i in data:
    count += 1
    print(count)
    if count == dailynumber:
        dailyword=i
        break




Main = r'C:\Users\Twinv\Desktop\Bids'
pathlist = Path(Main).glob('**/*.html')
for path in pathlist:
    # because path is object not string
    path_in_str = str(path)
    print(path_in_str)
    page = open(path_in_str, errors='ignore')


    soup = BeautifulSoup(page)

    Check = str(soup.select(".row2"))
    Checkmod = Check[1:-1]
    soup = BeautifulSoup(Checkmod)
    pathlist = []
    datelist = []
    ownerlist = []
    htmllist = []
    owwlist = []
    llist = []
    slist = []

    for date in soup.find_all(attrs={"data-th": "Due Date: "}):
        datemod = str(date.contents)
        date2 = datemod[2:-2]
        datelist.append(date2)

    for owner in soup.find_all("a"):
        ownerlist.append(owner.contents)

    for html in soup.find_all("a"):
        htmllist.append(html.attrs['href'])

    for owner2 in soup.find_all(attrs={"data-th": "Owner: "}):
        owwlist.append(owner2.contents)

    for location in soup.find_all(attrs={"data-th": "Location: "}):
        llist.append(location.contents)

    for scope in soup.find_all(attrs={"data-th": "Scope: "}):
        fixs = str(scope.contents)
        fixs2 = fixs[83:-2]
        slist.append(fixs2)

    Final = zip(datelist, ownerlist, htmllist, owwlist, llist, slist)
    FinalL = list(Final)
    #print(llist)
    #print(FinalL)

    with open(r'Z:\Location\Primary.csv','a') as out:
        csv_out=csv.writer(out)
        for row in FinalL:
            csv_out.writerow(row)


raw_input()