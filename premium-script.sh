
#!/bin/bash
# Created by Kang wahid
if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "Sepertinya Anda tidak menjalankan installer ini pada sistem Debian, Ubuntu atau CentOS"
	exit
fi
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
echo "--------------- Selamat Datang Di Vps Anda Boss ---------------"
	echo ""
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	clear
	echo "--------------- Selamat datang Admin Di IP: $myip ---------------"
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU model:\e[0m $cname"
	echo -e "\e[032;1mNumber of cores:\e[0m $cores"
	echo -e "\e[032;1mCPU frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal amount of ram:\e[0m $tram MB"
	echo -e "\e[032;1mTotal amount of swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem uptime:\e[0m $up"
	echo -e "\e[032;1mScript by:\e[0m Rasta-Team.net | http://rasta-team.net/"
	echo "------------------------------------------------------------------------------"
	echo " SSH & OpenVPN"
	echo -e "\e[031;1m 1\e[0m) \e[30;48;5;82mBuat Akun SSH/OpenVPN[0m"
	echo -e "\e[031;1m 2\e[0m) \e[30;48;5;82mGenerate Akun SSH/OpenVPN[0m"
	echo -e "\e[031;1m 3\e[0m) \e[30;48;5;82mGenerate Akun Trial[0m"
	echo -e "\e[031;1m 4\e[0m) \e[30;48;5;82mGanti Password Akun SSH/VPN[0m"
	echo -e "\e[031;1m 5\e[0m) \e[30;48;5;82mTambah Masa Aktif Akun SSH/OpenVPN[0m"
	echo -e "\e[031;1m 6\e[0m) \e[30;48;5;82mHapus Akun SSH/OpenVPN [0m"
	echo -e "\e[031;1m 7\e[0m) \e[30;48;5;82mCek Login Dropbear & OpenSSH [0m"
	echo -e "\e[031;1m 8\e[0m) \e[30;48;5;82mAuto Limit Multi Login[0m"
	echo -e "\e[031;1m 9\e[0m) \e[30;48;5;82mMelihat detail user SSH & OpenVPN[0m"
	echo -e "\e[031;1m10\e[0m) \e[30;48;5;82mDaftar Akun dan Expire Date[0m[0m"
	echo -e "\e[031;1m11\e[0m) \e[30;48;5;82mDelete Akun Expire[0m"
	echo -e "\e[031;1m12\e[0m) \e[30;48;5;82mKill Multi Login[0m"
	echo -e "\e[031;1m13\e[0m) \e[30;48;5;82mAuto Banned Akun[0m"
	echo -e "\e[031;1m14\e[0m) \e[30;48;5;82mUnbanned Akun [0m"
	echo -e "\e[031;1m15\e[0m) \e[30;48;5;82mMengunci Akun SSH & OpenVPN"
	echo -e "\e[031;1m16\e[0m) \e[30;48;5;82mMembuka user SSH & OpenVPN yang terkunci[0m"
	echo -e "\e[031;1m17\e[0m) \e[30;48;5;82mMelihat daftar user yang terkick oleh perintah user-limit[0m"
	echo -e "\e[031;1m18\e[0m) \e[30;48;5;82mMelihat daftar user yang terbanned oleh perintah user-ban[0m"
	echo -e "\e[031;1m19\e[0m) \e[30;48;5;82mBuat Akun PPTP VPN [0m"
	echo -e "\e[031;1m20\e[0m) \e[30;48;5;82mHapus Akun PPTP VPN [0m"
	echo -e "\e[031;1m21\e[0m) \e[30;48;5;82mLihat Detail Akun PPTP VPN[0m"
	echo -e "\e[031;1m22\e[0m) \e[30;48;5;82mCek login PPTP VPN [0m"
	echo -e "\e[031;1m23\e[0m) \e[30;48;5;82mLihat Daftar User PPTP VPN[0m"
	echo -e "\e[031;1m24\e[0m) \e[30;48;5;82mSet Auto Reboot[0m"
	echo -e "\e[031;1m25\e[0m) \e[30;48;5;82mSpeedtest [0m"
	echo -e "\e[031;1m26\e[0m) \e[30;48;5;82mMemory Usage[0m"
	echo -e "\e[031;1m27\e[0m) \e[30;48;5;82mChange OpenVPN Port [0m"
	echo -e "\e[031;1m28\e[0m) \e[30;48;5;82mChange Dropbear Port[0m"
	echo -e "\e[031;1m29\e[0m) \e[30;48;5;82mChange Squid Port[0m"
	echo -e "\e[031;1m30\e[0m) \e[30;48;5;82mRestart OpenVPN [0m"
	echo -e "\e[031;1m31\e[0m) \e[30;48;5;82mRestart Dropbear[0m"
	echo -e "\e[031;1m32\e[0m) \e[30;48;5;82mRestart Squid[0m"
	echo -e "\e[031;1m33\e[0m) \e[30;48;5;82mRestart Webmin [0m"
	echo -e "\e[031;1m34\e[0m) \e[30;48;5;82mBenchmark[0m[0m"
	echo -e "\e[031;1m35\e[0m) \e[30;48;5;82mUbah Pasword VPS[0m"
	echo -e "\e[031;1m36\e[0m) \e[30;48;5;82mUbah Hostname VPS[0m"
	echo -e "\e[031;1m37\e[0m) \e[30;48;5;82meRboot Server[0m"
	echo "-------------------------------------------"
read -p "Tulis Pilihan Anda (angka): " x
if test $x -eq 1; then
user-add
elif test $x -eq 2; then
user-generate
elif test $x -eq 3; then
trial
elif test $x -eq 4; then
user-aktif
elif test $x -eq 5; then
user-password
elif test $x -eq 6; then
read -p "Isikan Jumlah Maximal Login (1-2): " MULTILOGIN
user-ban $MULTILOGIN
elif test $x -eq 7; then
user-unban
elif test $x -eq 8; then
user-lock
elif test $x -eq 9; then
user-unlock
elif test $x -eq 10; then
user-delete
elif test $x -eq 11; then
user-detail
elif test $x -eq 12; then
user-list
elif test $x -eq 13; then
user-login
elif test $x -eq 14; then
user-log
elif test $x -eq 15; then
read -p "Isikan Jumlah Maximal Login (1-2): " MULTILOGIN
user-limit $MULTILOGIN
elif test $x -eq 16; then
infouser
elif test $x -eq 17; then
expireduser
elif test $x -eq 18; then
user-delete-expired
elif test $x -eq 19; then
clear
echo "Script ini berjalan secara otomatis setiap jam 12 malam"
echo "Anda tidak perlu menjalankannya secara manual"
echo "Jika anda tetap ingin menjalankan script ini, ketik user-expire"
elif test $x -eq 20; then
log-limit
elif test $x -eq 21; then
log-ban
elif test $x -eq 22; then
user-add-pptp
elif test $x -eq 23; then
user-delete-pptp
elif test $x -eq 24; then
user-detail-pptp
elif test $x -eq 25; then
user-login-pptp
elif test $x -eq 26; then
alluser-pptp
elif test $x -eq 27; then
speedtest --share
elif test $x -eq 28; then
bench-network
elif test $x -eq 29; then
ram
elif test $x -eq 30; then
	if [[ "$OS" = 'debian' ]]; then 
		service ssh restart 
	else 
		service sshd restart 
	fi
elif test $x -eq 31; then
service dropbear restart
elif test $x -eq 32; then
service openvpn restart
elif test $x -eq 33; then
	if [[ "$OS" = 'debian' ]]; then 
		service pptpd restart 
	else 
		service pptpd restart 
	fi
elif test $x -eq 34; then
service webmin restart
elif test $x -eq 35; then
	if [[ "$OS" = 'debian' ]]; then 
		service squid3 restart 
	else 
		service squid restart 
	fi
elif test $x -eq 36; then
edit-port
elif test $x -eq 37; then
auto-reboot
elif test $x -eq 38; then
reboot
elif test $x -eq 39; then
passwd
elif test $x -eq 40; then
log-install
elif test $x -eq 41; then
wget https://raw.githubusercontent.com/ehomecore/menu/master/premium-script.sh -O - -o /dev/null|sh
else
echo "Pilihan Tidak Terdapat Di Menu."
exit
fi
