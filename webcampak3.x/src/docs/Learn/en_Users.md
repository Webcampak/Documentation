# Users

Webcampak has an authentication and an authorization module providing both feature and source isolation.

## Password

Webcampak does not store clear-text user passwords, but a [salted hash of users passwords](https://en.wikipedia.org/wiki/Cryptographic_hash_function).

## Groups

Webcampak handles feature authorization on a group level. When configuring a group, users can select which features (view pictures, configure sources, run reports, etc...) are available for users in this group.
 
By default, Webcampak is provided with three groups:

* __View__: Access pictures and videos, no configuration
* __Configure__: Access pictures and videos, only configure sources (no access to system-level configuration)
* __Admin__: Access to all Webcampak features

Additional groups can easily be created.

## Sources Access

Source access is managed on a per user basis and is independent of feature access (managed through user groups). A user member of a "configuration group" and given permission to access sources A, B and C will be able to configure those three sources.

Webcampak does not support further granularity, for example, it is not possible for user Joe to have config permission on source A & C and view-only permission on source B. This use case has not been identified relevant in our use cases but nothing prevents an admin from creating multiple usernames to cover this use-case.

## Customers

Users can be attached to a "Customer", this configuration has very limited impact on Webcampak and is only used to identify user provenance and customise background colour and logo.





