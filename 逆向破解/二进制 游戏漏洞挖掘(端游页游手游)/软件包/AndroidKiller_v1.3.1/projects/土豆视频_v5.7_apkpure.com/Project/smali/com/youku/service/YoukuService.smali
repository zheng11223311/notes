.class public final Lcom/youku/service/YoukuService;
.super Ljava/lang/Object;
.source "YoukuService.java"


# static fields
.field private static services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/service/YoukuService;->services:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/youku/service/YoukuService;->services:Ljava/util/Map;

    const-class v1, Lcom/youku/service/login/ILogin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/youku/service/YoukuService;->services:Ljava/util/Map;

    const-class v1, Lcom/youku/service/device/IDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/service/device/DeviceManagerImpl;

    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/youku/service/device/DeviceManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/youku/service/YoukuService;->services:Ljava/util/Map;

    const-class v1, Lcom/youku/network/IHttpRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/network/HttpRequestManager;

    invoke-direct {v2}, Lcom/youku/network/HttpRequestManager;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/youku/service/YoukuService;->services:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "s":Ljava/lang/Object;
    return-object v0
.end method

.method public static getService(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "isNeedNewObject"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 57
    invoke-static {p0}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 61
    .local v1, "s":Ljava/lang/Object;
    goto :goto_0

    .line 62
    .end local v1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v2, "Youku"

    const-string v3, "YoukuService#getService()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Youku"

    const-string v3, "YoukuService#getService()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
