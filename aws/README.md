This directory contains the AWS cloudformation and scripts to manage
uploaded files, and will eventually also contain the serverless website
to suport browsing.

Basic Plan:

* S3 bucket created

* Files uploaded to an incoming directory in S3, triggers event

* Lambda listens to event, pulls metadata from image, stores in DB and moves file to new location, triggers events

* Lambda listens to event, generates thumbnails

S3 directory structure:

photos - S3 bucket name
photos/incoming - publically writeable, no read (to save on permissions, may change later)
photos/full/* - images once processed
photos/thumbnail/XXXxYYY/* - thumbnails from the images in various sizes
photos/website/* - the json and html for the website

Database:

Provisionally DynamoDB. Want to store an entry for each file with all the metadata from
the image. Make it searchable - this will be the first port of call for the website.