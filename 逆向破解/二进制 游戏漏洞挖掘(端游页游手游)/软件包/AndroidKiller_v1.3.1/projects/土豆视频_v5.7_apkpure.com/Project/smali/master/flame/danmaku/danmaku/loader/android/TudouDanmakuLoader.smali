.class public Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;
.super Ljava/lang/Object;
.source "TudouDanmakuLoader.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/loader/ILoader;


# static fields
.field private static volatile instance:Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;


# instance fields
.field private dataSource:Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lmaster/flame/danmaku/danmaku/loader/ILoader;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;-><init>()V

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->instance:Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;

    return-object v0

    .line 18
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
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->getDataSource()Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->dataSource:Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

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
    .line 46
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    new-instance v2, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;

    const-string/jumbo v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/loader/android/TudouDanmakuLoader;->dataSource:Lmaster/flame/danmaku/danmaku/parser/android/JSONSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    return-void

    .line 38
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;

    invoke-direct {v2, v0}, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
