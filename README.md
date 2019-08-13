The **official HBCD team** is launching **[Hiren’s BootCD PE](https://www.hirensbootcd.org/)** for modern equipment, maybe this **Hiren-s-Boot-CD-reborn project will no longer be maintained**.

---

# Hiren-s-Boot-CD-reborn
Rebuilding Hiren's Boot CD Including updated programs, fixing bugs and improving. Also adding more tools

Hiren's BootCD (HBCD) is a completely free bootable CD that contains a load of useful tools you can make use of in a variety of situations like analyzing, recovering and fixing your computer even if the primary operating system can not be booted.

It is a great resource for anyone with computer problems who is having trouble accessing the internet to download programs in an attempt to fix it. It has a multitude of tools divided into a number of categories like partitioning tools, backup, recovery and BIOS/CMOS tools to name a few.

With some simple knowledge about what is contained on the CD, you can use it to repair many problems computer like hard drive failure, virus infections, partitioning, password recovery and data recovery.

We may call it as an emergency CD which every computer technician or home user must have.
---
## How to create iso

```bash
git clone --depth=1 --recursive https://github.com/HBCD/Hiren-s-Boot-CD-reborn.git
cd Hiren-s-Boot-CD-reborn
git pull --recurse-submodules
git submodule update --remote --recursive
```

### 1. Run Make ISO .. (grub4dos or isolinux)
![No Redeeemed Items](https://github.com/Wikel/Hiren-s-Boot-CD-reborn/blob/master/img/screenshot-1.png)

### 2. Ready
> MyHBCD.iso

```
Customize iso with HDCDCustomizer.exe (CD\HBCD\Programs\)
```
---
## More detailed information check the [WIKI](https://github.com/HBCD/Hiren-s-Boot-CD-reborn/wiki) 
### How to?
* [How to create iso](https://github.com/HBCD/Hiren-s-Boot-CD-reborn/wiki/How-to-create-iso)

> collaborate with the project

* [How to update software](https://github.com/HBCD/Hiren-s-Boot-CD-reborn/wiki/Update-new-program)
* [How to add new software](https://github.com/HBCD/Hiren-s-Boot-CD-reborn/wiki/Add-software)
 
Tools added in [**Tool structure**](https://github.com/Wikel/Hiren-s-Boot-CD-reborn/projects/1)
