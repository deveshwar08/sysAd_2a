for i in {01..30}
do
    sudo useradd -m sysAd_$i
    sudo echo -e "delta@123\ndelta@123" | sudo passwd sysAd_$i
done
    
for i in {01..30}
do
    sudo useradd -m webDev_$i
    sudo echo -e "delta@123\ndelta@123" | sudo passwd webDev_$i
done

for i in {01..30}
do
    sudo useradd -m appDev_$i
    sudo echo -e "delta@123\ndelta@123" | sudo passwd appDev_$i
done
sudo useradd -m Jay_Jay
sudo echo -e "delta@123\ndelta@123" | sudo passwd Jay_Jay