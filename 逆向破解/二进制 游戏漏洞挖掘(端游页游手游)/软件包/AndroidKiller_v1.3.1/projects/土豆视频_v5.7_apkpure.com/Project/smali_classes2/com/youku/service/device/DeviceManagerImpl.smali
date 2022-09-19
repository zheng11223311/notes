.class public Lcom/youku/service/device/DeviceManagerImpl;
.super Lcom/youku/service/device/DeviceManager;
.source "DeviceManagerImpl.java"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/service/device/DeviceManager;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private getDisplayInfo()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 112
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    .line 113
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/youku/vo/DeviceInfo;->HEIGHT:I

    .line 114
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/youku/vo/DeviceInfo;->DENSITY:F

    .line 115
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    sput v1, Lcom/youku/vo/DeviceInfo;->DENSITYDPI:F

    .line 117
    const-string v1, "lelouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "density :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "densityDpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static getHostIp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 264
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 266
    .local v2, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 267
    .local v3, "ipAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 269
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 277
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "intf":Ljava/net/NetworkInterface;
    .end local v3    # "ipAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_0
    return-object v4

    .line 275
    :catch_0
    move-exception v4

    .line 277
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 274
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getTelephonyManagerInfo()V
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 77
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->DEVICEID:Ljava/lang/String;

    .line 79
    const-string v2, "active_time"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->ACTIVE_TIME:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->MOBILE:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->IMEI:Ljava/lang/String;

    .line 83
    const-string v2, ""

    sput-object v2, Lcom/youku/vo/DeviceInfo;->IMSI:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->OPERATOR:Ljava/lang/String;

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 94
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->MAC:Ljava/lang/String;

    .line 98
    :cond_1
    sget-object v2, Lcom/youku/vo/DeviceInfo;->IMEI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MAC:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 105
    :cond_2
    :goto_1
    const-string v2, "guid"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 106
    return-void

    .line 89
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v2, ""

    sput-object v2, Lcom/youku/vo/DeviceInfo;->OPERATOR:Ljava/lang/String;

    goto :goto_0

    .line 103
    .restart local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_4
    invoke-direct {p0}, Lcom/youku/service/device/DeviceManagerImpl;->getUUID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->UUID:Ljava/lang/String;

    goto :goto_1
.end method

.method private getUUID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 123
    :try_start_0
    iget-object v6, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 125
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "tmDevice":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "tmSerial":Ljava/lang/String;
    iget-object v6, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "androidId":Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 132
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 135
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceUuid":Ljava/util/UUID;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "tmDevice":Ljava/lang/String;
    .end local v5    # "tmSerial":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Youku"

    const-string v7, "Youku#getMyUUID()"

    invoke-static {v6, v7, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public getCpuInfo()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 226
    const-string v7, "/proc/cpuinfo"

    .line 227
    .local v7, "str1":Ljava/lang/String;
    const-string v8, ""

    .line 228
    .local v8, "str2":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v1, v11

    const-string v9, ""

    aput-object v9, v1, v10

    .line 231
    .local v1, "cpuInfo":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v5, v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 233
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 234
    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_0

    .line 236
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 242
    const-string v9, "FeedbackPlayerError"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FeedbackPlayerError.getCpuInfo(),"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v9, "BogoMIPS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 245
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "s":Ljava/lang/String;
    const/4 v9, 0x1

    aput-object v6, v1, v9

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MHz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/youku/vo/DeviceInfo;->CPU:Ljava/lang/String;

    .line 251
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "i":I
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cpuinfo==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/youku/vo/DeviceInfo;->CPU:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 258
    return-object v1

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "FeedbackPlayerError"

    const-string v10, "FeedbackPlayerError.getCpuInfo()"

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "FeedbackPlayerError"

    const-string v10, "FeedbackPlayerError.getCpuInfo()"

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNetworkInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/youku/service/device/DeviceManagerImpl;->c:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 144
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 146
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 147
    const-string v2, ""

    sput-object v2, Lcom/youku/vo/DeviceInfo;->NETWORKTYPE:Ljava/lang/String;

    .line 148
    const-string v2, ""

    sput-object v2, Lcom/youku/vo/DeviceInfo;->NETWORKINFO:Ljava/lang/String;

    .line 149
    const-string v2, ""

    .line 157
    :goto_0
    return-object v2

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->NETWORKTYPE:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->NETWORKINFO:Ljava/lang/String;

    .line 154
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 157
    :cond_1
    sget-object v2, Lcom/youku/vo/DeviceInfo;->NETWORKINFO:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRomMemroy()[J
    .locals 14

    .prologue
    .line 162
    const/4 v7, 0x2

    new-array v5, v7, [J

    .line 163
    .local v5, "romInfo":[J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 164
    .local v4, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 166
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 167
    .local v0, "availableBlocks":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v8, v7

    .line 169
    .local v8, "totalBlocks":J
    const/4 v7, 0x1

    mul-long v10, v2, v0

    aput-wide v10, v5, v7

    .line 171
    const/4 v7, 0x0

    mul-long v10, v8, v2

    aput-wide v10, v5, v7

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "KB"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/youku/vo/DeviceInfo;->ROM_TOTAL:Ljava/lang/String;

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "KB"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/youku/vo/DeviceInfo;->ROM_FREE:Ljava/lang/String;

    .line 174
    return-object v5
.end method

.method public getSDCardInfo()[J
    .locals 16

    .prologue
    .line 207
    const/4 v10, 0x2

    new-array v6, v10, [J

    .line 208
    .local v6, "sdCardInfo":[J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "state":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 211
    .local v7, "sdcardDir":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 212
    .local v8, "sf":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 213
    .local v4, "bSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v2, v10

    .line 214
    .local v2, "bCount":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 216
    .local v0, "availBlocks":J
    const/4 v10, 0x0

    mul-long v12, v4, v2

    aput-wide v12, v6, v10

    .line 217
    const/4 v10, 0x1

    mul-long v12, v4, v0

    aput-wide v12, v6, v10

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-wide v12, v6, v11

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/youku/vo/DeviceInfo;->SDCARD_TOTAL:Ljava/lang/String;

    .line 219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-wide v12, v6, v11

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/youku/vo/DeviceInfo;->SDCARD_FREE:Ljava/lang/String;

    .line 221
    .end local v0    # "availBlocks":J
    .end local v2    # "bCount":J
    .end local v4    # "bSize":J
    .end local v7    # "sdcardDir":Ljava/io/File;
    .end local v8    # "sf":Landroid/os/StatFs;
    :cond_0
    return-object v6
.end method

.method public getTotalMemory()V
    .locals 9

    .prologue
    .line 179
    const-string v4, "/proc/meminfo"

    .line 180
    .local v4, "str1":Ljava/lang/String;
    const-string v5, ""

    .line 184
    .local v5, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v0, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 186
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x2

    .line 187
    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 188
    const-string v6, "MemTotal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/youku/vo/DeviceInfo;->MEM_TOTAL:Ljava/lang/String;

    .line 190
    add-int/lit8 v3, v3, -0x1

    .line 192
    :cond_0
    const-string v6, "MemFree"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/youku/vo/DeviceInfo;->MEM_FREE:Ljava/lang/String;

    .line 194
    add-int/lit8 v3, v3, -0x1

    .line 196
    :cond_1
    const-string v6, "Youku"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 198
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "Youku.getTotalMemory()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    return-void

    .line 200
    :catch_1
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Youku.getTotalMemory()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public init()V
    .locals 3

    .prologue
    .line 50
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/vo/DeviceInfo;->MANUFACTURER:Ljava/lang/String;

    .line 51
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/util/Util;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/vo/DeviceInfo;->BRAND:Ljava/lang/String;

    .line 52
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/util/Util;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/util/Util;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/vo/DeviceInfo;->OS:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/youku/service/device/DeviceManagerImpl;->getTelephonyManagerInfo()V

    .line 56
    invoke-direct {p0}, Lcom/youku/service/device/DeviceManagerImpl;->getDisplayInfo()V

    .line 57
    invoke-virtual {p0}, Lcom/youku/service/device/DeviceManagerImpl;->getNetworkInfo()Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/youku/service/device/DeviceManagerImpl;->getHostIp()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "hostIp":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    const-string v1, "192.168.1.101"

    sput-object v1, Lcom/youku/vo/DeviceInfo;->HOST_IP:Ljava/lang/String;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    sput-object v0, Lcom/youku/vo/DeviceInfo;->HOST_IP:Ljava/lang/String;

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/youku/service/device/DeviceManagerImpl;->init()V

    .line 70
    return-void
.end method
