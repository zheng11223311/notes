.class public Lcom/sea_monster/resource/ProgressInputStreamWrapper;
.super Ljava/io/InputStream;
.source "ProgressInputStreamWrapper.java"


# instance fields
.field callback:Lcom/sea_monster/network/StoreStatusCallback;

.field inputStream:Ljava/io/InputStream;

.field status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

.field total:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "total"    # J
    .param p4, "callback"    # Lcom/sea_monster/network/StoreStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-wide p2, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->total:J

    .line 25
    iput-object p4, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    .line 26
    new-instance v0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    invoke-direct {v0, p2, p3}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;-><init>(J)V

    iput-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .line 27
    iput-object p1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 28
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 43
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 84
    .local v0, "data":I
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->addReceivedSize(J)V

    .line 85
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    iget-object v2, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    invoke-interface {v1, v2}, Lcom/sea_monster/network/StoreStatusCallback;->statusCallback(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 53
    .local v0, "count":I
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->addReceivedSize(J)V

    .line 54
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    iget-object v2, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    invoke-interface {v1, v2}, Lcom/sea_monster/network/StoreStatusCallback;->statusCallback(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, "count":I
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->addReceivedSize(J)V

    .line 63
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    iget-object v2, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    invoke-interface {v1, v2}, Lcom/sea_monster/network/StoreStatusCallback;->statusCallback(Ljava/lang/Object;)V

    .line 65
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 71
    new-instance v0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    iget-wide v2, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->total:J

    invoke-direct {v0, v2, v3}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;-><init>(J)V

    iput-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    .line 72
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->callback:Lcom/sea_monster/network/StoreStatusCallback;

    iget-object v1, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->status:Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;

    invoke-interface {v0, v1}, Lcom/sea_monster/network/StoreStatusCallback;->statusCallback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sea_monster/resource/ProgressInputStreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
