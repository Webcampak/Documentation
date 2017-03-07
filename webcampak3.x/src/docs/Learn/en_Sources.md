# Files

Your Webcampak will probably have to store a (very) large number of pictures. It has been designed for this task and multiple features are available to manage and secure those files.

## Redundancy

Always keep in mind that hardware failure or human error (i.e. delete pictures by mistake) can happen and it's always better to take precautions before such events happen.

Webcampak is able to send pictures to remote FTP server, you can also store pictures automatically on another source of the same Webcampak to prevent human errors (just keep in mind it will require twice the amount of disk space).

## Automated deletion

Webcampak is equipped with automated deletion mechanisms to ensure its internal hard disk never runs out of space. Those mechanisms can be configured to fit various requirements.

When Webcampak store its pictures to a remote server, it can use its internal disk space as a buffer to ensure no pictures are lost in case of network issue. Depending of the capture frequency and picture size, this buffer size can span days, even months.

## File structure

In most cases, access to Webcampak files is done through FTP, using some of the automatically created account.

A gloabl FTP account (wpresources) is available for admins to access shared Webcampak elements, such as:

* cache files (temporary files created by Webcampak)
* Webcampak database (users, permissions, sources details)
* emails (queued, sent, failed)
* configuration files
* logs
* statistics
* common watermark files (shared between all sources)
* xfer (queued, completed, failed)

Each source then get its own FTP account giving access to its own directory tree, containing:

* __live__: directory containing hotlink pictures and videos
* __pictures__: directory containing pictures archives, with one sub-directory per capture day
* __resources__: direcotry containing various source specific elements necessary for processing and source operation
* __tmp__: temporary directory used in processing and/or picture acquisition
* __videos__: directory containing generated videos


