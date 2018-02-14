#!/bin/bash

echo "PRODUCT_COPY_FILES += \\" > vndk.mk
for lib in $(ls vndk-26-arm32);do
	echo -e "\tvendor/vndk/vndk-26-arm32/$lib:system/lib/vndk-26/$lib \\" >> vndk.mk
done
for lib in $(ls vndk-26-arm64);do
	echo -e "\tvendor/vndk/vndk-26-arm64/$lib:system/lib64/vndk-26/$lib \\" >> vndk.mk
done
for lib in $(ls vndk-sp-26-arm32);do
	echo -e "\tvendor/vndk/vndk-sp-26-arm32/$lib:system/lib/vndk-sp-26/$lib \\" >> vndk.mk
done
for lib in $(ls vndk-sp-26-arm64);do
	echo -e "\tvendor/vndk/vndk-sp-26-arm64/$lib:system/lib64/vndk-sp-26/$lib \\" >> vndk.mk
done
echo >> vndk.mk
