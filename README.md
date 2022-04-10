<div style="text-align:center;" align="center">

![Ohm Guix Channel logo](./share/ohm_channel_logo.png)

# Ohm Guix Channel

</div>

## Table of Contents:

- [Introduction](#introduction)
- [Usage](#usage)
  - [Guix channel configuration](#guix-channel-configuration)
  - [From Source Code](#from-source-code)
- [List of Packages](#packages)
  - [Desktop](#desktop)

## Introduction

This is the Ohm's collection of [GNU Guix](https://guix.gnu.org/) package derivations packaged to be used by linux-based system users.

For More informations on installing [GNU Guix](https://guix.gnu.org/) refers to the [GNU Guix Manual](https://guix.gnu.org/manual/en/html_node/Binary-Installation.html)

## Usage

### Guix Channel Configuration

The preferred way to install the channel is to configure Guix to use this channel as additional channel.
This add at your package collection the packages definited in this channel.

Create the channels configuration file at **~/.config/guix/channels.scm** and then add the snippet below:

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

If your **~/.config/guix/channels.scm** file is already populated then just add the channel to your channels list:

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

### From Source Code

If you want to just install some packages provided by this channel clone the repository:

```sh
git clone https://gitlab.com/alex179ohm/guix-channel.git
```

Load the channel local path and install your preferred package:

```sh
guix install --load-path ./guix-channel your_preferred_ohm_package
```

## Packages

### Desktop

- bemenu 0.6.7 (latest) [website](https://github.com/Cloudef/bemenu)
  ```sh
  $ guix show bemenu
    name: bemenu
    version: 0.6.7
    outputs: out
    systems: x86_64-linux i686-linux
    dependencies: cairo@1.16.0 doxygen@1.9.1 libx11@1.7.3.1 libxinerama@1.1.4 libxkbcommon@1.3.0 ncurses@6.2.20210619 pango@1.48.10 pkg-config@0.29.2 wayland-protocols@1.23 wayland@1.19.0
    location: ohm/packages/bemenu.scm:32:2
    homepage: https://github.com/Cloudef/bemenu
    license: GPL 3+, LGPL 3+
    synopsis: Dynamic menu library and client program inspired by dmenu
    description: bemenu is a dynamic menu which allows the user to flexibly select from a list of options (usually programs to launch).  It renders the menu graphically with X11 or Wayland, or in a text terminal
    + with ncurses.
  ```
