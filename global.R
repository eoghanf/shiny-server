MIdata <- read.csv("MIdata.csv")
MIdata['Advance.Pct'] <- jitter(as.numeric(MIdata[,'Advance.Pct']))

MIdata.default <- MIdata[MIdata[,"In.Arrears"]=="Yes",]
MIdata.notdefault <- MIdata[MIdata[,"In.Arrears"]=="No",]

