.class public Lcom/sea_monster/network/entity/GzipEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "GzipEntity.java"


# instance fields
.field mEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sea_monster/network/entity/GzipEntity;->mEntity:Lorg/apache/http/HttpEntity;

    .line 17
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/sea_monster/network/entity/GzipEntity;->setContentType(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sea_monster/network/entity/GzipEntity;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sea_monster/network/entity/GzipEntity;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sea_monster/network/entity/GzipEntity;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sea_monster/network/entity/GzipEntity;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .local v0, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    iget-object v1, p0, Lcom/sea_monster/network/entity/GzipEntity;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 44
    return-void
.end method
