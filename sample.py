import json

fname = "co2e_data.csv"
data = []
proddict = {}
with open(fname,'r') as fr:
    for line in fr:
        data.append(line.strip().split(','))

for i in range(1,len(data)):

    if data[i][0] not in proddict:
        proddict[data[i][0].lower()]["name"] = data[i][0] 
        proddict[data[i][0].lower()]["GhgeKg"] = data[i][2]
        proddict[data[i][0].lower()]["GhgeKcal"] = data[i][3]

scrapedProducts = []
scrapedProducts.append("beef")
scrapedProducts.append("cheese")

finaldict = []
for prod in scrapedProducts:
    for k,v in proddict.items():
        finaldict.append(v);


with open("data.json", 'w') as fw:
    fw.write(json.dumps(finaldict))
