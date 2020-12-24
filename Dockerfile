FROM node:latest
COPY src /app/server
RUN cd /app && \
   npm install express --save && \
   npm install body-parser --save && \
   npm install cookie-parser --save && \
   npm install multer  --save 
WORKDIR /app
CMD ["node", "server/main.js"]
