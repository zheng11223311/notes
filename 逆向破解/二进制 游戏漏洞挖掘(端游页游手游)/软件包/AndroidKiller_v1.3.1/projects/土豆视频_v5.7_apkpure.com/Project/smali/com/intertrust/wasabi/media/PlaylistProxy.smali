.class public Lcom/intertrust/wasabi/media/PlaylistProxy;
.super Ljava/lang/Object;
.source "PlaylistProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;,
        Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;,
        Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;
    }
.end annotation


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-class v0, Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intertrust/wasabi/media/PlaylistProxy;->create(Ljava/util/EnumSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-direct {p0, p1}, Lcom/intertrust/wasabi/media/PlaylistProxy;->create(Ljava/util/EnumSet;)V

    .line 161
    return-void
.end method

.method private create(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/intertrust/wasabi/media/PlaylistProxy$Flags;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "flags cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 179
    invoke-static {p1, v0}, Lcom/intertrust/wasabi/media/jni/PlaylistProxy;->create(Ljava/util/EnumSet;[J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 182
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J

    .line 183
    return-void
.end method


# virtual methods
.method public declared-synchronized getAndClearLastError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/PlaylistProxy;->getAndClearLastError(J)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuthToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 220
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/PlaylistProxy;->getAuthToken(J[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 223
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeUrl(Ljava/lang/String;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 259
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v5, v0, [Ljava/lang/String;

    .line 260
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/intertrust/wasabi/media/jni/PlaylistProxy;->makeUrl(JLjava/lang/String;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 267
    const/4 v0, 0x0

    aget-object v0, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/PlaylistProxy;->start(J)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/PlaylistProxy;->stop(J)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/PlaylistProxy;->nativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
