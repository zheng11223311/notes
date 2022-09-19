.class public Lcom/intertrust/wasabi/media/ExtendedPlaylistProxy;
.super Lcom/intertrust/wasabi/media/PlaylistProxy;
.source "ExtendedPlaylistProxy.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/intertrust/wasabi/media/jni/ExtendedPlaylistProxy;->register()V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/intertrust/wasabi/media/PlaylistProxy;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    .line 57
    invoke-static {p0, p1, v2}, Lcom/intertrust/wasabi/media/jni/ExtendedPlaylistProxy;->rewriteUrl(Lcom/intertrust/wasabi/media/ExtendedPlaylistProxy;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v4, "content-type="

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 63
    const-string/jumbo v5, "source-mime-type="

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 65
    if-lez v4, :cond_1

    .line 66
    add-int/lit8 v0, v4, 0xd

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.apple.mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 75
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ignore.m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    :goto_1
    monitor-exit p0

    return-object v0

    .line 68
    :cond_1
    if-lez v5, :cond_0

    .line 69
    add-int/lit8 v4, v5, 0x11

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    const-string/jumbo v4, "video/mp2t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "application/vnd.oma.drm.dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x0

    aget-object v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
