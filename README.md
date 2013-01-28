# Xamarin Component Sample

To build this sample component:

```shell
# Download xpkg
curl -O https://dl.dropbox.com/u/217582/xamarin/component-store/xpkg.zip
mkdir xpkg
unzip -o -d xpkg xpkg.zip

# Create the component package
mono xpkg/xpkg.exe create awesome-1.0.xam \
    --name="My Awesome Component" \
    --summary="Add a huge amount of awesomeness to your Xamarin apps." \
    --publisher="Awesome Corp, Inc." \
    --website="http://awesomecorp.com/component" \
    --details="Details.md" \
    --license="License.md" \
    --getting-started="GettingStarted.md" \
    --icon="icons/Awesome_128x128.png" \
    --icon="icons/Awesome_512x512.png" \
    --library="ios":"libs/Awesome.iOS.dll" \
    --library="android":"libs/Awesome.Android.dll" \
    --sample="iOS Sample. Demonstrates Awesomeness on iOS.":"samples/Awesome.iOS.sln" \
    --sample="Android Sample. Demonstrates Awesomeness on Android":"samples/Awesome.Android.sln"
```
