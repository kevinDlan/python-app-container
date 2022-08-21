# using python 3.8 image
FROM python:3.8

# create working directory
WORKDIR /usr/python-app/app

# install app dependencies by copying 
# requirement.txt
COPY requirements.txt ./

# install dependencies
RUN pip install -r requirements.txt

# Copy app source code
COPY . .

# Bind the port that the image will run on
EXPOSE 5000

# Define the image's behavior at runtime
CMD ["python","./main.py"]