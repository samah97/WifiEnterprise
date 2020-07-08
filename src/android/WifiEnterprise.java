package cordova-plugin-wifienterprise;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class WifiEnterprise extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if("connect".equals(action){
            this.connect(args, callbackContext);
            return true;
         }
        return false;
    }

    private void connect(JSONArray jsonArray, CallbackContext callbackContext){
        if(args != null){
            try{
                JSONObject jsonObject = jsonArray.getJSONObject(0);
                String ssid = jsonObject.getString("ssid");
                String password = jsonObject.getString("password");
                if(ssid == null || "".equals(ssid)){
                    callbackContext.error("Error: SSID empty");
                }
                if(password == null || "".equals(password)){
                    callbackContext.error("Error: Password empty");
                }

                callbackContext.success("Data Valid");
            }catch(Exception e){
                callbackContext.error("Error:"+e);
            }
        }else{
            callbackContext.error("Cannot pass null value");
        }
    }
}
