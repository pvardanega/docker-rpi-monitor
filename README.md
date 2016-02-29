docker build -t jancelin/rpi-monitor git://github.com/jancelin/docker-rpi-monitor

docker run --restart="always" --name "rpi-monitor" -net=host -p 8888:8888 -p 4200:4200 -d -t jancelin/rpi-monitor
