# Gbot Dockerfile
1) Download <code>git clone https://github.com/pstvasko/gbot.git</code>
2) Move to workdir <code>cd gbot</code>
3) Write your configuration <code>nano options.txt</code>
4) Build your Dockerfile <code>docker build -t gbot .</code>
5) Run gbot docker container <code>docker run --name gbot -d gbot</code>
6) View logs gbot <code>docker logs gbot -f</code>

Official project <html>https://github.com/steeply/gbot-trader</html>
