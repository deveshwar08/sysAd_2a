sudo groupadd sysAd_2
sudo groupadd sysAd_3
sudo groupadd sysAd_4
sudo groupadd webDev_2
sudo groupadd webDev_3
sudo groupadd webDev_4
sudo groupadd appDev_2
sudo groupadd appDev_3
sudo groupadd appDev_4
sudo groupadd sysAd
sudo groupadd webDev
sudo groupadd appDev
sudo groupadd delta
sudo usermod -a -G delta Jay_Jay
for i in {01..10}
do
    sudo usermod -a -G sysAd_2,sysAd,delta sysAd_$i
    sudo setfacl -m g:sysAd_3:r-- /home/sysAd_$i
    sudo setfacl -m g:sysAd_4:r-- /home/sysAd_$i
done
for i in {11..20}
do
    sudo usermod -a -G sysAd_3,sysAd,delta sysAd_$i
    sudo setfacl -m g:sysAd_4:r-- /home/sysAd_$i
done
for i in {21..30}
do
    sudo usermod -a -G sysAd_4,sysAd,delta sysAd_$i
done
for i in {01..10}
do
    sudo usermod -a -G webDev_2,webDev,delta webDev_$i
    sudo setfacl -m g:webDev_3:r-- /home/webDev_$i
    sudo setfacl -m g:webDev_4:r-- /home/webDev_$i
done
for i in {11..20}
do
    sudo usermod -a -G webDev_3,webDev,delta webDev_$i
    sudo setfacl -m g:webDev_4:r-- /home/webDev_$i
done
for i in {21..30}
do
    sudo usermod -a -G webDev_4,webDev,delta webDev_$i
for i in {01..10}
do
    sudo usermod -a -G appDev_2,appDev,delta appDev_$i
    sudo setfacl -m g:appDev_3:r-- /home/appDev_$i
    sudo setfacl -m g:appDev_4:r-- /home/appDev_$i
    
done
for i in {11..20}
do
    sudo usermod -a -G appDev_3,appDev,delta appDev_$i
    sudo setfacl -m g:appDev_4:r-- /home/appDev_$i
done
for i in {21..30}
do
    sudo usermod -a -G appDev_4,appDev,delta appDev_$i
for i in {01..30}
do
    sudo setfacl -m u:Jay_Jay:r-- /home/sysAd_$i
    sudo setfacl -m other:--- /home/sysAd_$i
    sudo setfacl -m u:Jay_Jay:r-- /home/appDev_$i
    sudo setfacl -m other:--- /home/appDev_$i
    sudo setfacl -m u:Jay_Jay:r-- /home/webDev_$i
    sudo setfacl -m other:--- /home/webDev_$i
done