.class public Lcom/mobisage/android/MobiSageDeviceInfo;
.super Ljava/lang/Object;
.source "MobiSageDeviceInfo.java"


# static fields
.field public static androidID:Ljava/lang/String;

.field private static carrierInfo:Ljava/lang/String;

.field public static density:F

.field public static densityDpi:I

.field public static deviceID:Ljava/lang/String;

.field public static imei:Ljava/lang/String;

.field private static isInited:Z

.field public static mac:Ljava/lang/String;

.field public static odin:Ljava/lang/String;

.field public static screenHeight:I

.field public static screenResolution:Ljava/lang/String;

.field public static screenWidth:I

.field public static simSerialNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->deviceID:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenResolution:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->androidID:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->simSerialNum:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->odin:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->mac:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobisage/android/MobiSageDeviceInfo;->isInited:Z

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static analysisMCCMNCInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 206
    sget-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    sget-object v3, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_1

    .line 207
    :cond_0
    const-string v2, "na"

    .line 221
    .local v0, "mcc":I
    .local v1, "mnc":I
    :goto_0
    return-object v2

    .line 208
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    :cond_1
    sget-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .restart local v0    # "mcc":I
    sget-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    .restart local v1    # "mnc":I
    const/16 v2, 0x1cc

    if-eq v0, v2, :cond_2

    .line 212
    sget-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 214
    :cond_3
    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8"

    sput-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    .line 221
    :cond_4
    :goto_1
    sget-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_5
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 216
    :cond_6
    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    sput-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_1

    .line 217
    :cond_7
    if-eq v1, v4, :cond_8

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 218
    :cond_8
    const-string/jumbo v2, "\u4e2d\u56fd\u7535\u4fe1"

    sput-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_1

    .line 219
    :cond_9
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 220
    const-string/jumbo v2, "\u4e2d\u56fd\u536b\u661f\u5168\u7403\u7f51\u7edc"

    sput-object v2, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_1
.end method

.method public static final getCarrierInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 186
    sget-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    .line 200
    :goto_0
    return-object v1

    .line 188
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    .line 197
    :cond_1
    :goto_1
    invoke-static {}, Lcom/mobisage/android/MobiSageDeviceInfo;->analysisMCCMNCInfo()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    .line 200
    :goto_2
    sget-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_1

    .line 199
    :cond_3
    const-string v1, "na"

    sput-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->carrierInfo:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getIP()Ljava/lang/String;
    .locals 6

    .prologue
    .line 230
    const/4 v4, 0x0

    .line 232
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 233
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 235
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 236
    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 238
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v2, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 240
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 244
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 251
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :cond_3
    :goto_0
    return-object v4

    .line 248
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static final getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 52
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 54
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/mobisage/android/MobiSageDeviceInfo;->mac:Ljava/lang/String;

    goto :goto_0
.end method

.method static getNetWorkState(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 129
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v3

    .line 132
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 135
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "type":Ljava/lang/String;
    const-string v4, "WIFI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const/4 v3, 0x1

    goto :goto_0

    .line 139
    :cond_2
    const-string v4, "MOBILE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-static {p0}, Lcom/mobisage/android/MobiSageDeviceInfo;->isFastMobileNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static getNetworkStateName(I)Ljava/lang/String;
    .locals 1
    .param p0, "networkState"    # I

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 160
    const-string v0, "NS_NA"

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    const-string v0, "NS_NA"

    goto :goto_0

    .line 154
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v0, "2G"

    goto :goto_0

    .line 158
    :pswitch_3
    const-string v0, "3G"

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static final initDeviceID(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 62
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mobisage/android/MobiSageDeviceInfo;->simSerialNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->simSerialNum:Ljava/lang/String;

    .line 67
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mobisage/android/MobiSageDeviceInfo;->androidID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->androidID:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/UUID;

    sget-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->androidID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    sget-object v8, Lcom/mobisage/android/MobiSageDeviceInfo;->simSerialNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 72
    .local v0, "deviceUUID":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->deviceID:Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lcom/mobisage/android/ODIN;->getODIN1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->odin:Ljava/lang/String;

    .line 77
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 79
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 80
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mobisage/android/MobiSageDeviceInfo;->mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->mac:Ljava/lang/String;

    .line 83
    :cond_1
    return-void
.end method

.method public static initMobiSageDeviceInfo(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-boolean v0, Lcom/mobisage/android/MobiSageDeviceInfo;->isInited:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobisage/android/MobiSageDeviceInfo;->isInited:Z

    .line 43
    invoke-static {p0}, Lcom/mobisage/android/MobiSageDeviceInfo;->initDeviceID(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/mobisage/android/MobiSageDeviceInfo;->initScreenResolution(Landroid/content/Context;)V

    .line 46
    :cond_0
    return-void
.end method

.method static final initScreenResolution(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 166
    .local v3, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    .line 169
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v4, Lcom/mobisage/android/MobiSageDeviceInfo;->densityDpi:I

    .line 170
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 171
    .local v2, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 172
    .local v1, "height":I
    if-le v2, v1, :cond_0

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->screenResolution:Ljava/lang/String;

    .line 174
    sput v1, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    .line 175
    sput v2, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mobisage/android/MobiSageDeviceInfo;->screenResolution:Ljava/lang/String;

    .line 178
    sput v2, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    .line 179
    sput v1, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    goto :goto_0
.end method

.method static isFastMobileNetwork(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 88
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 96
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 98
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 102
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 104
    goto :goto_0

    :pswitch_5
    move v1, v2

    .line 106
    goto :goto_0

    :pswitch_6
    move v1, v2

    .line 108
    goto :goto_0

    :pswitch_7
    move v1, v2

    .line 110
    goto :goto_0

    :pswitch_8
    move v1, v2

    .line 112
    goto :goto_0

    :pswitch_9
    move v1, v2

    .line 114
    goto :goto_0

    :pswitch_a
    move v1, v2

    .line 118
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
