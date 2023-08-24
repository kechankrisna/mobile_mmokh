# mobile_mmokh
used in order to work with android service in native call and use flutter framework to build the layout ui/ux

## app_links note
```sh
adb shell am start -a android.intent.action.VIEW \
  -d "mmokh://mobile/hello-world"
```
or 
```sh
adb shell am start -d mmokh://mobile/hello-world
```
REF: https://stackoverflow.com/questions/28802115/i-am-trying-to-test-android-deep-link-urls-through-adb-to-launch-my-app