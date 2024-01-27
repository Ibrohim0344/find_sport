package co.fella.find_sport

import android.app.Application

import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
    override fun onCreate() {
        super.onCreate()
//        MapKitFactory.setLocale("ru") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("1713cf24-6991-45ec-90a6-165ed98b1d42") // Your generated API key
    }
}