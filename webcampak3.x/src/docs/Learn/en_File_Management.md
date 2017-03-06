# File Management

Over a project's lifetime, a webcampak system will capture, manipulate, transfer and store a very large number of files. Different mechanisms have been implemented to ensure storage and transmission is performed in an efficient and secured manner.

## Local storage

Webcampak is usually shipped with a 256 or 512 GB SSD, providing ample space for local storage. In a vast majority of situations, captured pictures are transferred to a NAS or another Webcampak (Webcampak Cloud generally).

In this situation, local storage can be considered as a buffer. The system will be configured to keep X days (X depending of multiple factors, but often a month or two) of pictures locally, automatically clearing older pictures.

Using webcampak local storage as a buffer is the ideal solution to accomodate network connectivity issues, when such an event happen, you will have X days to identify and address the issue before starting to loose pictures.

At the end of the incident, a webcampak feature (Xfer Reports) is available to transfer back missing pictures to remote servers (more below).

## File Synchronization

Webcampak "Xfer Reports" features provides means to ensure all files on a local webcampak are also available in remote locations, by comparing file names and file sizes. By looking at a report, users can decide to initiate transfer of any missing files.

This feature cover multiple use cases:

* Re-synchronize files after a network incident
* Transfer all files at once to a new destination (a new NAS for example)
* Ensure no pictures are missing

## Bandwidth Constrains

Bandwidht constraints sometimes prevents pictures form being transferred after capture, for example if there is a higher capture rate during a specific timeslot. The "Xfer" feature will deserialize picture transmission from the capture process.

New pictures are placed in a queue, which is then processed as per configured parameters (in particular number of parallel transfers). This prevents risks of overloading the system with too many parallel jobs.

## Quota

Webcampak implements a "soft-quota" policy.

Users can define how much space can be used by a source on the system and will report usage over quota. But the system will not trigger actions others than reporting over-usage. Pictures are critical to our system, and we didn't want to take any action that might result on improperly deleting pictures.

If a source goes over quota, the system will report so, but will not take further actions.




