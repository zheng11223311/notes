.class public Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;
.super Ljava/io/FilterInputStream;
.source "BaseNCodecInputStream.java"


# static fields
.field private static EOF:I


# instance fields
.field private final baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

.field private final context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->EOF:I

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "baseNCodec"    # Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;
    .param p3, "doEncode"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    .line 42
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    .line 47
    iput-boolean p3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    .line 48
    iput-object p2, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    .line 49
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
    .line 65
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    iget-boolean v0, v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readLimit"    # I

    .prologue
    .line 81
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v2, v3, v4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v1

    .line 104
    .local v1, "r":I
    :goto_0
    if-eqz v1, :cond_1

    .line 107
    if-lez v1, :cond_2

    .line 108
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v2, v3

    .line 109
    .local v0, "b":B
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    .line 111
    .end local v0    # "b":B
    :cond_0
    :goto_1
    return v0

    .line 105
    :cond_1
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v2, v3, v4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 111
    :cond_2
    sget v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->EOF:I

    goto :goto_1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 138
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 139
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 140
    :cond_2
    array-length v3, p1

    if-gt p2, v3, :cond_3

    add-int v3, p2, p3

    array-length v5, p1

    if-le v3, v5, :cond_4

    .line 141
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 142
    :cond_4
    if-nez p3, :cond_6

    move v2, v4

    .line 172
    :cond_5
    return v2

    .line 145
    :cond_6
    const/4 v2, 0x0

    .line 160
    .local v2, "readLen":I
    :goto_0
    if-nez v2, :cond_5

    .line 161
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v5}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->hasData(Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 162
    iget-boolean v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x1000

    :goto_1
    new-array v0, v3, [B

    .line 163
    .local v0, "buf":[B
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 164
    .local v1, "c":I
    iget-boolean v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v3, :cond_9

    .line 165
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v0, v4, v1, v5}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 170
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :cond_7
    :goto_2
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, p1, p2, p3, v5}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v2

    goto :goto_0

    .line 162
    :cond_8
    const/16 v3, 0x2000

    goto :goto_1

    .line 167
    .restart local v0    # "buf":[B
    .restart local v1    # "c":I
    :cond_9
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v0, v4, v1, v5}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 201
    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    .line 202
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Negative skip length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_0
    const/16 v4, 0x200

    new-array v0, v4, [B

    .line 207
    .local v0, "b":[B
    move-wide v2, p1

    .line 209
    .local v2, "todo":J
    :goto_0
    cmp-long v4, v2, v6

    if-gtz v4, :cond_2

    .line 218
    :cond_1
    sub-long v4, p1, v2

    return-wide v4

    .line 210
    :cond_2
    array-length v4, v0

    int-to-long v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 211
    .local v1, "len":I
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v1

    .line 212
    sget v4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->EOF:I

    if-eq v1, v4, :cond_1

    .line 215
    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_0
.end method
