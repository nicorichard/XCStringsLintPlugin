# XCStringsLintPlugin

Xcode & SPM plugins for [XCStringLint](https://github.com/nicorichard/xcstringslint). Pre-compiled, fast, and free from transitive dependency mismatches.

## Known Issue

Unfortunately, the plugin currently runs before strings are extracted from the source code. Even if the xcstrings files are specified as part of the buildTool's inputs.

Due to this issue, the plugin is not as useful as it could be. Added, removed, or modified strings will not be picked up by the tool until a _second_ build.

## Support

At the moment the plugin supports macOS only, due to the method used to pre-compile the tool's artifactbundle.