
#For Each Folder in Day1, Day2, and Day3 open every HTML file in each Area sub-folder and populate the Master CSV (if a matching entry already exist skip that entry)

import urllib.request, os, pathlib, re, csv, codecs, time
from bs4 import BeautifulSoup
from pathlib import Path
from urllib.request import urlopen
from datetime import datetime

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
    cdlist = []

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
        stringcdate = str(datetime.now())[:19]
        cdlist.append(stringcdate)

    Final = zip(datelist, ownerlist, htmllist, owwlist, llist, slist, cdlist)
    FinalL = list(Final)
    #print(llist)
    #print(FinalL)

    with open(r'C:\Users\Twinv\Desktop\Bids\Primary.csv','a') as out:
        csv_out=csv.writer(out)
        for row in FinalL:
            csv_out.writerow(row)
