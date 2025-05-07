### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=mcd Kernel for the Pixel 9/Pro/Fold/XL
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=caiman
device.name2=komodo
device.name3=tokay
device.name4=comet
supported.versions=15
supported.patchlevels=2024-12 - 2025-05
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
# boot install
BLOCK=boot;
IS_SLOT_DEVICE=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;

# vendor_kernel_boot install
BLOCK=vendor_kernel_boot;
IS_SLOT_DEVICE=1;
reset_ak;
split_boot;
flash_boot;

### end install
