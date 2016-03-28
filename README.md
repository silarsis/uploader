OSS app to continually upload new photos to an online store.

Intention:

* Agent to run on Windows, OS X, and ideally iPhone and Android

* Cloudformation stack to define AWS infrastructure (S3 etc) for storing pictures

* Serverless json + html for web front end for browsing uploaded pictures

* Will support vast quantities (Terabytes) of photos nicely

The inspiration for this is drawn from Everpix (went bust),
StreamNation + PictureLife (deleted my pictures when merging), and other similar services.

What is it Not?

This is _not_ a general purpose backup system, or a competitor to, say, OwnCloud.

This is not intended to maintain any form of useful backup in terms of directories,
naming etc.

This should not be used as your only way to store your pictures - do more backups as well.