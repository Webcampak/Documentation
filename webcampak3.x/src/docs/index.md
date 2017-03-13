# Welcome

Welcome on Webcampak documentation site.

This documentation is also available as a [PDF](http://doc.webcampak.com/webcampak3.x/web/en/PDF/User_Guide.pdf). 

## Overview

Webcampak is a time-lapse photography appliance aiming at assisting photographers in their long-term projects. Its main role is to capture, manipulate, store and transfer pictures over long periods of time while providing mechanisms to prevent picture loss.

## Content

This documentation is divided into 4 sections:

* __Learn__: What is Webcampak, its different features and technologies
* __Use__: Details day-to-day Webcampak features and tools
* __Configure__: Webcampak configuration
* __Develop__: How to install Webcampak from scratch, how to extend its features (for advanced users)
 
## About

Initially started as a hobbyist project in 2009, Webcampak progressively became a tool relied on by photographers for their long-term time-lapse. As such our focus during development has been on designing and progressively extending it to serve identified use cases.

Today Webcampak 2.x and Webcampak 3.x are used in production by our clients and partners in a wide set of use case. Do not hesitate to get in touch if you would like the product to be extended to cover additional use cases, we'll be happy to help.

## What is not Webcampak

It might be relevant to insist on what Webcampak is not, or what it was not designed to perform.

### Not a short term time-lapse solution

Although a possible use case, Webcampak has not been designed for short term projects. It requires more setup than a simple intervalometer, and will never be able to support high frequency (less than 5s) picture acquisition. 

Webcampak becomes a relevant solution for projects spanning for over a week and is probably one of the best solutions for projects spanning months or years.

### Not an end-to-end solution

Webcampak is designed to cover all use cases from initial capture to final production-quality videos. Its main role is to assist photographers and filmmakers in achieving their projects, not to replace them !

Although Webcampak can perform live picture manipulation and can generate videos automatically, those were implemented to cover use cases requested by our clients such as live view on external websites or simplified video preview. Video quality and post-processing features offered by Webcampak are far from being as advanced as professional video editing tools.

### Not a solar powered solution

Webcampak is currently not fully autonomous and does not cover solar-powered use cases supported by some of our competitors. 

When implementing solutions such as Webcampak, two design choices can be taken in terms of hardware specifications, by using:

* __Power-optimised electronic circuits (ARM CPUs in particular)__: Those systems have very low power requirements and can therefore be powered by solar panels. They usually rely on heavily customized versions of Linux and implement optimized sleep mechanisms to save on power usage. Running a very low power CPU, processing available on the device itself limits its manipulations capabilities.
* __Embedded x86 servers (using regular "low power" CPUs__: Those systems are basically scaled down and low-power version of regular CPUs. They give access to a very wide set of tools and cover many possible use cases. It also makes relatively easy to extend features. But they do consume more power than their ARM counterpart, making it a sub-obtimal choice for solar-powered setups.

For Webcampak, we selected the second option, and therefore deploying Webcampak in a fully autonomous solar-powered solution would likely be complex.

But Webcampak Cloud can interconnect with solar-powered setups, and if you are looking for Solar-powered systems we recommend you take a look at the [Cyclapse](http://cyclapse.com/) product developed by our friends at [Harbortronics](https://www.harbortronics.com/).

## More?

Want to learn more or participate? get in touch at contat_at_webcampak.com

_The website and PDF were last updated on: March, 12 2017_
