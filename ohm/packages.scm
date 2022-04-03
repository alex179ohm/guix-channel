(define-module (ohm packages)
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
        (description "")
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
