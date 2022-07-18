public with sharing class CTPersonController {
    public CTPersonController() { }

    public static String getToken(String mobile){
        //generate unique hash using md5 algorithm https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_classes_restful_crypto.htm
        Blob targetBlob = Blob.valueOf(mobile);
        Blob hash = Crypto.generateDigest('MD5', targetBlob);
        // Converts a Blob to an unencoded String representing its normal form. https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_classes_restful_encodingUtil.htm#apex_System_EncodingUtil_base64Encode
        return EncodingUtil.base64Encode(hash);
    }
}
