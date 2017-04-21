# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/andrewtoth/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# Rules from https://github.com/grandstaish/paperparcel
-dontwarn org.jetbrains.annotations.**
-keepclassmembers class nz.bradcampbell.paperparcel.PaperParcelMapping {
  static ** FROM_ORIGINAL;
  static ** FROM_PARCELABLE;
}

#ButterKnife
-keep class **$$ViewInjector { *; }
-keep class **$$ViewBinder { *; }
-keepnames class * { @butterknife.InjectView *;}

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
