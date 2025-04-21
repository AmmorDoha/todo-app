FROM node:12 alpine
RUN apk add --no-cache git
Run git clone -q https://github.com/AmmorDoha/todo-app.git
WORKDIR /todo-app 
RUN yarn install --production 
CMD ["node","/src/index.js"]
