
# 16-07-2019-Script in python to find the most connected genes to a query gene. 🧐

## Goal
From the physical and genetic interactors of a specific gene, I am interested in finding which of the interactors of the interactors are also interactors of the initial query gene.

This calculation can maybe triggers hypothesis about how  is the correlation in the amount of connectivity of one gene to another gene and the type of interactions they are more prone to share.

Perhaps, it is like this:
![](../images/Model_cartoon-05.png)

The following picture depicts what I am looking for in the [SGD database](https://www.yeastgenome.org/) for every gene of interest:
![](../images/cartoon-for-common-genes-workflow07.png)

The following python code depicts what I have done, that can be reused and improved  for other purposes.
## Python code

```python
import pandas as pd
import numpy as np
from collections import defaultdict
import seaborn as sns
import matplotlib.pyplot as plt
%matplotlib inline


## good website to study dataframes
#https://www.shanelynn.ie/using-pandas-dataframe-creating-editing-viewing-data-in-python/
```


```python
data=pd.read_excel(r'C:\Users\linigodelacruz\Documents\PhD_2018\Documentation\Calculations\data_sgd\Interaction_data_sgd_downloads.xlsx',header=17,encoding="utf-8-sig")
col_label=data.columns.values
data_go=pd.read_excel(r'C:\Users\linigodelacruz\Documents\PhD_2018\Documentation\Calculations\data_sgd\slim_goterms_data_sgd_downloads.xlsx',header=14,encoding="utf-8-sig")
col_label_go=data_go.columns.values
data_go.set_index(col_label_go[1],inplace=True)
```


```python



d2 = defaultdict(dict)
query=['BEM1'] # here you can put the gene of interest
# giant for loop
names1 = query
i=-1
for query1 in names1:
    #filtering the table just for the value of the query
    q1 = data[data['Standard_Gene_Name_(Bait)']==query1]
    q1_interact=q1[col_label[3]].unique()
   # a for loop for all the interactors of query
    for query2 in q1_interact:


        q2=data[data['Standard_Gene_Name_(Bait)']==query2] #these are get_query(q1[i])
        q2_interact=q2[col_label[3]].unique()
        d = defaultdict(int)
        common = []

        for name1  in q2_interact:
            if name1 in q1_interact: # if a gene interactor of the query1 is in interactors of query 2
                common.append(name1)
                d[name1] += 1


        d2[query1, query2]["common"] = common
        d2[query1,query2]["names of genes"]=query2
        d2[query1, query2]["n_common"] = len(common)
        d2[query1, query2]["len_i_1"] = len(q1)
        d2[query1, query2]["len_i_2"] = len(q2)
        if len(q1)==0:
            d2[query1, query2]["% of query subset"] = 0
        else:
            d2[query1, query2]["% of query subset"] = len(d)/len(q1_interact) *100

        if len(q2)==0:
            d2[query1, query2]["% of query 2 subset  "] = 0
        else:
            d2[query1, query2]["% of query 2 subset  "] = len(d)/len(q2_interact) *100

            q1_filt=q1[q1[col_label[3]]==query2]
            d2[query1,query2]["interact_annotation"]=q1_filt[col_label[4]]
            d2[query1,query2]['GO_slim_query']= data_go.loc[query1][col_label_go[4]]
            #d2[query1,query2]['GO_slim_interactors']= data_go[data_go[col_label_go[1]]==query2][col_label_go[4]]

            d2[query1,query2]['GO_slim_interactors']= data_go.loc[query2][col_label_go[4]]


```


```python

# I dont want the query to be in the plot
df=pd.DataFrame(d2).T
a=df
a_col=a.columns.values
#0'% of query 2 subset  ',
#1'% of query subset',
#2'GO_slim_interactors'
#3'GO_slim_query'
#4'common',
#5'interact_annotation',
#6'len_i_1',
#7'len_i_2',
#8'n_common',
#9'names of genes'
ab=a['% of query subset'][::-1]
pos= np.arange(len(a.iloc[:,4]))
#making a data frame of both datasets for better handling them
#ab_df=pd.DataFrame({'% of query subset':ab,'names of genes':names2[::-1]})
#sorting the data by the values
absorted=a.sort_values(by=['% of query subset'])

genes_to_plot=absorted['names of genes'].iloc[len(a.iloc[:,4])-20:len(a.iloc[:,4])]
numbers_to_plot=absorted['% of query subset'].iloc[len(a.iloc[:,4])-20:len(a.iloc[:,4])]

fig, ax = plt.subplots(figsize=(10,10))         # Sample figsize in inches
plt.barh(pos[0:20],numbers_to_plot,align='edge',tick_label=genes_to_plot,color=(0.2, 0.4, 0.6, 0.6))

ax.tick_params(labelbottom='on',labeltop='on')
ax.grid(color='k', linestyle='-', linewidth=0.5)

ax.text(120,22,"Top_most_connected_gene",fontsize=17)
ax.text(120, 0,  data_go.loc[genes_to_plot[18]][col_label_go[4]], fontsize=15)
ax.text(120,-3,"interaction_annotation",fontsize=17)
ax.text(120, -6,  df.loc[query[0],genes_to_plot[18]][a_col[5]], fontsize=15)
ax.text(196,22,"Query_gene",fontsize=17)
ax.text(196, 0,  data_go.loc[query][col_label_go[4]], fontsize=15)
plt.xticks(fontsize=18, rotation=0)
plt.yticks(fontsize=18, rotation=0)
plt.xlabel('Percentage of the conection of interactors with_' + "".join(query),fontsize=18)

plt.savefig("common_interactors_" + "".join(query) + ".svg",dpi=300,format='svg')
```
## Results Figure
![Figure-showing-the-results](../images/output_common-genes-workflow.png)
