.class Lio/rong/imlib/statistics/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "objects"    # [Ljava/lang/String;

    .prologue
    .line 271
    :try_start_0
    array-length v3, p1

    if-lez v3, :cond_1

    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 273
    aget-object v1, p1, v0

    .line 274
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 275
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 276
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 284
    :cond_1
    return-void
.end method

.method static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const-string v1, "1.0"

    .line 190
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "Statistics"

    const-string v3, "No app version found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v0, ""

    .line 146
    .local v0, "carrier":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 147
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 151
    :cond_1
    const-string v0, ""

    .line 152
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const-string v2, "Statistics"

    const-string v3, "No carrier found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    return-object v0
.end method

.method static getDensity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v1, ""

    .line 107
    .local v1, "densityStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 108
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    .line 134
    :goto_0
    return-object v1

    .line 110
    :sswitch_0
    const-string v1, "LDPI"

    .line 111
    goto :goto_0

    .line 113
    :sswitch_1
    const-string v1, "MDPI"

    .line 114
    goto :goto_0

    .line 116
    :sswitch_2
    const-string v1, "TVDPI"

    .line 117
    goto :goto_0

    .line 119
    :sswitch_3
    const-string v1, "HDPI"

    .line 120
    goto :goto_0

    .line 122
    :sswitch_4
    const-string v1, "XHDPI"

    .line 123
    goto :goto_0

    .line 125
    :sswitch_5
    const-string v1, "XMHDPI"

    .line 126
    goto :goto_0

    .line 128
    :sswitch_6
    const-string v1, "XXHDPI"

    .line 129
    goto :goto_0

    .line 131
    :sswitch_7
    const-string v1, "XXXHDPI"

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x190 -> :sswitch_5
        0x1e0 -> :sswitch_6
        0x280 -> :sswitch_7
    .end sparse-switch
.end method

.method static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 179
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getMetrics(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v0, "json":Lorg/json/JSONObject;
    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "device"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getDevice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "osName"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getOS()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "osVersion"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "carrier"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "resolution"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "density"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getDensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "locale"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "appVersion"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "bundleId"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "sdkVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lio/rong/common/Build;->SDK_VERSION:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "network"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    invoke-static {p0}, Lio/rong/imlib/statistics/DeviceInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "timeZone"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "imei"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    invoke-static {p0}, Lio/rong/common/DeviceUtils;->getDeviceIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "imsi"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    invoke-static {p0}, Lio/rong/common/DeviceUtils;->getDeviceIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "mac"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    invoke-static {p0}, Lio/rong/common/DeviceUtils;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lio/rong/imlib/statistics/DeviceInfo;->fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const-string v2, "UNKNOWN"

    .line 161
    .local v2, "type":Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 164
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 166
    const-string v2, "WIFI"

    .line 171
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 167
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const-string v2, "MOBILE"

    goto :goto_0
.end method

.method static getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Android"

    return-object v0
.end method

.method static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v2, ""

    .line 85
    .local v2, "resolution":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 86
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 87
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v3

    .line 92
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "Statistics"

    const-string v6, "Device resolution cannot be determined"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const-string v1, ""

    .line 205
    .local v1, "result":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 214
    :cond_1
    const-string v1, ""

    .line 215
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "Statistics"

    const-string v3, "No store found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "Statistics"

    const-string v3, "Can\'t get Installer package"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
