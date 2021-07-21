d=$(date +"%F")
IFS=$'\n'
ftr=$(cat future.txt)
for i in $ftr
do
	s=$(echo $i|awk '{print $1}')
	if [[ "$s" == "$d" ]]
	then
		for i in {01..30}
		do
			cd /home/sysAd_$i
			sudo touch schedule.txt
			sudo echo "You have a meeting today" > schedule.txt
			cd /home/webDev_$i
			sudo touch schedule.txt
			sudo echo "You have a meeting today" > schedule.txt
			cd /home/appDev_$i
			sudo touch schedule.txt
			sudo echo "You have a meeting today" > schedule.txt
		done
		cd /home/Jay_Jay
		sudo touch schedule.txt
		sudo echo "You have a meeting today" > schedule.txt
	fi
done