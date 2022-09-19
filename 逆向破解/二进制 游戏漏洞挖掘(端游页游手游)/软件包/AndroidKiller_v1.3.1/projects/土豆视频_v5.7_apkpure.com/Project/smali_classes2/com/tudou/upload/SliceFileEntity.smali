.class public Lcom/tudou/upload/SliceFileEntity;
.super Lorg/apache/http/entity/FileEntity;
.source "SliceFileEntity.java"


# static fields
.field private static final BASE_ARRAY_SIZE:I = 0x1000


# instance fields
.field private mFile:Ljava/io/File;

.field private mInfo:Lcom/tudou/upload/UploadInfo;

.field private mSliceInfo:Lcom/tudou/upload/SliceInfo;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/tudou/upload/UploadInfo;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "aInfo"    # Lcom/tudou/upload/UploadInfo;
    .param p4, "aSliceIndex"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    iput-object p3, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    .line 26
    iput-object p1, p0, Lcom/tudou/upload/SliceFileEntity;->mFile:Ljava/io/File;

    .line 27
    iget-object v0, p3, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/upload/SliceInfo;

    iput-object v0, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    .line 28
    return-void
.end method

.method private getUploadedSize()J
    .locals 6

    .prologue
    .line 76
    const-wide/16 v2, 0x0

    .line 77
    .local v2, "uploadedSize":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/SliceInfo;

    iget-boolean v1, v1, Lcom/tudou/upload/SliceInfo;->finished:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/SliceInfo;

    iget-wide v4, v1, Lcom/tudou/upload/SliceInfo;->length:J

    add-long/2addr v2, v4

    .line 77
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/SliceInfo;

    iget-wide v4, v1, Lcom/tudou/upload/SliceInfo;->offset:J

    add-long/2addr v2, v4

    goto :goto_1

    .line 84
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public getContentLength()J
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v0, v0, Lcom/tudou/upload/SliceInfo;->length:J

    iget-object v2, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v2, v2, Lcom/tudou/upload/SliceInfo;->offset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output stream may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mFile:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v0, "in":Ljava/io/InputStream;
    const/16 v5, 0x1000

    :try_start_0
    new-array v4, v5, [B

    .line 44
    .local v4, "tmp":[B
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget v5, v5, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    int-to-long v6, v5

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v8, v5, Lcom/tudou/upload/SliceInfo;->standardLength:J

    mul-long/2addr v6, v8

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v8, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    add-long v2, v6, v8

    .line 46
    .local v2, "skip":J
    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 47
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    .line 48
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v6, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    .line 50
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-direct {p0}, Lcom/tudou/upload/SliceFileEntity;->getUploadedSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tudou/upload/UploadInfo;->setUploadedSize(J)V

    .line 51
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v6, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    const-wide/16 v8, 0x1000

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v8, v5, Lcom/tudou/upload/SliceInfo;->length:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 52
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v6, v5, Lcom/tudou/upload/SliceInfo;->length:J

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v8, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    new-array v4, v5, [B

    .line 54
    :cond_2
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v6, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v8, v5, Lcom/tudou/upload/SliceInfo;->length:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 56
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-object v6, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    iget-wide v6, v6, Lcom/tudou/upload/SliceInfo;->length:J

    iput-wide v6, v5, Lcom/tudou/upload/SliceInfo;->offset:J

    .line 57
    iget-object v5, p0, Lcom/tudou/upload/SliceFileEntity;->mSliceInfo:Lcom/tudou/upload/SliceInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/tudou/upload/SliceInfo;->finished:Z

    .line 66
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    return-void

    .line 68
    .end local v1    # "l":I
    .end local v2    # "skip":J
    .end local v4    # "tmp":[B
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v5
.end method
