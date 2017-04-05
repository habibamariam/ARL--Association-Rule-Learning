#eclat model

dataset=read.csv('Market_Basket_Optimisation.csv',header=FALSE)
dataset=read.transactions('Market_Basket_Optimisation.csv',sep=',',rm.duplicates = TRUE)

itemFrequencyPlot(dataset,topN=10)
#training eclat on dataset
rules=eclat (data=dataset,parameter = list(support=0.004,minlen=2))
#visulaize the results

inspect(sort(rules,by ='support')[1:15])