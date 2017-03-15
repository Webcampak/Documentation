# Initial Setup

At the end of the installation script, go to the web interface of your Webcampak.

## Self-signed certificate

During installation, a [self-signed certificate](https://en.wikipedia.org/wiki/Self-signed_certificate) is created by the system.

Although self-signed certificates should definitely be a concern and are not recommended for publicly accessible Webcampak instances, they represent the only option when domain names cannot be used (for example a local webcampak).

Following initial setup, you will be presented with a security warning from your browser. For now, accept it, but you are strongly encouraged to reconfigure the system to use a signed certificate issued by a public CA such as [letsencrypt](https://letsencrypt.org/).

[![Self Signed certificate warning](images/webcampak-certificate.png "Self Signed certificate warning")](images/webcampak-certificate.png "Click to see the full image.")

You will then be presented with the default splash screen, select "Desktop" to begin the installation.

## Authentication

You will be presented with the authentication screen, default credentials are:
* __Username__: root
* __Password__: webcampak

[![Login](images/webcampak-login.png "Login")](images/webcampak-login.png "Click to see the full image.")

Since this will be the first connection, you will be offered to change your password.

[![Change Password](images/webcampak-login-change-password.png "Change Password")](images/webcampak-login-change-password.png "Click to see the full image.")

Please note that this is not enforced and the same password can be entered (although not recommended).

## System configuration

As-is, a few configuration settings must be modified for the system to be useable.

Click on the top-left menu, and navigate to "System Conf."

[![System Menu](images/webcampak-system-menu.png "System Menu")](images/webcampak-system-menu.png "Click to see the full image.")

You should then specify the following parameters:

* __Main Network Interface__: The network interface used by Webcampak for most of its communications, you can get it using ifconfig
* __Timezone__: The timezone of the geographical location where this Webcampak is installed. This can be different from the timezone used by its sources.

[![System Menu](images/webcampak-system-config.png "System Menu")](images/webcampak-system-config.png "Click to see the full image.")

Webcampak initial setup is complete, you can now start adding sources.

## Emails

In its current version (this will be modified in the future), Webcampak is using its Symfony API through its [Swift mailer](http://swiftmailer.org/) library to send emails.

Webcampak ships by default with our internal SMTP server. This server is (obviously) not reachable from the outside and users will need to manually change those settings to their own SMTP server (or even gmail).
 
This is a required step for Webcampak to be able to send emails.
 
More details can be found on [Symfony's website](http://symfony.com/doc/current/email.html)