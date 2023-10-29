# GMIceCream

## Overview

GMIceCream is an implementation of the [IceCream debug protocol](https://github.com/gruns/icecream) in GML. With just a simple call to the `ic` function, you can transparently insert debug messages anywhere in your code without ever losing track of where they came from.

## Requirements

- GameMaker Studio 2022 LTS or above.

## Installation

- Go to the [Releases Page](https://github.com/dicksonlaw583/GMIceCream/releases) to download the latest YYMPS package.
- In GameMaker Studio, select **Tools > Import Local Package**, and select the downloaded YYMPS package.
- Import everything in the package.
- (Optional) If needed, change the options in __ICECREAM_CONFIG__ to suit your project's needs.

## Quick Start

To print a debug message, call the `ic` function. This will print the location of the call and the value of its argument.

```gml
ic("Hello World!");
```

```
ic| gml_Room_rm_menu_Create:1: Hello World!
```

Alternatively, call `ic();` as-is to print the current location.

```gml
ic();
```

```
ic| gml_Room_rm_menu_Create:1
```

The `ic` function returns its own argument, so it can be slipped seamlessly into inline expressions.

```gml
vel_x = ic(choose(-move_speed, move_speed));
```

```
ic| gml_Object_obj_enemy_parent_Create_0:11: -2
```

## Configurations at Runtime

Aside from setting the options in `__ICECREAM_CONFIG__`, you can also set and get GMIceCream configurations dynamically at runtime. Call these functions without an argument to get, with an argument to set.

- `ic_enabled([enabled])`: Set or get whether GMIceCream is enabled.
- `ic_prefix([prefix])`: Set or get the prefix for GMIceCream debug messages.
- `ic_printer([printer])`: Set or get the function GMIceCream uses for printing messages.
- `ic_stringifier([stringifier])`: Set or get the function GMIceCream uses to turn its given values into strings.
- `ic_context([context])`: Set or get the current GMIceCream context function.

You can also use `ic_reset()` to reset the configurations back to the ones specified in `__ICECREAM_CONFIG__`.

## Technical Notes

- GMIceCream uses information from [`debug_get_callstack`](https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FDebugging%2Fdebug_get_callstack.htm) for obtaining context information. Its functionality and level of detail will vary by export.
