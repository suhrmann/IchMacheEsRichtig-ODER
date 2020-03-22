package org.wirvsvirushackathon.karlorona;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Bundle;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static String resourceToUriString(Context context, int resId) {
        return
                ContentResolver.SCHEME_ANDROID_RESOURCE
                        + "://"
                        + context.getResources().getResourcePackageName(resId)
                        + "/"
                        + context.getResources().getResourceTypeName(resId)
                        + "/"
                        + context.getResources().getResourceEntryName(resId);
    }

    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor(), "crossingthestreams.io/resourceResolver").setMethodCallHandler(
                (call, result) -> {
                    if ("drawableToUri".equals(call.method)) {
                        int resourceId = MainActivity.this.getResources().getIdentifier((String) call.arguments, "drawable", MainActivity.this.getPackageName());
                        String uriString = resourceToUriString(MainActivity.this.getApplicationContext(), resourceId);
                        result.success(uriString);
                    }
                });
    }
}
