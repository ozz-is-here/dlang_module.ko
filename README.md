# 🇺🇸 dlang_module.ko
A proof of concept of a Linux kernel module written in D

---

## Description

This is just a proof of concept of using D in Linux kernel space without modifying the Linux kernel code. According to that, there are some limitations:

* You can't use the kernel's macros (such as `printk`, `MODULE_LICENSE` ) directly from D, so you need to define them in a C file (and you still need to use C)
* You can call functions directly from D. Don't forget to define them in the beginning of the D file.
* Since this is a kernel module, you must use `-betterC`, you can't use D runtime (and TypeInfo, GC, OOP and 99% of almost all the features of the language)

Don't forget to check out this page: [Data Type Compatibility](https://dlang.org/spec/interfaceToC.html#data_type_compat)

Actually there is no use writing kernel module in D. I made it for fun. 

## Requirements

* [LDC](https://github.com/ldc-developers/ldc) (but you can use any D compiler, just edit the Makefile)

## Usage

```
make
sudo insmod dlang_module.ko
```

You should see in `dmesg` something like this:

```
[44975.753290] Hello, World!
```

And if you want to unload it:

```
sudo rmmod dlang_module
```

---

# 🇷🇺 dlang_module.ko

Проверка возможности написания модуля ядра Linux на D

---

## Описание

Этот модуль - просто проверка использования кода на D в пространстве ядра Linux без модификации кода самого ядра. Из-за этого есть несколько ограничений:

* Вы не можете использовать макросы ядра (такие как `printk`, `MODULE_LICENSE` ) напрямую из D, так что Вам нужно объявить их в файле C (и Вам всё ещё требуется использовать C)
* Вы можете вызывать функции напрямую из кода на D. Не забудьте объявить их в начале файла с кодом на D.
* Т.к. это модуль ядра, то Вы должны использовать `-betterC`. Из-за этого Вы не сможете использовать рантайм D (и TypeInfo, GC, ООП и почти все возможности языка D).

Не забудьте посетить эту страницу: [Data Type Compatibility](https://dlang.org/spec/interfaceToC.html#data_type_compat)

На самом деле смысла в написании модуля ядра на D нет. Я сделал это по приколу.

## Требования

* [LDC](https://github.com/ldc-developers/ldc) (но Вы можете использовать любой компилятор D, просто отредактируйте Makefile)

## Использование

```
make
sudo insmod dlang_module.ko
```

В `dmesg` вы должны увидеть что-то вроде этого:

```
[44975.753290] Hello, World!
```

И если захотите выгрузить модуль:

```
sudo rmmod dlang_module
```
