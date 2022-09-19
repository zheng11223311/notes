.class public Lcom/sea_monster/network/entity/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# instance fields
.field private content:[B

.field private endSeparator:[B

.field private fileSeparator:[B

.field private inputStream:Ljava/io/InputStream;

.field private mBoundary:Ljava/lang/String;

.field private mStream:[B


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    const v3, -0xfffe

    .line 81
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "formDataString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sea_monster/network/MultipartUtils;->getFormDataContent(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :try_start_1
    invoke-virtual {v1, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v1    # "formDataString":Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2, p3, p4}, Lcom/sea_monster/network/MultipartUtils;->getFileSeparator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->fileSeparator:[B

    .line 99
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2}, Lcom/sea_monster/network/MultipartUtils;->getEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->endSeparator:[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    iput-object p2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->inputStream:Ljava/io/InputStream;

    .line 105
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2}, Lcom/sea_monster/network/MultipartUtils;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sea_monster/network/entity/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 106
    return-void

    .line 87
    .restart local v1    # "formDataString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/sea_monster/exception/InternalException;

    invoke-direct {v2, v3, v0}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/sea_monster/exception/InternalException;

    invoke-direct {v2, v3, v0}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 100
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "formDataString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/sea_monster/exception/InternalException;

    invoke-direct {v2, v3, v0}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    .line 58
    if-eqz p1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "formDataString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sea_monster/network/MultipartUtils;->getFormDataContent(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 67
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    :try_start_2
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2}, Lcom/sea_monster/network/MultipartUtils;->getEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->endSeparator:[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .end local v1    # "formDataString":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2}, Lcom/sea_monster/network/MultipartUtils;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sea_monster/network/entity/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 77
    return-void

    .line 63
    .restart local v1    # "formDataString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v2, Lcom/sea_monster/exception/InternalException;

    const v3, -0xfffe

    invoke-direct {v2, v3, v0}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 73
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    new-instance v2, Lcom/sea_monster/exception/InternalException;

    const v3, -0xfffe

    invoke-direct {v2, v3, v0}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public constructor <init>(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "imgStream"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "formDataString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sea_monster/network/MultipartUtils;->getFormDataContent(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    :try_start_1
    invoke-virtual {v1, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .end local v1    # "formDataString":Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2, p3, p4}, Lcom/sea_monster/network/MultipartUtils;->getFileSeparator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->fileSeparator:[B

    .line 46
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2}, Lcom/sea_monster/network/MultipartUtils;->getEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->endSeparator:[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    iput-object p2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mStream:[B

    .line 52
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-static {v2}, Lcom/sea_monster/network/MultipartUtils;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sea_monster/network/entity/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 53
    return-void

    .line 33
    .restart local v1    # "formDataString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/sea_monster/exception/HttpException;

    invoke-direct {v2, v0}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 38
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/sea_monster/exception/HttpException;

    invoke-direct {v2, v0}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 47
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "formDataString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 48
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/sea_monster/exception/HttpException;

    invoke-direct {v2, v0}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2
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
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "length":I
    :try_start_0
    iget-object v3, p0, Lcom/sea_monster/network/entity/MultipartEntity;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B

    if-nez v3, :cond_0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/sea_monster/network/entity/MultipartEntity;->fileSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sea_monster/network/entity/MultipartEntity;->endSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mStream:[B

    if-nez v4, :cond_1

    :goto_1
    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sea_monster/network/entity/MultipartEntity;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    add-int v1, v2, v3

    .line 128
    :goto_2
    int-to-long v2, v1

    return-wide v2

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B

    array-length v3, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mStream:[B

    array-length v2, v2

    goto :goto_1

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/sea_monster/network/entity/MultipartEntity;->endSeparator:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->content:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->fileSeparator:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->fileSeparator:[B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->fileSeparator:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mStream:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mStream:[B

    array-length v2, v2

    if-nez v2, :cond_3

    .line 146
    :cond_2
    const/4 v1, 0x0

    .line 147
    .local v1, "bytesRead":I
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 148
    .local v0, "buf":[B
    :goto_0
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 149
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 152
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :cond_3
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->mStream:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/sea_monster/network/entity/MultipartEntity;->endSeparator:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 156
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 157
    return-void
.end method
