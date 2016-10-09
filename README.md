# browser-console

Dart implementation for native browser console functionality such as `console.log` or `console.trace`.

## Project goals

The goal of this project is to create Dart wrappers around native JS calls of `console`.

What exactly is going to be included can be read here: 
[Chrome console API reference](https://developers.google.com/web/tools/chrome-devtools/debug/console/console-reference?hl=en)

## Use

This package uses `reflectable` and thus it is necessary to modify `pubspec.yaml` to include

```
dependencies:
  reflectable: any
transformers:
- reflectable:
    entry_points:
      - test/*_test.dart
    formatted: true
```

For more information on [reflectable here](https://github.com/dart-lang/reflectable/tree/master/reflectable).