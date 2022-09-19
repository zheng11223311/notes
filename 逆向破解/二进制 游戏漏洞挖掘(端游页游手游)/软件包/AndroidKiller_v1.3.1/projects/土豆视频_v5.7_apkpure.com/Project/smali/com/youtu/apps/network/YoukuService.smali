.class public final Lcom/youtu/apps/network/YoukuService;
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
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youtu/apps/network/YoukuService;->services:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/youtu/apps/network/YoukuService;->services:Ljava/util/Map;

    const-class v1, Lcom/youtu/apps/network/IHttpRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youtu/apps/network/HttpRequestManager;

    invoke-direct {v2}, Lcom/youtu/apps/network/HttpRequestManager;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 39
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/youtu/apps/network/YoukuService;->services:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "s":Ljava/lang/Object;
    return-object v0
.end method

.method public static getService(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
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

    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-static {p0}, Lcom/youtu/apps/network/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 56
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/youtu/apps/network/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 57
    .local v1, "s":Ljava/lang/Object;
    goto :goto_0

    .line 58
    .end local v1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method
