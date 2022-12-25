1. You must have ubuntu version 22.04.01

2. You must copy the repository
 "git clone https//:github.com/aaslanyann/Dockerfile.git"

3. Create image from dockerfile
docker build -t "The name of your image":latest

4. Run container (Only on 80:80 port)
docker run -d -p 80:80   

if you want to change file instead of this index.html file paste your
file and change filename in dockerfile
