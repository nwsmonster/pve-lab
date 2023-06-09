# Decision Records

These are the records of design decisions for future reference in order to understand why things are the way they are. They are ever changing and evolving.

## What image to use for k3s nodes?

### Context

I want something stable, light, and comes with long-term support.

### Decision

Canonical sucks. Debian is fantastic, but I wanted to try something new. CentOS is dead. Fedora doesn't have an LTS release. I don't trust that Rocky won't end up like CentOS.

The winner is... [AlmaLinux Cloud](https://wiki.almalinux.org/cloud/Generic-cloud.html)!

### Consequences

I'm really unfamiliar with RHEL-style Linux, so debugging issues and finding solutions may be difficult.

> Note to self: this was a risky decision!

## Why Proxmox and why so much manual setup?

### Context

My hardware is old—so old that it can't boot UEFI and I can't be arsed to get PXE boot to work with BIOS. It's a skill I'd rather not learn since UEFI is now the standard. Also, I couldn't get WoL to work on my NICs.

### Decision

Use Proxmox VMs in place of PXE-booted baremetal servers. On the bright side, I guess I can just be lazy backup VMs.

### Consequences

It's really not easy to tear down / rebuild my infrastructure.
