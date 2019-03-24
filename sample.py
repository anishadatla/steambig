import json

fname = "co2e_data.csv"
data = []
proddict = {}
with open(fname,'r') as fr:
    for line in fr:
        data.append(line.strip().split(','))

for i in range(1,len(data)):

    if data[i][0] not in proddict:
        proddict[data[i][0].lower()] = {}
        proddict[data[i][0].lower()]["GHGEs per 100g median"] = data[i][2]
        proddict[data[i][0].lower()]["GHGEs per 100 kcal median"] = data[i][3]

scrapedProducts = []
scrapedProducts.append("beef")
scrapedProducts.append("cheese")

alldata=[]
for k,v in proddict.items():
    element = {}
    element["name"] = k
    element["ce1"] = v["GHGEs per 100g median"]
    element["ce2"] = v["GHGEs per 100 kcal median"]
    alldata.append(element)
with open("alldata.json", 'w') as fw:
    fw.write("alldata='")
    fw.write(json.dumps(alldata))
    fw.write("';")

finaldata = []

for prod in scrapedProducts:
    for k,v in proddict.items():
        element = {}
        if prod in k:
            element["name"] = k
            element["ce1"] = v["GHGEs per 100g median"]
            element["ce2"] = v["GHGEs per 100 kcal median"]
            finaldata.append(element)
            # element = {}

with open("finaldata.json", 'w') as fw:
    fw.write("finaldata='")
    fw.write(json.dumps(finaldata))
    fw.write("';")
