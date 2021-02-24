#Bash to automate the following:
#Start node; Start localhost; Localhost runs for 15 mins; Shutdown localhost ;Shutdown nodemon using killall node ; Repeat 50 times
#Requires chromium-browser and wmctrl. Can be installed using sudo apt install. All this works only on Chrome

cd ~/Braitenberg_Exper/Braitenberg_withAPI/

count=50
for i in $(seq $count); do
	google-chrome --disable-gpu --disable-software-rasterizer http://localhost:3000/ && timeout 900 node server.js
	#wmctrl -c "http://localhost:3000"
done
