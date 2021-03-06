# System

The system configuration screen can be accessed by clicking on "Webcampak > Configuration > System Conf.".

[![System Configuration Menu](images/desktop.menu.configuration.system.en.png "System Configuration Menu")](images/desktop.menu.configuration.system.en.png "Click to see the full image.")

It is used for general and non-source-specific settings. 

[![System Configuration](images/desktop.system.en.png "System Configuration")](images/desktop.system.en.png "Click to see the full image.")

## General

### Network

* __Main network interface__: A webcam can operate with multiple active network interface, this setting is used to specify which one should be used to collect statistics. This is typically the Internet-connected interface.
* __Number of Xfer transfer threads__: Define the number of [transfer queues](../Use/en_Xfer_Reports.md). This number depends on of the number of CPU cores and RAM available on the Webcampak. A higher number means more files can be transferred to various remote locations, but this also implies a greater amount resources being used.
* __Maximum number of files in each Xfer thread__: Each queue will be provisioned regularly with a specific number of jobs. This number should be set depending on bandwidth availability and Webcampak hardware performance. 

### Timezone

The local timezone of the Webcampak server.

### Gphoto

Those 2 settings are only used when Webcampak is physically connected to multiple USB D-SLR cameras in order to understand how to differentiate those multiple cameras and identify their USB port.

### Global FTP Account (resources)

Webcampak is equipped with an FTP account giving access to Webcampak resources directory containing items such Webcampak database, logs, configuration files, queues, shared watermark, etc...

This directory does not provide access to sources.

### Phidgets

Enable or not Phidgets board globally.

### Statistics

Enable or not statistics collection

## Reboot

This screen can also be used to trigger a Webcampak reboot.
