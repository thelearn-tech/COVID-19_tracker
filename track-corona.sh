#!/bin/bash

#powred by https://corona-stats.online
#https://github.com/sagarkarira/coronavirus-tracker-cli
#https://github.com/thelearn-tech/COVID-19_tracker

banner() {
	echo -e """
 \e[0m\033[34m##############################
 ###### \033[1;33mCOVID-19 Tracker \e[0m\033[34m######
 ###### \033[1;36mby thelearn-tech \e[0m\033[34m######
 ##############################
"""
}

main() {
clear
clear	
alldata=$(curl -s "https://corona-stats.online/india?format=json" -L )
ttodaycases=$(echo $alldata | grep -oP '(?<="todayCases":)[^,]*' | head -n 1)
ddeaths=$(echo $alldata | grep -oP '(?<="deaths":)[^},]*' | head -n 1)
ttodayDeaths=$(echo $alldata | grep -oP '(?<="todayDeaths":)[^},]*' | head -n 1)
rrecovered=$(echo $alldata | grep -oP '(?<="recovered":)[^},]*' | head -n 1)
ttodayRecovered=$(echo $alldata | grep -oP '(?<="todayRecovered":)[^},]*' | head -n 1)
aactive=$(echo $alldata | grep -oP '(?<="active":)[^},]*' | head -n 1)
ccritical=$(echo $alldata | grep -oP '(?<="critical":)[^},]*' | head -n 1)
ccasesPerOneMillion=$(echo $alldata | grep -oP '(?<="casesPerOneMillion":)[^},]*' | head -n 1)
ddeathsPerOneMillion=$(echo $alldata | grep -oP '(?<="deathsPerOneMillion":)[^},]*' | head -n 1)
ttests=$(echo $alldata | grep -oP '(?<="tests":)[^},]*' | head -n 1)
ttestsPerOneMillion=$(echo $alldata | grep -oP '(?<="testsPerOneMillion":)[^},]*' | head -n 1)
ppopulation=$(echo $alldata | grep -oP '(?<="population":)[^},]*' | head -n 1)
aactivePerOneMillion=$(echo $alldata | grep -oP '(?<="activePerOneMillion":)[^},]*' | head -n 1)
rrecoveredPerOneMillion=$(echo $alldata | grep -oP '(?<="recoveredPerOneMillion":)[^},]*' | head -n 1)
ccriticalPerOneMillion=$(echo $alldata | grep -oP '(?<="criticalPerOneMillion":)[^},]*' | head -n 1)
cconfirmed=$(echo $alldata | grep -oP '(?<="confirmed":)[^},]*' | head -n 1)
ccases=$(echo $alldata | grep -oP '(?<="cases":)[^},]*' | head -n 1)
clear
clear
clear
banner
echo ""
printf "\e[0m\e[1;32m Country\e[0m\e[1;96m:\e[0m\e[1;33m $ccountry\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Cases\e[0m\e[1;96m:\e[0m\e[1;33m   $ccases\e[0m\n"
printf "\e[0m\e[1;32m Cases Today\e[0m\e[1;96m:\e[0m\e[1;33m $ttodaycases\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Deaths\e[0m\e[1;96m:\e[0m\e[1;33m $ddeaths\e[0m\n"
printf "\e[0m\e[1;32m Deaths Today \e[0m\e[1;96m:\e[0m\e[1;33m $ttodayDeaths\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Active\e[0m\e[1;96m:\e[0m\e[1;33m    $aactive\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Critical\e[0m\e[1;96m:\e[0m\e[1;33m  $ccritical\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Recovered\e[0m\e[1;96m:\e[0m\e[1;33m $rrecovered\e[0m\n"
printf "\e[0m\e[1;32m Recovered Today\e[0m\e[1;96m:\e[0m\e[1;33m $ttodayRecovered\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Confirmed\e[0m\e[1;96m:\e[0m\e[1;33m $cconfirmed\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Cases Per 1 Million\e[0m\e[1;96m:\e[0m\e[1;33m  $ccasesPerOneMillion\e[0m\n"
printf "\e[0m\e[1;32m Deaths Per 1 Million\e[0m\e[1;96m:\e[0m\e[1;33m $ddeathsPerOneMillion\e[0m\n"
printf "\e[0m\e[1;32m Tests Per 1 Million\e[0m\e[1;96m:\e[0m\e[1;33m  $ttestsPerOneMillion\e[0m\n"
printf "\e[0m\e[1;32m Active Per 1 Million\e[0m\e[1;96m:\e[0m\e[1;33m $aactivePerOneMillion\e[0m\n"
printf "\e[0m\e[1;32m Recovered Per 1 Million\e[0m\e[1;96m:\e[0m\e[1;33m $rrecoveredPerOneMillion\e[0m\n"
printf "\e[0m\e[1;32m Critical Per 1 Million\e[0m\e[1;96m:\e[0m\e[1;33m  $ccriticalPerOneMillion\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m Population\e[0m\e[1;96m:\e[0m\e[1;33m $ppopulation\e[0m\n"
echo ""
echo ""
exit 1
}

echo ""
read -p $' \e[1;31m[\e[0m\e[1;37m#\e[0m\e[1;31m]\e[0m\e[1;92mCountry\e[0m\e[1;96m: \e[0m\e[1;93m\en' ccountry
echo ""
clear
clear
main
