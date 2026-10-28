# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Keep line numbers for readable stack traces (mapping.txt is needed to retrace)
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

# Media3 UI internals accessed via reflection
# CustomDefaultTimeBar
-keepclassmembers class androidx.media3.ui.DefaultTimeBar {
    private android.graphics.Rect scrubberBar;
    private void startScrubbing(long);
}
# PlayerActivity
-keepclassmembers class androidx.media3.ui.PlayerControlView {
    private androidx.media3.ui.TrackNameProvider trackNameProvider;
}
