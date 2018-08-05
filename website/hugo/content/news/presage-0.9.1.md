---
title:       "Presage 0.9.1 released"
type:        story
date:        2015-04-20
changed:     2015-04-21
draft:       false
promote:     false
sticky:      false
aliases:     [ node/59 ]
---

Presage 0.9.1 is now available for [download](/download/).

Presage 0.9.1 introduces a new offline learning API method. Active predictors in presage are capable of online learning (dynamic learning triggered by context changes - context-awareness enables presage to train predictors on changes in context dynamically). This new offline learning method provides a way to instruct presage to learn from a specific body of text, separate from the context. A corresponding ONLINE_LEARNING configuration variable has been added to control whether online learning is enabled or disabled for applications that require control over what is learnt. Moreover, learning performance has been improved by a factor of 10 in most scenarios.

Presage 0.9.1 provides a new Windows Communication Foundation service. Applications can now consume presage's predictive functionality by invoking on the WCF service process rather than directly linking to presage library. The presage WCF service application is automatically started at logon and displays a notification icon in the Windows system tray. The notification icon can be used to shutdown the presage WCF service or to display further information. The presage WCF service can only be consumed by the same user that started the service nd that is currently logged on the local system. The service uses the NetNamedPipeBinding binding/transport, "a secure, reliable, optimized binding that is suitable for on-machine communication between WCF applications".

<!--more-->

The presage predictive service endpoint is exposed at this address:

    net.pipe://localhost/PresageService/v1/presage

The presage Metadata Exchange endpoint is exposed at this address:

    net.pipe://localhost/PresageService/v1/mex

Presage 0.9.1 adds support for in-memory SQLite databases. Users wishing to store a temporary language model in memory can do so by using the started in-memory database filename designator ":memory:".

Presage 0.9.1 brings several fixes to Windows installer/uninstaller.

Presage 0.9.1 also includes other bug fixes and enhancements. Please see the ChangeLog for further details.
