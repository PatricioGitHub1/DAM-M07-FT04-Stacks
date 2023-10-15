# Base Flutter Project for Cuppertino look and feel
Alumno: Patricio André Rojas Condori

## Getting Started, clone and create a project

For example to create a new GitHub project named FT04-Stacks

With a Flutter project named 'stacks'

``` bash
git clone https://github.com/optimisme/DAM-FlutterCupertinoBase
mv DAM-FlutterCupertinoBase FT04-Stacks
cd FT04-Stacks
mv cupertino_base stacks
git remote set-url origin https://github.com/GITHUB-USERNAME/FT04-Stacks.git
git push -u origin main

```

Ensure that 'pubspec.yaml' contains the correct project name

## Download and install dependencies

``` bash
cd stacks
flutter create --project-name stacks .
flutter pub get
flutter run
```
