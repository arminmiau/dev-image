# dev-image &nbsp; [![bluebuild build badge](https://github.com/arminmiau/dev-image/actions/workflows/build.yml/badge.svg)](https://github.com/arminmiau/dev-image/actions/workflows/build.yml)

A custom [Universal Blue](https://universal-blue.org/) [Aurora](https://getaurora.dev) image with more dev tools like Rider and nodejs preinstalled.
OCI image built using [bluebuild](blue-build.org), ISO built using JasonN3’s [build-container-installer](https://github.com/JasonN3/build-container-installer).

## Installation using rpm-ostree rebase

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/arminmiau/dev-image:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arminmiau/dev-image:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

## ISO

Go to the [workflow](https://github.com/arminmiau/dev-image/actions/workflows/build.yml), click the latest passing build and download the artifact which contains a .iso file.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/arminmiau/dev-image
```
