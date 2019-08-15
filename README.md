# FragileOS

![](https://img.shields.io/badge/language-C-green.svg)
![](https://img.shields.io/badge/category-learning-blue.svg)
[![](https://img.shields.io/badge/blog-@dejavudwh-red.svg)](https://dejavudwh.cn/)
![](http://progressed.io/bar/100?title=done)

> A crude operating system as a learning project, the prototype from harib

# The development environment

- GCC 8.1.0
- NASM 2.07
- objconv
- VirtualBox 6.0.1

# What was accomplished

- Simple graphical interface
- Simple Memory management
- Simple process management
- Provides the API *(Character input and output, file operation, window painting, timer)*
- Fat12-based file system
- A console and some startup commands
- A small game program

# Build

1. Compile Java files
```
> cd simulationfloppy

> javac Loader.java

> javac LinkAssembly
```

2. make

```
make -B
```

# Console command
### 1. start console
```
shift + w
```

### 2. Exit command line
```
exit
```
Or just turn it off

### 2. Flush the output
```
cls
```

### 3. View available memory
```
mem
```

### 4. Start a kaleidoscope program
```
ncst circle
```

### 5. Start a game that comes with the system
```
ncst alienwar
```

# Coding records
> Waiting for the update