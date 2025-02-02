/creating a variable called rawdata that will read the file path of the CSV file, and will give data types to the collumns in a vector format
rawData:("ISSISSIFFIFISI";enlist csv) 0: `$":C:/Users/44775/Downloads/data.csv"
/changes columnNames
columnNames: `TradeDate`Symbol`Exchange`TradeTime`TradePrice`TradeSize`BidPrice`AskPrice`BidSize`AskSize`Condition`Market
rawData: `columnNames xcol rawData 
/outpates the table
rawData
/prints the schema of the table
meta rawData

//however this doesn't print the correct schema as the collumns are still not correctly named 