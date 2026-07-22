# Quality Gates Setup Guide

## Current Status

The project has the global xp-gate hooks configured via your `.gitconfig`:
- Pre-commit hooks: 6-type quality gates (format, static analysis, lint, test, coverage, complexity)
- Pre-push hooks: Code walkthrough validation
- Global adapter path: `D:\npm-global\node_modules\@boyingliu01\xp-gate\hooks`

However, the Flutter project currently has compilation errors that prevent quality gates from working:

1. **Missing Flutter dependencies**: The `flutter pub get` command needs to be run successfully
2. **Compilation errors**: Once dependencies are installed, there may be additional fixes needed

## Prerequisites Verification

### 1. Verify Flutter SDK Installation
```bash
flutter doctor
```
Ensure all checks pass, especially:
- Flutter SDK installed
- Dart SDK installed  
- Android toolchain configured (for Android development)

### 2. Install Project Dependencies
```bash
cd runner_app
flutter pub get
```

### 3. Verify Basic Compilation
```bash
# Should complete without errors
flutter analyze

# Should run all tests successfully  
flutter test

# Should generate coverage report
flutter test --coverage
```

## Quality Gate Configuration

### Analysis Options
The `analysis_options.yaml` has been configured with comprehensive lint rules including:
- Strict type safety (`strict-casts`, `strict-inference`, `strict-raw-types`)
- Immutability best practices (`prefer_const_constructors`, `prefer_final_fields`)
- Code quality rules (`avoid_redundant_argument_values`, `require_trailing_commas`)
- Error-level enforcement for critical issues (`unused_import`, `unused_local_variable`)

### Test Coverage
The project includes:
- 8 unit test files in `test/unit/`
- 1 widget test file in `test/`
- Total of ~49 individual tests

To enable coverage reporting, ensure the `coverage` package is activated:
```bash
dart pub global activate coverage
```

### XP-Gate Adapters
The global xp-gate installation includes Flutter/Dart adapters:
- `dart.sh`: Uses `dart analyze`, `dart format`, `dart test`
- `flutter.sh`: Uses `flutter analyze`, `flutter format`, `flutter test`

These adapters automatically detect whether to use Dart or Flutter commands based on project structure.

## Verification Steps

Once prerequisites are met, verify quality gates work:

### 1. Test Pre-commit Hook
```bash
# Make a small change to any file
echo "// test change" >> lib/main.dart

# Try to commit - should run all quality gates
git add lib/main.dart
git commit -m "test: quality gate verification"

# If successful, the commit should be created
# If failed, fix the reported issues and try again
```

### 2. Test Pre-push Hook  
```bash
# This will validate code walkthrough requirements
git push origin <your-branch>
```

### 3. Manual Quality Gate Execution
You can also run quality gates manually:
```bash
# Run all pre-commit gates
D:\npm-global\node_modules\@boyingliu01\xp-gate\hooks\pre-commit

# Run specific gates
dart analyze          # Static analysis
dart format --set-exit-if-changed .  # Format check  
dart test            # Unit tests
dart test --coverage # Test coverage
```

## Troubleshooting

### Common Issues

1. **Flutter commands timeout**: 
   - Check internet connection
   - Verify Flutter SDK path in system PATH
   - Try running `flutter pub get --verbose` for detailed logs

2. **Compilation errors after `flutter pub get`**:
   - Check that all domain entities are properly exported
   - Ensure relative imports are converted to package imports where needed
   - Verify that `lib/strength_app.dart` exports all public APIs

3. **Quality gates not triggering**:
   - Verify `.gitconfig` has `core.hooksPath` pointing to xp-gate hooks
   - Check that hooks are executable (on Windows, this is usually automatic)
   - Run `git config --global --get core.hooksPath` to confirm path

### Required Tools Checklist

- [ ] Flutter SDK installed and in PATH
- [ ] Dart SDK available (`dart --version`)  
- [ ] Coverage tool activated (`dart pub global activate coverage`)
- [ ] Git configured with xp-gate hooks (`git config --global core.hooksPath`)
- [ ] Project dependencies installed (`flutter pub get` successful)

## Next Steps

1. Complete the prerequisite verification steps above
2. Fix any compilation errors that arise
3. Test the quality gates with a small commit
4. Once working, the quality gates will automatically protect your codebase

The quality gate infrastructure is already in place - you just need to get the Flutter project into a compilable state for them to work effectively.