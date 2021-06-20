FROM node

RUN npm install npm@latest -g

RUN npm install -g newman

# Create a project directory
RUN mkdir /contactlisttest/

# Copy all the files from the current working directory to newly created project directory in the above step
ADD . /contactlisttest/

# Set newly created project directory as working directory
WORKDIR /contactlisttest/

ENTRYPOINT newman run collections/contactList.collection.json -e collections/contactList.environment.json
