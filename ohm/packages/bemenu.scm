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
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module (guix licenses)
  #:use-module (gnu packages gawk))

(define-public bemenu-0.6
  (package
    (name "bemenu")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://github.com/Cloudef/" name "/releases/download/" version "/" name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hpikx99g99hmnjp1jnx90sz9ckqc2hvafldlvh45xmhxfzgz0l9"))))
    (build-system gnu-build-system)
    (arguments '(#:configure-flags '("--enable-silent-rules")))
    (inputs `(("gawk" ,gawk)))
    (synopsis "Hello, GNU world: An example GNU package")
    (description "Guess what GNU Hello prints!")
    (home-page "https://www.gnu.org/software/hello/")
    (license gpl3+)))
