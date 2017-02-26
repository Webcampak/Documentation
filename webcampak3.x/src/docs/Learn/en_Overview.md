# Overview

## Webcampak or Webcampak Cloud

You probably have seen on our website mentions of __Webcampak__ and __Webcampak Cloud__, those two names refer to the same software but installed in a different context:

* __Webcampak__ is typically installed on low-power embedded computers and are directly attached to D-SLR cameras
* __Webcampak Cloud__ is typically installed in a datacentre on high performance servers and are used as a central place to store and process pitures coming from different __Webcampak__ systems.

But as mentioned above, we took early on the decision to only have one single software. It greatly facilitates development (one codebase to maintain), but it also means a need for greater education and understanding from users, on the system's capabilties. For example, nothing in the software will prevent users from starting compute intensive manipulations on a __Webcampak__ since it might make sense in some situations.

For example, we don't have mechanisms in place to prevent a user to configure a capture rate of 1 picture every 10s, requesting at 27 degree rotation of the picture on the fly. We know it's likely going to create difficulties in most situations, but maybe in this use case, webcampak is running on an extremely powerful computer with a high-speed data transfer camera. 

But webcampak try to be as verbose as possible on the impact of various settings, those are usually timed, logged and available to users to assess performance. One of our recommendation, when discovering the system, is to start small and progressively add more and more complexity into the setup to evaluate the impact of configuration settings. 
 
So education and understanding of the implication of using available settings is key for a good operation of the system.

## Capture devices (D-SLR or others)

Webcampak has been built to be as flexible as possible and adding new type of capture devices into the software should be relatively straight-forward for developers (us).

The most common use-case though is the use of D-SLR cameras, Webcampak capture acquisition process relies on [gPhoto2](http://www.gphoto.org/), you can find a list of known supported D-SLR cameras on [this page of their documentation](http://www.gphoto.org/doc/remote/) 

## Open Source

Webcampak is open source, unless specified otherwise, most of its codebase is licensed under [GNU GPL v3](https://github.com/Webcampak/core/blob/develop/LICENSE). 

We are strong believers of the benefits of using and developing open source software, and welcome external contributions. 