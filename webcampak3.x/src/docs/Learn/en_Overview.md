# Overview

## Webcampak or Webcampak Cloud

Our website mentions of __Webcampak__ and __Webcampak Cloud__, those two names refer to the same software but installed in a different context:

* __Webcampak__ is typically installed on low-power embedded computers is are directly attached to D-SLR cameras
* __Webcampak Cloud__ is typically installed in a datacentre on high-performance servers and is used as a central place to store and process pictures coming from different __Webcampak__ systems.

Having one since software greatly facilitates development (one codebase to maintain), but it also means a need for greater education and understanding from users, on the system's capabilities. 

For example, the software will not prevent users from initiating compute-intensive manipulations on a __Webcampak__ since it might make sense in some situations.

We don't have mechanisms in place to prevent a user from configuring a capture rate of 1 picture every 10s, requesting a 27-degree rotation of the picture on the fly. Even if we know this is likely to create difficulties in most situations, there might be some use cases for which this configuration is relevant, thus we don't prevent this configuration.

Webcampak try to be as verbose as possible, timing most of the lengthy events in log files available to users to assess performance. 

One of our recommendation, when discovering the system, is to start small and progressively add more and more complexity into the setup to evaluate the impact of configuration settings. 
 
Education and understanding of the implication of configuration settings are key for a good operation of the system.

## Capture devices (D-SLR or others)

Webcampak has been built to be as flexible as possible. Adding new types of capture devices into the software is relatively straight-forward for developers (us).

The most common use-case though is the use of D-SLR cameras, Webcampak picture acquisition process relies on [gPhoto2](http://www.gphoto.org/), you can find a list of known supported D-SLR cameras on [this page of their documentation](http://www.gphoto.org/doc/remote/) 

## Open Source

Webcampak is open source. Unless specified otherwise, most of its codebase is licensed under [GNU GPL v3](https://github.com/Webcampak/core/blob/develop/LICENSE). 

We are strong believers of the benefits of using and developing open source software, and welcome external contributions. 