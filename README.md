# Keystore Explorer (Flatpak)

This Flatpak packages the latest upstream KeyStore Explorer release, currently v5.7.0. The release archive and SHA-256 are pinned in the manifest for reproducible builds.

## Build the Flatpak

Install Flatpak Builder and configure a user Flathub remote. If needed, run:

```sh
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

Then, from the repository root, run:

```sh
flatpak-builder --state-dir=/tmp/keystore-explorer-flatpak-state --user --install --force-clean --install-deps-from=flathub /tmp/keystore-explorer-flatpak-build io.github.dwbenjamin.KeystoreExplorer.yml
flatpak run io.github.dwbenjamin.KeystoreExplorer
```

The build uses the Freedesktop 25.08 runtime and OpenJDK 21 SDK extension to create a private JRE. The upstream release archive includes the application JAR, runtime libraries, icon, and licenses. The sandbox grants access to the home directory and network for opening keystore files and certificate lookups. Update the release URL, checksum, and AppStream version when packaging a newer release.