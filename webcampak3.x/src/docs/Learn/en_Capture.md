# Capture

## Interval

Webcampak capture pictures at an interval defined in minutes or second in a source configuration, with captured triggered based on clock time. For example, if a source is configured to capture every:

* __20s__: The capture process will be triggered at 5:00"00, 5:00"20, 5:00"40, 6:00"00, etc...
* __10mn__: The capture process will be triggered at 5:00"00, 5:10"00, 5:20"00, 5:30"00, etc...

To get a "clean" and consistent output we recommend using one of the following settings:

* __Seconds__: 10, 20, 30
* __Minutes__: 1, 5, 10, 15, 20, 30, 60

Note: a 10s capture frequency will highly depend of your hardware, and might not be feasible in most situations.

## Precise Capture Time

When capturing from a D-SLR camera, and depending of multiple factors, the actual capture process might be triggered a few miliseconds or seconds after the defined interval. Depending if you care about time accuracy or not, you can specify if the picture should take the time it the capture request was sent (interval time) or the time the picture was actually captured.

### Filename

Webcampak uses the capture time in file naming, using the following convention: YYYYMMDDHHmmSS (YearMonthDayHourMinuteSecond). For example 20170224124007.jpg is a picture captured on February (02) 24th, 2017 at 12:40 and 07 seconds.

To prevent too many files from being stored in the same directory (which creates issue for very long projects) pictures are stored in a directory corresponding to the picture's day, for example, filepath for the above picture will be: pictures/20170224/20170224124007.jpg

## Calendar

A 24h format weekly calendar is available in each source to identify when to capture pictures (day of the week, time of the day).

If you want to enable variable capture rate (for example capture business hours at a different rate than outside business hours), you would configure two sources with a different non-overlapping capture calendar.

## Non-overlapping sources

When configuring sources to capture from the same physical source (i.e. same D-SLR camera), be cautious not to have overlapping capture requests. Cameras can only handle one capture at a time and which source will get the picture will be "first-come-first-served", with the other source failing and the risk of causing the camera to crash.

## RAW Files

Raw pictures are stored in a specific sub-directory, for the above picture it will be: pictures/raw/20170224/20170224124007.jpg

It might be useful to understand that, in webcampak, raw pictures are mostly considered as a supplement to jpg pictures, but picture manipulation happens on jpg pictures only. Raw pictures are stored in a different directory tree and at various stages, the system will check for the presence of a raw pictures (and eventually configuration settings) to determine if such files should be sent.
