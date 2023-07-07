# Unity-swiftui-example

This example includes the following two Build Targets

- WITH_Unity
- NON_Unity

By selecting the NON_Unity target, you can run the SwiftUI simulator or run it on the iOS simulator. However, UnityView will not be displayed.
Utilize the NON_Unity target when configuring UI with SwiftUI.

The WITH_Unity target has a custom flag `WITH_Unity` for both `Debug` and `Release`.

This can be used as follows

``` swift
#if WITH_Unity
// something you want to run WITH_Unity.
#else
// something you want to run outside of WITH_Unity.
#endif
```

Custom flags can be set in [Build Settings] > [Swift Compiler - Custom Flags].
