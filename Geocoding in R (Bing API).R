Dataset_DC <- read.csv("") # Dataset containing the address
Address <- Dataset_DC$BLOCK
options(BingMapsKey='') # Enter the Bing API URL
latitude<-numeric()
longitude<-numeric()
lat = data.frame(latitude)
lon = data.frame(longitude)
for (i in Address[1:length(Address)]) 
  {
    location = geocode(paste(i,", washington dc"), service="bing")
    lat = rbind(lat,location[1])
    lon = rbind(lon,location[2])
  }
colnames(lat)<- "LATITUDE"
colnames(lon)<- "LONGITUDE"
Dataset_DC <- cbind(Dataset_DC,lat)
Dataset_DC <- cbind(Dataset_DC,lon)
write.csv(Dataset_DC,"") # Location to save the file




