#!/bin/bash

echo "PRODUCT_COPY_FILES += \\" > vndk32.mk
echo "PRODUCT_COPY_FILES += \\" > vndk64.mk
for lib in $(ls vndk-26-arm32);do
	echo -e "\tvendor/vndk/vndk-26-arm32/$lib:system/lib/vndk-26/$lib \\" >> vndk32.mk
done
for lib in $(cd vndk-sp-26-arm32;find -type f|sed -E 's;^\./;;g');do
	echo -e "\tvendor/vndk/vndk-sp-26-arm32/$lib:system/lib/vndk-sp-26/$lib \\" >> vndk32.mk
done
for lib in $(ls vndk-26-arm64);do
	echo -e "\tvendor/vndk/vndk-26-arm64/$lib:system/lib64/vndk-26/$lib \\" >> vndk64.mk
done
for lib in $(cd vndk-sp-26-arm64;find -type f|sed -E 's;^\./;;g');do
	echo -e "\tvendor/vndk/vndk-sp-26-arm64/$lib:system/lib64/vndk-sp-26/$lib \\" >> vndk64.mk
done
echo >> vndk32.mk
echo >> vndk64.mk
