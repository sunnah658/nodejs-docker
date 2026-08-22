#pulling base node js image
FROM node:latest

#creating working dir inside container
WORKDIR /app

#copy all the project file from local dir to container working dir
COPY . .

#install the dependencies using node pkg manager npm and read the dependencies form package.json
RUN npm install

#node js dont need to compile the code separately. so we just execute it
ENTRYPOINT ["node"]
CMD ["app.js"]
