# Flashlight Battery Configuration

_**English** | [Русский](README.ru.md)_

AMX Mod X plugin for Counter-Strike.

A simple plugin that allows you to customize the charge/discharge rate of the flashlight. In the game, a fully charged battery corresponds to 100 units. When the lamp is on, this value decreases by one after a certain time interval and also increases when it is off. That is, the full discharge time of the battery can be calculated using the formula: x * 100, where x is the value of the `n21_flashlight_drain` cvar.

For example, if the value is set to 2.4, the flashlight will discharge at half the rate: 240 seconds (4 minutes).

## Cvars
- ```n21_flashlight_drain "1.2"``` Drain time interval.
- ```n21_flashlight_charge "0.2"``` Charge time interval.

## Requirements
- [Reapi](https://github.com/s1lentq/reapi)

## Authors
- **Oli Desu**
