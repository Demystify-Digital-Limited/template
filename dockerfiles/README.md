## ./dockerfiles

This directory contains all the different dockerfiles for different types of Magento instances.
Image names are structured as the following:
`<PHP_VERSION>-<FEATURES>-<PROD>`

PHP_VERSION refers to the php version that the image uses
FEATURES is a list of features that the image has dependencies for.
PROD is a flag, if the image file ends in `-prod` then it is intended for use on production deployments.
