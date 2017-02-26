# Logging

This is something that has been dramatically extended from webcampak 2.x and is worth its own section in the documentation to emphasis on why reviewing logs can be relevant.

Logs usually do not take a vast amount of physical space, so we decided to built it into most of the processing done by webcampak and log almost everything. Some logs would likely never be used when some can be especially useful in the configuration stages to understand what is happening under the hood.

## Configuration changes

All configuration changes to sources or general configuration are logged, this lets you understand who changed what when. This is especially useful if you want to rollback to a previous configuration setting but do not remember what this was.

## Capture logs

Most actions taken automatically by webcampak when it captures and manipulate pictures are logged, and those logs also provide timed events,not only the timestamp but the time it took to run some actions.

The most relevant value in capture logs is the overall capture time (20.7s in the below capture), which gives you an idea on the maximum capture rate to be supported by the system.

```Logs
2017-02-24 14:50:33,864 (INFO) webcampak : capture.run(): Capture: Overall capture time: 20752 ms
```

Then, digging into the logs, you can identify the time taken by various actions, for example (below), creating a 1920x1080 hotlink file took 5.6 seconds.

```Logs
2017-02-24 14:50:21,508 (INFO) webcampak : captureUtils.generateHotlinks(): Hotlink File: /home/webcampak/webcampak/sources/source1/live/webcam-1920x1280.jpg
2017-02-24 14:50:27,157 (INFO) webcampak : pictureTransformations.resize(): Resized picture to 1920x1280 in 5646 ms
```

It is safe to assume that in this case, disabling this particular action in the configuration would save 5s and bring the capture time closer to 15s, potentially allowing to increase capture rate.