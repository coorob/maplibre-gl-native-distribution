# maplibre-gl-native-distribution (Traska fork)

Custom **MapLibre Native** iOS Swift Package distribution for the Traska hiking app.

## `6.26.0-traska.1`

Upstream MapLibre Native **`ios-v6.26.0`** + a fix for the `PMTilesFileSource`
teardown **use-after-free** (`EXC_BAD_ACCESS` on the
`org.maplibre.mbgl.PMTilesFileSource` thread during map teardown/transitions).
The fix re-enables native `pmtiles://` range-reads on iOS, removing the need for a
per-tile proxy edge function and the cache/teardown guards that worked around the crash.

**Provenance**
- Source: [`coorob/maplibre-native`](https://github.com/coorob/maplibre-native) @
  `crashfix-6.26.0` (commit `9a74bb23`) — `ios-v6.26.0` + a hand-ported
  `pmtiles_file_source.cpp` fix (the upstream file was ~87% rewritten since the fix's
  original 6.19.1 base, so it could not be cherry-picked).
- Build: `bazel build //platform/ios:MapLibre.dynamic --//:renderer=metal --compilation_mode=opt --copt=-g --copt=-Oz --strip=never`
- Slices: `ios-arm64` (device) + `ios-arm64_x86_64-simulator`.
- The crash fix is being upstreamed to [`maplibre/maplibre-native`](https://github.com/maplibre/maplibre-native).

## Consumed by

`traska-native` via the `with-custom-maplibre-native` config plugin, which overrides the
`@maplibre/maplibre-react-native` bridge's SPM globals when these env vars are set:

```
MAPLIBRE_NATIVE_DIST_URL=https://github.com/coorob/maplibre-gl-native-distribution
MAPLIBRE_NATIVE_DIST_VERSION=6.26.0-traska.1
```
