#Build base image of node.js app
FROM node:12
#Create the working directory
WORKDIR /usr/src/app
#Copy dependencies into WORKDIR
COPY package*.json ./
#RUN files in WORKDIR
RUN npm install
#COPY every file from current directory into WORKDIR
COPY . .
#EXPOSE port for the app
EXPOSE 8080
#Run node.js app that's inside WORKDIR
CMD ["node","app.js"]
