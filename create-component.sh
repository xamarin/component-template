#!/bin/sh

# Download xpkg if we need to
if [ ! -d xpkg ]; then
	mkdir xpkg && pushd xpkg
	curl -LO https://dl.dropbox.com/u/217582/xpkg.zip
	unzip -o xpkg.zip
	popd
fi

# Edit these variables to parameterize your component:
ID=awesome-component
VERSION=1.0

# The xpkg.exe invocation that creates your package:
mono xpkg/xpkg.exe create $ID-$VERSION.xam\
	--name="My Awesome Component" \
	--summary="Add a huge amount of awesomeness to your Xamarin apps." \
	--publisher="Awesome Corp, Inc." \
	--website="http://awesomecorp.com/component" \
	--details="Details.md" \
	--license="License.md" \
	--getting-started="GettingStarted.md" \
	--icon="icons/Awesome_128x128.png" \
	--icon="icons/Awesome_512x512.png" \
	--library="ios":"bin/Awesome.iOS.dll" \
	--library="android":"bin/Awesome.Android.dll" \
	--sample="iOS Sample. Demonstrates Awesomeness on iOS.":"samples/Awesome.iOS.sln" \
	--sample="Android Sample. Demonstrates Awesomeness on Android":"samples/Awesome.Android.sln"
