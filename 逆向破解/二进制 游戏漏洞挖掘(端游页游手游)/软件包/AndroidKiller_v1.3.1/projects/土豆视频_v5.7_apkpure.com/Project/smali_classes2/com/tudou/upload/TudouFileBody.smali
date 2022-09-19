.class public Lcom/tudou/upload/TudouFileBody;
.super Lorg/apache/http/entity/mime/content/FileBody;
.source "TudouFileBody.java"


# instance fields
.field private mFile:Ljava/io/File;

.field private mInfo:Lcom/tudou/upload/UploadInfo;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tudou/upload/UploadInfo;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 20
    iput-object p2, p0, Lcom/tudou/upload/TudouFileBody;->mInfo:Lcom/tudou/upload/UploadInfo;

    .line 21
    iput-object p1, p0, Lcom/tudou/upload/TudouFileBody;->mFile:Ljava/io/File;

    .line 23
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 6

    .prologue
    .line 27
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileBody getContentLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/TudouFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tudou/upload/TudouFileBody;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/tudou/upload/TudouFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tudou/upload/TudouFileBody;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output stream may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/tudou/upload/TudouFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v0, "in":Ljava/io/InputStream;
    const/16 v5, 0x1000

    :try_start_0
    new-array v4, v5, [B

    .line 43
    .local v4, "tmp":[B
    iget-object v5, p0, Lcom/tudou/upload/TudouFileBody;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v2

    .line 44
    .local v2, "sum":J
    iget-object v5, p0, Lcom/tudou/upload/TudouFileBody;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 45
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 46
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 47
    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 48
    iget-object v5, p0, Lcom/tudou/upload/TudouFileBody;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5, v2, v3}, Lcom/tudou/upload/UploadInfo;->setUploadedSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    .end local v1    # "l":I
    .end local v2    # "sum":J
    .end local v4    # "tmp":[B
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v5

    .line 51
    .restart local v1    # "l":I
    .restart local v2    # "sum":J
    .restart local v4    # "tmp":[B
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 55
    return-void
.end method
