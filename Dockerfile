## INTSALL ALPINE
FROM alpine:latest
## INSTALL DEPENDENCIES
RUN apk add nodejs
RUN apk add npm
RUN apk add git

## clone app 
copy . /app

## defining working dir
WORKDIR /app

## exposing port 3000
expose 3000

## runnig the app
CMD ["npm", "start"]
