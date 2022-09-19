.class public Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;
.super Ljava/lang/Object;
.source "YoukuDanmakuLoader.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/loader/ILoader;


# static fields
.field private static final FAKECHANNEL:Ljava/lang/String; = "1"

.field private static volatile instance:Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;


# instance fields
.field private dataSource:Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static instance()Lmaster/flame/danmaku/danmaku/loader/ILoader;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;-><init>()V

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic getDataSource()Lmaster/flame/danmaku/danmaku/parser/IDataSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->getDataSource()Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->dataSource:Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 43
    const-string v3, "1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const-string v3, "1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v3, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    const-string v4, "1"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lmaster/flame/danmaku/danmaku/loader/android/YoukuDanmakuLoader;->dataSource:Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 50
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;

    invoke-direct {v3, v1}, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
