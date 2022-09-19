.class public Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BaseNCodecOutputStream.java"


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
    .line 35
    const/4 v0, -0x1

    sput v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->EOF:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "basedCodec"    # Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;
    .param p3, "doEncode"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    .line 42
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    .line 48
    iput-object p2, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    .line 49
    iput-boolean p3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    .line 50
    return-void
.end method

.method private flush(Z)V
    .locals 6
    .param p1, "propogate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->available(Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    .line 116
    .local v0, "avail":I
    if-lez v0, :cond_0

    .line 117
    new-array v1, v0, [B

    .line 118
    .local v1, "buf":[B
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v1, v5, v0, v4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v2

    .line 119
    .local v2, "c":I
    if-lez v2, :cond_0

    .line 120
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 123
    .end local v1    # "buf":[B
    .end local v2    # "c":I
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-boolean v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    sget v2, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->EOF:I

    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush()V

    .line 156
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 157
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    sget v2, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->EOF:I

    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 138
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 63
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->write([BII)V

    .line 64
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 93
    :cond_4
    if-lez p3, :cond_5

    .line 94
    iget-boolean v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_6

    .line 95
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 99
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 101
    :cond_5
    return-void

    .line 97
    :cond_6
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_0
.end method
