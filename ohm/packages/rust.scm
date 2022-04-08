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


(define-package (ohm packages rust)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix utils))

(define-public rust-aodv
    (package
        (name "rust-aodv")
        (version "0.1")
        (build-system cargo-build-system)
        (synopsis "aodv:  Ad Hoc Distance Vector based link Protocol")
        (description "Ad Hoc Distance Vector based link Protocol implemented in Rust programming language")
        (home-page "https://github.com/alex179ohm/aodv")
        (source (origin
                (method git-fetch)
                (uri (git-reference
                        (url "https://github.com/alex179ohm/aodv.git")
                        (commit "f21ccc6")
                        ))
                (sha256
                (base32
                "0gbp6imky8p8l1sq7arzgly680ryz251cbakdckic296jhidbmkk"))))
        (arguments
        `(#:cargo-inputs
        (("rust-bytes" ,rust-bytes-1)
            ("rust-socket2" ,rust-socket2-0.4))))
    (license (list license:expat license:asl2.0))))
