.class public Lcn/shuzilm/core/Main;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/shuzilm/core/Main;

.field private static b:Lorg/json/JSONObject;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcn/shuzilm/core/Main;

    invoke-direct {v0}, Lcn/shuzilm/core/Main;-><init>()V

    sput-object v0, Lcn/shuzilm/core/Main;->a:Lcn/shuzilm/core/Main;

    sput-object v1, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    sput-object v1, Lcn/shuzilm/core/Main;->c:Ljava/lang/Object;

    :try_start_0
    const-string v0, "du"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static declared-synchronized go(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcn/shuzilm/core/Main;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    sget-object v0, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "du"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-static {p0}, Lcn/shuzilm/core/Main;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/shuzilm/core/Main;->run(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static native run(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native setContext(Landroid/content/Context;)V
.end method

.method public static declared-synchronized setData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-class v1, Lcn/shuzilm/core/Main;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    sget-object v2, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v2, Lcn/shuzilm/core/Main;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method
