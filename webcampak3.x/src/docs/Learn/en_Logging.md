# Logging

Logging has been dramatically extended from Webcampak 2.x. In this section of the document we will details logs and emphasis on why reviewing and understanding logs is be relevant.

Logs files do not take a vast amount of physical space, so we decided to built it into most of processing done by Webcampak and log almost everything. Some logs are there for auditing purposes, others can be especially useful in configuration stages to understand what is happening under the hood.

## Configuration changes

All configuration changes are logged, this lets users understand who changed what, when. This provides users with the ability to rollback to previous configuration settings.

## Capture logs

Most actions taken automatically by Webcampak when it captures and manipulates pictures are logged. Those logs provide timed events, not only the date and time but also the time it took to run some actions.

The most relevant value in capture logs is the overall capture time (20.7s in the below capture). It gives an idea on the maximum capture rate to be supported by the system.

```Logs
2017-02-24 14:50:33,864 (INFO) Webcampak : capture.run(): Capture: Overall capture time: 20752 ms
```

Looking into the logs, users can identify the time taken by various actions, for example (below), creating a 1920x1080 hotlink file took 5.6 seconds.

```Logs
2017-02-24 14:50:21,508 (INFO) Webcampak : captureUtils.generateHotlinks(): Hotlink File: /home/webcampak/webcampak/sources/source1/live/webcam-1920x1280.jpg
2017-02-24 14:50:27,157 (INFO) Webcampak : pictureTransformations.resize(): Resized picture to 1920x1280 in 5646 ms
```

It is safe to assume that in this case, disabling this particular action in the configuration would save 5s and bring the capture time closer to 15s, potentially allowing and increased capture rate.
