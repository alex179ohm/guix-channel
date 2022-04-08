;;; Copyright (C) 2022  Alessandro Cresto Miseroglio <alex179ohm@gmail.com>.
;;;
;;; This file is not part of GNU Guix.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-module (ohm packages bemenu)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xorg))


(define-public bemenu
  (package
    (name "bemenu")
    (version "0.6.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Cloudef/bemenu")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "18vplvnymgc6576sdh84lm5rlwyb9d038plqpjs638hzskf4q577"))))
    (build-system gnu-build-system)
    (arguments
     `(#:tests? #f
       #:make-flags (list ,(string-append "CC=" (cc-for-target))
                          "CFLAGS=-O2 -fPIC"
                          (string-append "LDFLAGS=-Wl,-rpath="
                                         (assoc-ref %outputs "out") "/lib")
                          (string-append "PREFIX=" (assoc-ref %outputs "out")))
       #:phases
       (modify-phases %standard-phases
     (inputs
     `(("cairo" ,cairo)
       ("libx11" ,libx11)
       ("libxkbcomon" ,libxkbcommon)
       ("libxinerama" ,libxinerama)
       ("ncurses" ,ncurses)
       ("pango" ,pango)
       ("wayland" ,wayland)
       ("wayland-protocols" ,wayland-protocols)))
        (delete 'configure))))         ; no configure script
    (native-inputs
     (list doxygen pkg-config))
    (home-page "https://github.com/Cloudef/bemenu")
    (synopsis "Dynamic menu library and client program inspired by dmenu")
    (description
     "bemenu is a dynamic menu which allows the user to flexibly select from a
list of options (usually programs to launch).  It renders the menu graphically
with X11 or Wayland, or in a text terminal with ncurses.")
    (license (list license:gpl3+ ; client program[s] and other sources
                   license:lgpl3+))))   ; library and bindings
