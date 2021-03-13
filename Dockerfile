FROM node:15-alpine
RUN apk update && apk upgrade
RUN apk add --no-cache bash git openssh python3
WORKDIR /root
RUN git clone https://github.com/steeply/gbot-trader.git
WORKDIR /root/gbot-trader
RUN npm i
RUN printf "#!/bin/bash\nset -o allexport\nsource $HOME/gbot-trader/options.txt\nnode $HOME/gbot-trader/build/server" > $HOME/gbot-trader/run.sh
RUN chmod u+x run.sh
ADD ./options.txt /root/gbot-trader/options.txt
WORKDIR /root/gbot-trader
CMD /bin/bash /root/gbot-trader/run.sh
