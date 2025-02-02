/creating a variable called rawdata that will read the file path of the CSV file, and will give data types to the collumns in a vector format
rawData:("ISSISSIFFIFISI";enlist csv) 0: `$":C:/Users/44775/Downloads/data.csv"
/outputs the file
rawData
columnNames: `TradeDate`Symbol`Exchange`TradeTime`TradePrice`TradeSize`BidPrice`AskPrice`BidSize`AskSize`Condition`Market
rawData: `columnNames xcol rawData 

rawData