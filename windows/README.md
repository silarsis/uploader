The windows client is being written as a Powershell module initially
- I'll move to something else if needed.

The uploader will have a .config file that specifies the directories to watch
and the filename patterns within those directories.

The uploader will maintain a sqlite database of files already uploaded.

The uploader will cycle across it's known directories looking for files that
haven't been uploaded yet, and send them to S3.