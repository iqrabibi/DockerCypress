FROM cypress/browsers:node16.14.2-slim-chrome100-ff99-edge
Run mkdir /my-cypress-project
WORKDIR /my-cypress-project
COPY ./package.json .
COPY ./cypress ./cypress 
RUN npm install
ENTRYPOINT ["npx","cypress" , "run"]
CMD [""]
