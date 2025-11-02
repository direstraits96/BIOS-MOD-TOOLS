This README describes the Boot Logo Replacement process on TQ x86 modules with the H2OLRT™ Tool.

================================================================================
Prerequisites
================================================================================

- FAT formatted USB stick with at least 32 MB of free storage space
- Copy the Insyde Boot Logo Replacement Tool (H2OLRT-Sx64.efi), the new Boot Logo (example_picture.jpg) and the BIOS file (<BIOS_file.bin>) to the USB stick

    Example:
    <USB stick>
        |--- H2OLRT-Sx64.efi
        |--- TQMx60_70EB_5.12.09.53.15.bin
        |--- example_picture.jpg


================================================================================
Boot Logo Replacement
================================================================================

Attention: The EFI Shell uses US keyboard layout !


1. Connect the USB stick to an USB port
2. Power up the system
3. Follow the module specific instructions below:

--------------------------------
TQMx60EB / TQMx70EB / TQMx50UC /TQMx80UC :
--------------------------------

Logoindex = 4

4. Press <ESC> during startup to access the BIOS menu

7. Navigate into the EFI Shell (Boot Manager > Internal EFI Shell)

8. Navigate to the USB stick path by typing "fs0:".
   The enumeration of the USB stick can differ and depends on the number of connected mass storage devices and partitions.
   The content of the path can be checked with command "ls".

9. Launch Boot Logo Replacement with following command:

    H2OLRT-Sx64.efi –replogo:<SrcBIOSImageName> –logopath:<LogoImagePathName> -logoindex:<IndexNum> –logoconvert:<ConvertNum> –out:<OutBIOSImageName>

    Example:
    H2OLRT-Sx64.efi –replogo:TQMx60_70EB_5.12.09.53.15.bin –logopath:example_picture.jpg -logoindex:4 –logoconvert:1 –out:TQMx60_70EB_5.12.09.53.15_new.bin

10. Next step is to flash the customized BIOS Binary with the Insyde Firmware Flash Tool (H2OFFT-Sx64.efi)

--------------------------------
TQMxE39S / TQMxE39C1/2 / TQMxE39M :
--------------------------------

Logoindex = 1

4. Press <ESC> during startup to access the BIOS menu

7. Navigate into the EFI Shell (Boot Manager > Internal EFI Shell)

8. Navigate to the USB stick path by typing "fs0:".
   The enumeration of the USB stick can differ and depends on the number of connected mass storage devices and partitions.
   The content of the path can be checked with command "ls".

9. Launch Boot Logo Replacement with following command:

    H2OLRT-Sx64.efi –replogo:<SrcBIOSImageName> –logopath:<LogoImagePathName> -logoindex:<IndexNum> –logoconvert:<ConvertNum> –out:<OutBIOSImageName>

    Example:
    H2OLRT-Sx64.efi –replogo:TQMxE39C_5.12.30.21.08.bin –logopath:example_picture.jpg -logoindex:1 –logoconvert:1 –out:TQMxE39C_5.12.30.21.08_new.bin

10. Next step is to flash the customized BIOS Binary with the Insyde Firmware Flash Tool (H2OFFT-Sx64.efi)

--------------------------------
TQMxE38M / TQMxE38C :
--------------------------------

Logoindex = 0

4. Press <ESC> during startup to access the BIOS menu

7. Navigate into the EFI Shell (Boot Manager > Internal EFI Shell)

8. Navigate to the USB stick path by typing "fs0:".
   The enumeration of the USB stick can differ and depends on the number of connected mass storage devices and partitions.
   The content of the path can be checked with command "ls".

9. Launch Boot Logo Replacement with following command:

    H2OLRT-Sx64.efi –replogo:<SrcBIOSImageName> –logopath:<LogoImagePathName> -logoindex:<IndexNum> –logoconvert:<ConvertNum> –out:<OutBIOSImageName>

    Example:
    H2OLRT-Sx64.efi –replogo:TQMxE38M_5.4.48.0028.12_X64.bin  –logopath:example_picture.jpg -logoindex:0 –logoconvert:1 –out:TQMxE38M_5.4.48.0028.12_X64_new.bin

10. Next step is to flash the customized BIOS Binary with the Insyde Firmware Flash Tool (H2OFFT-Sx64.efi)
