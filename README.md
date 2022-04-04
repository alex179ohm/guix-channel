<div style="text-align:center;" align="center">

![Ohm Guix Channel logo](./files/ohm_channel_logo.png)

# Ohm Guix Channel

</div>

This is the Ohm's collection of [GNU Guix](https://guix.gnu.org/) package derivations.

For More informations on installing [GNU Guix](https://guix.gnu.org/) refers to the [GNU Guix Manual](https://guix.gnu.org/manual/en/html_node/Installation.html)

# Usage

## Guix Channel Configuration

The preferred way to install the channel is to configure Guix to use this channel as additional channel.
This add at your package collection the packages definited in this channel.

Create the channels configuration file at _~/.config/guix/channels.scm_ and then add the snippet below:

```scheme
(cons* (channel
        (name 'ohm)
        (url "https://gitlab.com/alex179ohm/guix-channel.git")
        (branch "main")
        (introduction
         (make-channel-introduction
          "6c5f2caa1c7cd8fe93f47bd7599154efd6d79cd0"
          (openpgp-fingerprint "4EFC 6361 A803 766C D3E0  A0CF 5527 5581 D13C CEE2"))))
       %default-channels)
```

If your channels file is already populated then just add the channel to your channels list:

```scheme
(cons* (channel
        (name 'flat)
        (url "https://github.com/flatwhatson/guix-channel.git")
        (introduction
         (make-channel-introduction
          "33f86a4b48205c0dc19d7c036c85393f0766f806"
          (openpgp-fingerprint
           "736A C00E 1254 378B A982  7AF6 9DBE 8265 81B6 4490"))))
       (channel
        (name 'ohm)
        (url "https://gitlab.com/alex179ohm/guix-channel.git")
        (branch "main")
        (introduction
         (make-channel-introduction
          "6c5f2caa1c7cd8fe93f47bd7599154efd6d79cd0"
          (openpgp-fingerprint "4EFC 6361 A803 766C D3E0  A0CF 5527 5581 D13C CEE2"))))
       %default-channels)
```

Pull and update your packages collection:

```sh
guix pull
guix install your_preferred_ohm_package
```
