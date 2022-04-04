package id.artaku.mobile

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.plugin.common.MethodChannel
import android.util.Log
import net.lintasarta.solution.module.video_call.utils.*


class MainActivity: FlutterFragmentActivity() {
    private val CHANNEL = "net.lintasarta.solution/ekyc"
    lateinit var result: MethodChannel.Result
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine){
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,CHANNEL).setMethodCallHandler {
            // Note: this method is invoked on the main thread.
            call, result ->
            // Get argument from flutter invoke method
            val apikey: String = call.argument("apiKey") ?: "RUnwutNHuA790LaHrHoVs2hIaU4z088R"
            val nik: String = call.argument("nik") ?: "0000000000000000"
            val name: String = call.argument("name") ?: "name"
            val placeOfBirth: String = call.argument("placeOfBirth") ?: "placeOfBirth"
            val dateOfBirth: String = call.argument("dateOfBirth") ?: "1991-01-01"
            val sex: Int = call.argument("sex") ?: 0
            val address: String = call.argument("address") ?: "address"
            val religion: String = call.argument("religion") ?: "islam"
            val maritalStatus: String = call.argument("maritalStatus") ?: "kawin"
            val occupationId: Int = call.argument("job") ?: 1
            val destination: String = call.argument("destination") ?: "id.artaku.mobile.MainActivity"
            this.result = result
            when (call.method) {
                "startVideoCall" -> {
                    startVideoCall(apikey, nik, name, placeOfBirth,
                    dateOfBirth, sex, address, religion,
                    maritalStatus, occupationId,
                    //activity package tujuan setelah video call selesai
                    destination
                    ) { error ->
                        result.error("SDK", "Error start videocall", error)
                    }
                }
                "getVideoCallStatus" -> {
                    getVidCallStatus {
                        when (it) {
                            STATUS_NOT_START -> {
                                this.result.success("not start yet")
                            }
                            STATUS_DONE_VERIFIED -> {
                                this.result.success("done verified")
                            }
                            STATUS_DONE_NOT_VERIFIED -> {
                                this.result.success("done not verified")
                            }
                            STATUS_MISS_CALL -> {
                                this.result.success("miss call")
                            }
                            STATUS_ON_CALL -> {
                                this.result.success("on call")
                            }
                        }
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }
}
