.class public Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static EOF:I


# instance fields
.field private final baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

.field private final context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->EOF:I

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    iput-boolean p3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    iget-boolean v0, v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

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

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v2

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->EOF:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v2, p1

    if-le v0, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    if-nez p3, :cond_6

    move v0, v1

    :cond_5
    return v0

    :cond_6
    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->hasData(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1000

    :goto_1
    new-array v0, v0, [B

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iget-boolean v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    goto :goto_0

    :cond_8
    const/16 v0, 0x2000

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 2

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

    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative skip length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x200

    new-array v2, v0, [B

    move-wide v0, p1

    :goto_0
    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    :cond_1
    sub-long v0, p1, v0

    return-wide v0

    :cond_2
    array-length v3, v2

    int-to-long v4, v3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v3

    sget v4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecInputStream;->EOF:I

    if-eq v3, v4, :cond_1

    int-to-long v4, v3

    sub-long/2addr v0, v4

    goto :goto_0
.end method
