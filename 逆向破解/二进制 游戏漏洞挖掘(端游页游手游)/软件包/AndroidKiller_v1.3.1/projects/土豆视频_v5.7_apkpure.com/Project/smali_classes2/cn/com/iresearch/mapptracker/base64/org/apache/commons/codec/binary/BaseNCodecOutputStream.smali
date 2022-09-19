.class public Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;
.super Ljava/io/FilterOutputStream;


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

    sput v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->EOF:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iput-boolean p3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    return-void
.end method

.method private flush(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->available(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v2, v1, v4, v0, v3}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    sget v2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->EOF:I

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    :goto_0
    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush()V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    sget v2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->EOF:I

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

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

    array-length v1, p1

    if-le v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    if-lez p3, :cond_5

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_0
.end method
