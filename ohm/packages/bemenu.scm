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
  #:use-module (gnu packages xdisorg))

(define-public bemenu-latest
  (package (inherit bemenu)
    (version "0.6.7")))
