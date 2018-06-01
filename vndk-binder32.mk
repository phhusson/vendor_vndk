PRODUCT_COPY_FILES += \
	vendor/vndk/vndk-26-arm32-binder32/libbinder.so:system/lib/vndk-26/libbinder.so \
	vendor/vndk/vndk-26-arm32-binder32/libhwbinder.so:system/lib/vndk-sp-26/libhwbinder.so

$(call inherit-product, vendor/vndk/vndk32.mk)
