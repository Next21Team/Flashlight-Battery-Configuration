# Flashlight Battery Configuration

_[English](README.md) | **Русский**_

AMX Mod X плагин для Counter-Strike.

Простой плагин, позволяющий настраивать скорость заряда/разряда фонарика. В игре полностью заряженная батарея соответствует 100 единицам. При включенном фонаре это значение понижается на единицу через определенный временной интервал и так же увеличивается при выключенном. То есть время полного разряда батареи можно вычислить по формуле: x * 100, где x – значение квара `n21_flashlight_drain`.

Например, при установленном значении 2.4 фонарик будет разряжаться в два раза медленнее: 240 секунд (4 минуты).

## Квары
- ```n21_flashlight_drain "1.2"``` Интервал разряда.
- ```n21_flashlight_charge "0.2"``` Интервал заряда.

## Требования
- [Reapi](https://github.com/s1lentq/reapi)

## Авторы
- **Oli Desu**
