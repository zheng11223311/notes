.class public Lcom/unicom/iap/dataengine/ServerEngine;
.super Ljava/lang/Object;
.source "ServerEngine.java"


# static fields
.field private static final DEFAULT_HTTP:Ljava/lang/String; = "http://114.255.201.238"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://114.255.201.238:8091/wo-video/video.do"

.field private static final DEFAULT_PORT:Ljava/lang/String; = ":8091"

.field private static final DEFAULT_REGIST:Ljava/lang/String; = "/wo-video/register.do"

.field private static final DEFAULT_XXX:Ljava/lang/String; = "/wo-video/video.do"

.field private static final REGIEST_HTTP_URL:Ljava/lang/String; = "http://114.255.201.238:8091/wo-video/register.do"

.field private static encryption:Ljava/lang/String;

.field private static serverName:Ljava/lang/String;

.field private static serverPort:Ljava/lang/String;

.field private static serverProjectName:Ljava/lang/String;

.field private static serverUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    sput-object v0, Lcom/unicom/iap/dataengine/ServerEngine;->serverName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/unicom/iap/dataengine/ServerEngine;->serverPort:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/unicom/iap/dataengine/ServerEngine;->serverProjectName:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/unicom/iap/dataengine/ServerEngine;->serverUri:Ljava/lang/String;

    .line 27
    const-string v0, "false"

    sput-object v0, Lcom/unicom/iap/dataengine/ServerEngine;->encryption:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeCmd(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 96
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/unicom/iap/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeCmdToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/unicom/iap/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeCmdtoListMap(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<*>;"
    :try_start_0
    sget-object v3, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/unicom/iap/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/util/List;

    invoke-static {v3, v4}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/unicom/iap/dataengine/ServerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/dataengine/ServerCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 52
    const-string v6, "cpid"

    sget-object v7, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    sget-object v6, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 54
    const-string v6, "appid"

    sget-object v7, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    if-eqz p0, :cond_2

    .line 57
    const-string v1, ""

    .line 62
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/unicom/iap/utils/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    const-string v6, "data"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v1    # "data":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "paramsString":Ljava/lang/String;
    new-instance v3, Lcom/unicom/iap/dataengine/HttpResponseHandler;

    invoke-direct {v3}, Lcom/unicom/iap/dataengine/HttpResponseHandler;-><init>()V

    .line 72
    .local v3, "handler":Lcom/unicom/iap/dataengine/HttpResponseHandler;
    invoke-virtual {v3, p1}, Lcom/unicom/iap/dataengine/HttpResponseHandler;->setCallback(Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 73
    new-instance v0, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;

    invoke-direct {v0}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;-><init>()V

    .line 75
    .local v0, "client":Lcom/unicom/iap/dataengine/MyAsyncHttpClient;
    const-string v6, "http://114.255.201.238:8091/wo-video/video.do"

    invoke-virtual {v0, v6, v5, v3}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;->post(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 77
    return-void

    .line 63
    .end local v0    # "client":Lcom/unicom/iap/dataengine/MyAsyncHttpClient;
    .end local v3    # "handler":Lcom/unicom/iap/dataengine/HttpResponseHandler;
    .end local v5    # "paramsString":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static serverRegisterCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/unicom/iap/dataengine/ServerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/dataengine/ServerCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "paramsString":Ljava/lang/String;
    new-instance v1, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

    invoke-direct {v1}, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;-><init>()V

    .line 85
    .local v1, "handler":Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;
    invoke-virtual {v1, p1}, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;->setCallback(Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 86
    new-instance v0, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;

    invoke-direct {v0}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;-><init>()V

    .line 87
    .local v0, "client":Lcom/unicom/iap/dataengine/MyAsyncHttpClient;
    const-string v3, "http://114.255.201.238:8091/wo-video/register.do"

    invoke-virtual {v0, v3, v2, v1}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;->post(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 89
    return-void
.end method
