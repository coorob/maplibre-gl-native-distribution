# MapLibre Native — Traska distribution

A drop-in **Swift Package** distribution of [MapLibre Native](https://github.com/maplibre/maplibre-native)
for iOS, built with fixes for Traska's native PMTiles and terrain stack. Use it anywhere you'd use the
official [`maplibre-gl-native-distribution`](https://github.com/maplibre/maplibre-gl-native-distribution)
SwiftPM package — same product name (`MapLibre`), same public API.

> **Why this fork exists:** native `pmtiles://` on iOS could `EXC_BAD_ACCESS` during map
> teardown/transitions, and Traska needs native Metal terrain support while keeping direct CDN
> range reads for PMTiles. Once these fixes land in an official release, migrate back to the
> official distribution and retire this fork.

## Versions

| Tag | Base | Fix | Slices |
|-----|------|-----|--------|
| `6.26.0-traska.9` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`1b159841`](https://github.com/coorob/maplibre-native/commit/1b159841) | PMTiles fixes; native Metal 3D terrain with parent drape targets, padded overscan targets for fast camera movement, and a Metal draw-segment guard | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.8` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`1b159841`](https://github.com/coorob/maplibre-native/commit/1b159841) | Superseded by `.9`; this tag accidentally published the static XCFramework, which SwiftPM/Xcode rejected when embedding into Traska | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.7` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`4297d871`](https://github.com/coorob/maplibre-native/commit/4297d871) | PMTiles fixes; native Metal 3D terrain with adaptive streaming and parent drape targets for steadier texture while moving | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.6` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`78247a9a`](https://github.com/coorob/maplibre-native/commit/78247a9a) | PMTiles `FileSource` teardown use-after-free; native Metal 3D terrain with adaptive drape target streaming; empty PMTiles metadata responses fall back to header-derived TileJSON | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.5` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`78247a9a`](https://github.com/coorob/maplibre-native/commit/78247a9a) | Superseded by `.6` after the release asset URL was cached before upload completed | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.4` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`6a719c8c`](https://github.com/coorob/maplibre-native/commit/6a719c8c) | PMTiles `FileSource` teardown use-after-free; native Metal 3D terrain with adaptive drape target streaming | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.3` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`6a719c8c`](https://github.com/coorob/maplibre-native/commit/6a719c8c) | PMTiles `FileSource` teardown use-after-free; native Metal 3D terrain with adaptive drape target streaming | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.2` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) + Traska terrain work [`ebd7ad5b`](https://github.com/coorob/maplibre-native/commit/ebd7ad5b) | PMTiles `FileSource` teardown use-after-free; native Metal 3D terrain drape handoff | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |
| `6.26.0-traska.1` | MapLibre Native [`ios-v6.26.0`](https://github.com/maplibre/maplibre-native/releases/tag/ios-v6.26.0) | PMTiles `FileSource` teardown use-after-free | `ios-arm64` (device) + `ios-arm64_x86_64-simulator` |

## Use it

### Any iOS / Swift project (plain SwiftPM)

```swift
// Package.swift
dependencies: [
    .package(url: "https://github.com/coorob/maplibre-gl-native-distribution.git",
             exact: "6.26.0-traska.9"),
],
targets: [
    .target(name: "YourApp", dependencies: [
        .product(name: "MapLibre", package: "maplibre-gl-native-distribution"),
    ]),
]
```

Or in Xcode: **File ▸ Add Package Dependencies…**, paste the URL, choose **Exact Version**
`6.26.0-traska.9`. The repo is public, so SwiftPM downloads the framework anonymously — no auth.

### React Native / Expo app (`@maplibre/maplibre-react-native`)

The bridge pulls MapLibre via SwiftPM from a distribution repo. Override the two Ruby globals
its podspec reads (`$MLRN_SPM_SPEC` / `$MLRN_NATIVE_VERSION`) **before** `pod install` runs —
e.g. at the top of the generated `Podfile`:

```ruby
$MLRN_NATIVE_VERSION = "6.26.0-traska.9"
$MLRN_SPM_SPEC = {
  url: "https://github.com/coorob/maplibre-gl-native-distribution",
  requirement: { kind: "exactVersion", version: "6.26.0-traska.9" },
  product_name: "MapLibre",
}
```

(The Traska app injects this via the `with-custom-maplibre-native` Expo config plugin, gated on
`MAPLIBRE_NATIVE_DIST_URL` + `MAPLIBRE_NATIVE_DIST_VERSION` env vars.)

## What's fixed

`PMTilesFileSource` chains sub-requests per tile (header → directory → tile) on a worker thread,
storing each in a single `unique_ptr` slot keyed by the caller's request. Every hop **overwrote**
that slot, destroying the still-executing sub-request from inside its own completion callback — a
use-after-free that surfaced as `EXC_BAD_ACCESS` on the `org.maplibre.mbgl.PMTilesFileSource`
thread during teardown. The fix holds the chain in a `vector`, releases it together on
cancel/teardown (via `FileSourceRequest::onCancel`), and adds null/short-data guards.

Full diff, rationale, and regression tests:
**[coorob/maplibre-native @ `crashfix-6.26.0`](https://github.com/coorob/maplibre-native/tree/crashfix-6.26.0)**
→ [`TRASKA_PMTILES_FIX.md`](https://github.com/coorob/maplibre-native/blob/crashfix-6.26.0/TRASKA_PMTILES_FIX.md).

## Cut a new version

The framework is built from the source fork (recipe in `TRASKA_PMTILES_FIX.md`). In short:

```bash
# in the source-fork worktree, after `git submodule update --init --recursive vendor` + `npm install --ignore-scripts`:
bazel build //platform/ios:MapLibre.dynamic \
  --//:renderer=metal --compilation_mode=opt --copt=-g --copt=-Oz --strip=never
ZIP=bazel-bin/platform/ios/MapLibre.dynamic.xcframework.zip
swift package compute-checksum "$ZIP"                       # new checksum
gh release create 6.26.0-traska.9 "$ZIP" --repo coorob/maplibre-gl-native-distribution
# then bump url + checksum in Package.swift, commit, `git tag 6.26.0-traska.9`, push --tags
```

SwiftPM resolves `Package.swift` **at the git tag**, reads its `.binaryTarget` URL, downloads the
zip, and verifies the checksum — so the tag, the `Package.swift` at that tag, and the uploaded
release asset must all line up.

## Caveats

- **Unofficial.** A community fork build, not an official MapLibre release. No warranty.
- **Track upstream.** When the PMTiles fix merges into an official release, migrate back and delete this.
- **License:** MapLibre Native is BSD-2-Clause; this distribution inherits it.
