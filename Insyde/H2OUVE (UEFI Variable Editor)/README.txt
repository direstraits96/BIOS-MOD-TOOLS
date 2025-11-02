This README describes the process to set up default configurations and to change variables of the BIOS with the H2OUVE™ Tool.

================================================================================
Prerequisites
================================================================================
- FAT formatted USB stick with at least 32 MB of free storage space
- Copy the Insyde Variable Editor Tool (H2OUVE-Sx64.efi) and the BIOS file (<BIOS_file.bin>) to the USB stick

        Example:
        <USB-Stick>
            |--- H2OUVE-Sx64.efi
            |--- TQMx80UC_05.23.45.15.02.bin


1. Insert the prepared USB Stick to a Starterkit USB port
2. Boot up the system and navigate into the EFI Shell (Boot Manager > Internal EFI Shell)
3. Navigate to the USB stick path by typing "fs0:".
   The enumeration of the USB stick can differ and depends on the amount of connected mass storage devices and partitions.
   The content of the path can be checked with command "ls".
4. The following command examples show how to start the H2OUVE Tool.

Examples:
Print out help message:
Shell> H2OUVE-Sx64.efi -h

Print out BIOS supported functionalities:
Shell> H2OUVE-Sx64.efi -fea

Remove a variable by name:
Shell> H2OUVE-Sx64.efi -re -vn SioTqmx86Setup00

Dump variable information to a variable record file:
Shell> H2OUVE-Wx64.efi -gv testfile

Update variables from specified variable record file:
Shell> H2OUVE-Wx64.efi -sv testfile
