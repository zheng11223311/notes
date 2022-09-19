.class public Lcn/com/mma/mobile/tracking/api/Countly;
.super Ljava/lang/Object;
.source "Countly.java"


# static fields
.field public static ERRORCOUNT:I = 0x0

.field public static LOG:Z = false

.field public static OFFLINECACHE_LENGTH:I = 0x0

.field public static OFFLINECACHE_QUEUEEXPIRATIONSECS:I = 0x0

.field public static OFFLINECACHE_TIMEOUT:I = 0x0

.field public static SENDIMMEDIATELY:Z = false

.field public static final TAG:Ljava/lang/String; = "cn/com/mma/mobile/tracking/api/Countly"

.field public static final TRACKING_ANDROIDID:Ljava/lang/String; = "ANDROIDID"

.field public static final TRACKING_IMEI:Ljava/lang/String; = "IMEI"

.field public static final TRACKING_KEY:Ljava/lang/String; = "AKEY"

.field public static final TRACKING_LOCATION:Ljava/lang/String; = "LBS"

.field public static final TRACKING_MAC:Ljava/lang/String; = "MAC"

.field public static final TRACKING_MUDS:Ljava/lang/String; = "MUDS"

.field public static final TRACKING_MUID:Ljava/lang/String; = "MUID"

.field public static final TRACKING_NAME:Ljava/lang/String; = "ANAME"

.field public static final TRACKING_ODIN:Ljava/lang/String; = "ODIN"

.field public static final TRACKING_OPENUDID:Ljava/lang/String; = "OPENUDID"

.field public static final TRACKING_OS:Ljava/lang/String; = "OS"

.field public static final TRACKING_OS_VERION:Ljava/lang/String; = "OSVS"

.field public static final TRACKING_REDIRECTURL:Ljava/lang/String; = "REDIRECTURL"

.field public static final TRACKING_SCWH:Ljava/lang/String; = "SCWH"

.field public static final TRACKING_TERM:Ljava/lang/String; = "TERM"

.field public static final TRACKING_TIMESTAMP:Ljava/lang/String; = "TS"

.field public static final TRACKING_URL:Ljava/lang/String; = "URL"

.field public static final TRACKING_WIFI:Ljava/lang/String; = "WIFI"

.field public static TTCOUNT:I

.field public static UPDATE_CONFIG_INTERVAL:I

.field private static sharedInstance_:Lcn/com/mma/mobile/tracking/api/Countly;


# instance fields
.field private configUrl:Ljava/lang/String;

.field private eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

.field private isVisible_:Z

.field private lastTime_:D

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

.field private sdk:Lcn/com/mma/mobile/tracking/domain/SDK;

.field private timer_:Ljava/util/Timer;

.field private trackLocation:Z

.field private unsentSessionLength_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    .line 51
    sput-boolean v0, Lcn/com/mma/mobile/tracking/api/Countly;->SENDIMMEDIATELY:Z

    .line 52
    sput v0, Lcn/com/mma/mobile/tracking/api/Countly;->TTCOUNT:I

    .line 53
    sput v0, Lcn/com/mma/mobile/tracking/api/Countly;->ERRORCOUNT:I

    .line 68
    sput v1, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_LENGTH:I

    .line 69
    const/16 v0, 0x14

    sput v0, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I

    .line 70
    sput v1, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_TIMEOUT:I

    .line 71
    const v0, 0x15180

    sput v0, Lcn/com/mma/mobile/tracking/api/Countly;->UPDATE_CONFIG_INTERVAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->sdk:Lcn/com/mma/mobile/tracking/domain/SDK;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->trackLocation:Z

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcn/com/mma/mobile/tracking/api/Countly;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/mma/mobile/tracking/api/Countly;

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->onTimer()V

    return-void
.end method

.method private fulfillTrackingInfo(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    iget-boolean v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->trackLocation:Z

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getLocation(Landroid/content/Context;Z)Ljava/lang/String;

    .line 422
    :cond_0
    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "mac":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 424
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "MAC"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_1
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "OPENUDID"

    invoke-static {}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getUDID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "OSVS"

    invoke-static {}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "TERM"

    invoke-static {}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v2, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v3, "WIFI"

    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->isWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_0
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "ANAME"

    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "AKEY"

    invoke-static {p1}, Lcn/com/admaster/verify/AppkeyVerify;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "OSVS"

    invoke-static {}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "OS"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "SCWH"

    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "ANDROIDID"

    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "IMEI"

    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v2, "ODIN"

    invoke-static {p1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getODIN1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void

    .line 430
    :cond_2
    const-string v1, "0"

    goto :goto_0
.end method

.method private getConfigFromNetWork()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 359
    iget-object v8, p0, Lcn/com/mma/mobile/tracking/api/Countly;->configUrl:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 381
    :goto_0
    return-object v7

    .line 363
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v8, p0, Lcn/com/mma/mobile/tracking/api/Countly;->configUrl:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 364
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 365
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v8, 0x2710

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 366
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 367
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 368
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 369
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, ""

    .line 371
    .local v4, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 376
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 379
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSDKFromNetWork(Landroid/content/Context;)Lcn/com/mma/mobile/tracking/domain/SDK;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    new-instance v4, Lcn/com/mma/mobile/tracking/api/XmlReader;

    invoke-direct {v4}, Lcn/com/mma/mobile/tracking/api/XmlReader;-><init>()V

    .line 400
    .local v4, "xmlReader":Lcn/com/mma/mobile/tracking/api/XmlReader;
    :try_start_0
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getConfigFromNetWork()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "newConfig":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tracking"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 403
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Lcn/com/mma/mobile/tracking/api/XmlReader;->doParser(Ljava/io/InputStream;)Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v2

    .line 404
    .local v2, "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcn/com/mma/mobile/tracking/domain/SDK;->companies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 405
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "trackingConfig"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    .end local v1    # "newConfig":Ljava/lang/String;
    .end local v2    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 409
    .restart local v1    # "newConfig":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcn/com/mma/mobile/tracking/api/Countly;->getSDKFromPreferences(Landroid/content/Context;)Lcn/com/mma/mobile/tracking/domain/SDK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 410
    .end local v1    # "newConfig":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSDKFromPreferences(Landroid/content/Context;)Lcn/com/mma/mobile/tracking/domain/SDK;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 387
    :try_start_0
    new-instance v3, Lcn/com/mma/mobile/tracking/api/XmlReader;

    invoke-direct {v3}, Lcn/com/mma/mobile/tracking/api/XmlReader;-><init>()V

    .line 388
    .local v3, "xmlReader":Lcn/com/mma/mobile/tracking/api/XmlReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tracking"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 389
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "trackingConfig"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "lastConfig":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Lcn/com/mma/mobile/tracking/api/XmlReader;->doParser(Ljava/io/InputStream;)Lcn/com/mma/mobile/tracking/domain/SDK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 393
    .end local v1    # "lastConfig":Ljava/lang/String;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "xmlReader":Lcn/com/mma/mobile/tracking/api/XmlReader;
    :cond_0
    :goto_0
    return-object v4

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onTimer()V
    .locals 10

    .prologue
    .line 446
    iget-boolean v5, p0, Lcn/com/mma/mobile/tracking/api/Countly;->isVisible_:Z

    if-nez v5, :cond_0

    .line 466
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v0, v6, v8

    .line 450
    .local v0, "currTime":D
    iget-wide v6, p0, Lcn/com/mma/mobile/tracking/api/Countly;->unsentSessionLength_:D

    iget-wide v8, p0, Lcn/com/mma/mobile/tracking/api/Countly;->lastTime_:D

    sub-double v8, v0, v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcn/com/mma/mobile/tracking/api/Countly;->unsentSessionLength_:D

    .line 451
    iput-wide v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->lastTime_:D

    .line 453
    iget-wide v6, p0, Lcn/com/mma/mobile/tracking/api/Countly;->unsentSessionLength_:D

    double-to-int v2, v6

    .line 455
    .local v2, "duration":I
    iget-wide v6, p0, Lcn/com/mma/mobile/tracking/api/Countly;->unsentSessionLength_:D

    int-to-double v8, v2

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcn/com/mma/mobile/tracking/api/Countly;->unsentSessionLength_:D

    .line 457
    iget-object v5, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    invoke-virtual {v5}, Lcn/com/mma/mobile/tracking/api/EventQueue;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 458
    iget-object v5, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    invoke-virtual {v5}, Lcn/com/mma/mobile/tracking/api/EventQueue;->events()Ljava/util/List;

    move-result-object v4

    .line 459
    .local v4, "sendEvents":Ljava/util/List;, "Ljava/util/List<Lcn/com/mma/mobile/tracking/api/SendEvent;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 460
    iget-object v6, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/mma/mobile/tracking/api/SendEvent;

    invoke-virtual {v6, v5}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->recordEvents(Lcn/com/mma/mobile/tracking/api/SendEvent;)V

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 464
    .end local v3    # "i":I
    .end local v4    # "sendEvents":Ljava/util/List;, "Ljava/util/List<Lcn/com/mma/mobile/tracking/api/SendEvent;>;"
    :cond_2
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->tick()V

    goto :goto_0
.end method

.method private setQueue_(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)V
    .locals 0
    .param p1, "queue_"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    .prologue
    .line 351
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    .line 352
    return-void
.end method

.method private setSdk(Lcn/com/mma/mobile/tracking/domain/SDK;)V
    .locals 3
    .param p1, "sdk"    # Lcn/com/mma/mobile/tracking/domain/SDK;

    .prologue
    .line 329
    if-eqz p1, :cond_2

    .line 330
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->sdk:Lcn/com/mma/mobile/tracking/domain/SDK;

    .line 332
    :try_start_0
    iget-object v1, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->length:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v2, v2, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->length:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->length:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_LENGTH:I

    .line 334
    :cond_0
    iget-object v1, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->queueExpirationSecs:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v2, v2, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->queueExpirationSecs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iget-object v1, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->queueExpirationSecs:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I

    .line 336
    :cond_1
    iget-object v1, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->timeout:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v2, v2, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->timeout:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 337
    iget-object v1, p1, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->timeout:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_TIMEOUT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_2
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance_:Lcn/com/mma/mobile/tracking/api/Countly;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcn/com/mma/mobile/tracking/api/Countly;

    invoke-direct {v0}, Lcn/com/mma/mobile/tracking/api/Countly;-><init>()V

    sput-object v0, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance_:Lcn/com/mma/mobile/tracking/api/Countly;

    .line 96
    :cond_0
    sget-object v0, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance_:Lcn/com/mma/mobile/tracking/api/Countly;

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->clear()V

    .line 134
    :cond_0
    return-void
.end method

.method public clearErrorList()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->clearErrorList()V

    .line 142
    :cond_0
    return-void
.end method

.method public getMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    return-object v0
.end method

.method public getSdk()Lcn/com/mma/mobile/tracking/domain/SDK;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->sdk:Lcn/com/mma/mobile/tracking/domain/SDK;

    return-object v0
.end method

.method public getWebViewCookies(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 252
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 253
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "sessionCookie":Ljava/lang/String;
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    new-instance v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-direct {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    .line 280
    new-instance v0, Lcn/com/mma/mobile/tracking/api/EventQueue;

    invoke-direct {v0}, Lcn/com/mma/mobile/tracking/api/EventQueue;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    .line 281
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->timer_:Ljava/util/Timer;

    .line 282
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-virtual {v0, p1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->setExposeUrlList(Landroid/content/Context;)V

    .line 283
    invoke-static {p1}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->sync(Landroid/content/Context;)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->trackLocation:Z

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    .line 286
    invoke-direct {p0, p1}, Lcn/com/mma/mobile/tracking/api/Countly;->fulfillTrackingInfo(Landroid/content/Context;)V

    .line 287
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-virtual {v0, p1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->setContext(Landroid/content/Context;)V

    .line 288
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->setParams(Ljava/util/Map;)V

    .line 289
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->queue_:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-virtual {v0, p1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->setContext(Landroid/content/Context;)V

    .line 292
    :try_start_0
    invoke-direct {p0, p1}, Lcn/com/mma/mobile/tracking/api/Countly;->getSDKFromPreferences(Landroid/content/Context;)Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v7

    .line 293
    .local v7, "sdkFromPreferences":Lcn/com/mma/mobile/tracking/domain/SDK;
    if-eqz v7, :cond_0

    .line 294
    invoke-direct {p0, v7}, Lcn/com/mma/mobile/tracking/api/Countly;->setSdk(Lcn/com/mma/mobile/tracking/domain/SDK;)V

    .line 300
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/Countly$1;

    invoke-direct {v1, p0, p1}, Lcn/com/mma/mobile/tracking/api/Countly$1;-><init>(Lcn/com/mma/mobile/tracking/api/Countly;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v7    # "sdkFromPreferences":Lcn/com/mma/mobile/tracking/domain/SDK;
    :goto_1
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->timer_:Ljava/util/Timer;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/Countly$2;

    invoke-direct {v1, p0}, Lcn/com/mma/mobile/tracking/api/Countly$2;-><init>(Lcn/com/mma/mobile/tracking/api/Countly;)V

    const-wide/16 v2, 0x2710

    sget v4, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->isVisible_:Z

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->unsentSessionLength_:D

    .line 321
    return-void

    .line 297
    .restart local v7    # "sdkFromPreferences":Lcn/com/mma/mobile/tracking/domain/SDK;
    :cond_0
    :try_start_1
    new-instance v8, Lcn/com/mma/mobile/tracking/api/XmlReader;

    invoke-direct {v8}, Lcn/com/mma/mobile/tracking/api/XmlReader;-><init>()V

    .line 298
    .local v8, "xmlReader":Lcn/com/mma/mobile/tracking/api/XmlReader;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "sdkconfig.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/com/mma/mobile/tracking/api/XmlReader;->doParser(Ljava/io/InputStream;)Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/mma/mobile/tracking/api/Countly;->setSdk(Lcn/com/mma/mobile/tracking/domain/SDK;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 306
    .end local v7    # "sdkFromPreferences":Lcn/com/mma/mobile/tracking/domain/SDK;
    .end local v8    # "xmlReader":Lcn/com/mma/mobile/tracking/api/XmlReader;
    :catch_0
    move-exception v6

    .line 307
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p2, p0, Lcn/com/mma/mobile/tracking/api/Countly;->configUrl:Ljava/lang/String;

    .line 271
    invoke-virtual {p0, p1}, Lcn/com/mma/mobile/tracking/api/Countly;->init(Landroid/content/Context;)V

    .line 272
    return-void
.end method

.method public isTrackLocation()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->trackLocation:Z

    return v0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    invoke-virtual {v0, p1, v1, v1}, Lcn/com/mma/mobile/tracking/api/EventQueue;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onClickWithMUDS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "muds"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcn/com/mma/mobile/tracking/api/EventQueue;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/com/mma/mobile/tracking/api/EventQueue;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onEventWithMUDS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "muds"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcn/com/mma/mobile/tracking/api/EventQueue;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onExpose(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    invoke-virtual {v0, p1, v1, v1}, Lcn/com/mma/mobile/tracking/api/EventQueue;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onExposekWithMUDS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "muds"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->eventQueue_:Lcn/com/mma/mobile/tracking/api/EventQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcn/com/mma/mobile/tracking/api/EventQueue;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setMuid(Ljava/lang/String;)V
    .locals 2
    .param p1, "muid"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v1, "MUID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-void
.end method

.method public setSDKFromNetWork(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->configUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lcn/com/mma/mobile/tracking/api/Countly;->getSDKFromNetWork(Landroid/content/Context;)Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/mma/mobile/tracking/api/Countly;->setSdk(Lcn/com/mma/mobile/tracking/domain/SDK;)V

    .line 326
    :cond_0
    return-void
.end method

.method public setTrackLocation(ZLandroid/content/Context;)V
    .locals 3
    .param p1, "trackLocation"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->trackLocation:Z

    if-ne v0, p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-boolean p1, p0, Lcn/com/mma/mobile/tracking/api/Countly;->trackLocation:Z

    .line 185
    if-nez p1, :cond_1

    .line 186
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v1, "LBS"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v1, "LBS"

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getLocation(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public stopCurrentSendThread()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->stop()V

    .line 126
    :cond_0
    return-void
.end method

.method public stopLoopTimer()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->timer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->timer_:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 115
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/mma/mobile/tracking/api/Countly;->SENDIMMEDIATELY:Z

    .line 116
    return-void
.end method

.method public updateLocationParams(Ljava/lang/String;)V
    .locals 2
    .param p1, "latestLocation"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly;->params:Ljava/util/Map;

    const-string v1, "LBS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method
