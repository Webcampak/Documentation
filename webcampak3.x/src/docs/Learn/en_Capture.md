# Capture

## Interval

Webcampak captures pictures at an interval defined in minutes or second, with captures triggered based on clock time.

For example, if a source is configured to capture every:

* __20s__: The capture process will be triggered at 5:00"00, 5:00"20, 5:00"40, 6:00"00, etc...
* __10mn__: The capture process will be triggered at 5:00"00, 5:10"00, 5:20"00, 5:30"00, etc...

To get a "clean" and consistent result we recommend using one of the following settings:

* __Seconds__: 10, 20, 30
* __Minutes__: 1, 5, 10, 15, 20, 30, 60

Note: a 10s capture frequency will highly depend of your hardware, and might not be achievable.

## Accurate Capture Time

When capturing from a D-SLR camera, and depending of multiple factors, the actual capture process might be triggered a few miliseconds or seconds after the defined interval.

The system can be configured so that users can specify if the picture timestampe (and filename) should be the time the capture request was sent (interval time) or the time the picture was actually captured.

### Filename

Webcampak uses the capture time for pictures filenames, using the following convention: YYYYMMDDHHmmSS (YearMonthDayHourMinuteSecond).

For example 20170224124007.jpg is a picture captured on February(02) 24th, 2017 at 12:40 and 07 seconds.

To prevent issues associated with a large number of files in a single directory, pictures are stored in a directory corresponding to the picture's day, for example,  the filepath for the above picture will be: pictures/20170224/20170224124007.jpg

## Weekly Calendar

A 24h-format weekly calendar is available in each source to define when to capture pictures (day of the week, time of the day).

Users can enable variable capture rate (for example capture business hours at a different rate) by configuring multiple sources with a different non-overlapping capture calendar.

## Non-overlapping sources

When configuring sources to capture from the same physical source (i.e. same D-SLR camera), users must be cautious not to have overlapping capture requests.

Cameras can only handle one capture at a time. If there is an overlap, the source to get the pictures will be "first-come-first-served", with the other source failing with the potential risk of crashing the camera.

## RAW Files

Raw pictures are stored in a specific sub-directory, for the above picture it will be: pictures/raw/20170224/20170224124007.jpg

It might be useful to understand that, in webcampak, raw pictures are mostly considered as a supplement to jpg pictures. Picture manipulation happens on jpg pictures only.
Raw pictures are stored in a different directory tree. At various processing stages, the system will check for the presence of a raw pictures (and eventually configuration settings) to determine if such files should be sent.

## Handle capture failure

Webcampak verifies capture success and can take actions (such as email notifiation) in case of failure to capture (or delays from expected capture slot).

In some situations, failure might be caused by an issues with the D-SLR camera (such as a system failure). Webcampak can control [Phidgets relays](https://www.phidgets.com) and powercycle the camera after a pre-defined number of failures. This mechanism acts on the Camera's power supply, meaning the camera itself must be able to start back up after power loss (it is the case for most D-SLR cameras).




