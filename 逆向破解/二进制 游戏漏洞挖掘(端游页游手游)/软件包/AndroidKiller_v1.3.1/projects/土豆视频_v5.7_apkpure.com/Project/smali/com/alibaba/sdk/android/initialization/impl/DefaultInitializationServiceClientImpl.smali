.class public Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/initialization/InitializationServiceClient;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/sdk/android/app/AppContext;

.field private c:Ljava/lang/String;

.field public disableQueryCellLocation:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/app/AppContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "initialization_key"

    iput-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->disableQueryCellLocation:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/app/AppContext;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "initialization_key"

    iput-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->disableQueryCellLocation:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    iput-object p2, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/app/AppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v0, "serviceVersion"

    const-string v4, "1"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "serviceType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdkVersion"

    invoke-static {}, Lcom/alibaba/sdk/android/AlibabaSDK;->getVersion()Lcom/alibaba/sdk/android/Version;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/Version;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v4, Lcom/alibaba/sdk/android/repository/PluginRepository;

    invoke-interface {v0, v4}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/repository/PluginRepository;

    if-eqz v0, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Lcom/alibaba/sdk/android/repository/PluginRepository;->getPluginInfos()[Lcom/alibaba/sdk/android/plugin/PluginInfo;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v2, v5, v0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "pluginName"

    iget-object v9, v2, Lcom/alibaba/sdk/android/plugin/PluginInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "version"

    iget-object v2, v2, Lcom/alibaba/sdk/android/plugin/PluginInfo;->version:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "pluginInfo"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v0, "utDid"

    iget-object v2, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    invoke-interface {v2}, Lcom/alibaba/sdk/android/app/AppContext;->getUserTrackerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platformName"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platformVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appID"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "unknown"

    invoke-static {v3}, Lcom/alibaba/sdk/android/util/NetworkUtils;->getConnectType(Landroid/content/Context;)Lcom/alibaba/sdk/android/network/ConnectType;

    move-result-object v2

    sget-object v4, Lcom/alibaba/sdk/android/network/ConnectType;->CONNECT_TYPE_WIFI:Lcom/alibaba/sdk/android/network/ConnectType;

    if-ne v2, v4, :cond_5

    const-string/jumbo v0, "wifi"

    :cond_2
    :goto_1
    const-string v2, "netType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    const-string v2, "imei"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->disableQueryCellLocation:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_8

    const-string v2, "cellID"

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    :try_start_2
    const-string/jumbo v0, "wifimac"

    invoke-static {v3}, Lcom/alibaba/sdk/android/util/NetworkUtils;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lastInitDate"

    iget-object v2, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    iget-object v2, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    invoke-interface {v2}, Lcom/alibaba/sdk/android/app/AppContext;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appVersion"

    invoke-static {v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-nez v0, :cond_4

    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    :try_start_4
    const-string v2, "appVersion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v2, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    const-string v2, "appAuthType"

    invoke-interface {v0}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appAuthToken"

    invoke-interface {v0}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    sget-object v4, Lcom/alibaba/sdk/android/network/ConnectType;->CONNECT_TYPE_MOBILE:Lcom/alibaba/sdk/android/network/ConnectType;

    if-ne v2, v4, :cond_2

    invoke-static {v3}, Lcom/alibaba/sdk/android/util/NetworkUtils;->getMobileNetworkType(Landroid/content/Context;)Lcom/alibaba/sdk/android/network/MobileNetworkType;

    move-result-object v2

    sget-object v4, Lcom/alibaba/sdk/android/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_2G:Lcom/alibaba/sdk/android/network/MobileNetworkType;

    if-ne v2, v4, :cond_6

    const-string v0, "2g"

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/alibaba/sdk/android/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_3G:Lcom/alibaba/sdk/android/network/MobileNetworkType;

    if-ne v2, v4, :cond_7

    const-string v0, "3g"

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/alibaba/sdk/android/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_4G:Lcom/alibaba/sdk/android/network/MobileNetworkType;

    if-ne v2, v4, :cond_2

    const-string v0, "4g"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :cond_8
    :try_start_5
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_3

    const-string v2, "cellID"

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DefaultInitializationServiceClientImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to get sys info, the error message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method private declared-synchronized a(Ljava/util/List;I)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/sdk/android/initialization/InitializationHandler;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b(Ljava/util/List;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "code"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xcb

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v2, Lcom/alibaba/sdk/android/security/CertificateService;

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/CertificateService;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/security/CertificateService;->refreshCer()V

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b(Ljava/util/List;I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "code"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DefaultInitializationServiceClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to read data from the response ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v2, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->symDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a(ILjava/lang/String;Ljava/util/List;)V

    const-string v2, "DefaultInitializationServiceClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to request init server, responseCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a(ILjava/lang/String;Ljava/util/List;)V

    const-string v2, "DefaultInitializationServiceClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to request init server, the error message is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/sdk/android/initialization/InitializationHandler;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->handleResponseError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;I)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/sdk/android/initialization/InitializationHandler;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "appKey"

    const-string v3, "com.alibaba.app.appkey"

    invoke-static {v3}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clientTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v3, "sys"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->createRequestParameters()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->getRequestParameterKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "DefaultInitializationServiceClientImpl"

    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a(ILjava/lang/String;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->c:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v3, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {v0, v3}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "seedKey"

    iget-object v5, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->genAsymEncryptedSeedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "data"

    iget-object v5, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->symEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, "sign"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->c:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/sdk/android/ConfigManager;->INIT_SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/init.htm"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/sdk/android/util/HttpHelper;->post(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public request(Lcom/alibaba/sdk/android/initialization/InitializationHandler;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/sdk/android/initialization/InitializationHandler",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->getRequestServiceType()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a(Ljava/util/List;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->getResponseValueKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->handleResponseValue(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DefaultInitializationServiceClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to invoke the handler "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", the error message is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public request()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->b:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v1, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    array-length v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->request([Lcom/alibaba/sdk/android/initialization/InitializationHandler;)V

    goto :goto_0
.end method

.method public varargs request([Lcom/alibaba/sdk/android/initialization/InitializationHandler;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    invoke-interface {v4}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->getRequestServiceType()I

    move-result v5

    if-eqz v5, :cond_0

    or-int/2addr v0, v5

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->a(Ljava/util/List;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->getResponseValueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/initialization/InitializationHandler;->handleResponseValue(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "DefaultInitializationServiceClientImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fail to execute the handler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", the error message is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
