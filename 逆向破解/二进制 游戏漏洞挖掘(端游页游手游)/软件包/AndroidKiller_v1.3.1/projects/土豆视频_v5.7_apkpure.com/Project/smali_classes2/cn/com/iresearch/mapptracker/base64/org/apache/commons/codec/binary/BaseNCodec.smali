.class public abstract Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/BinaryDecoder;
.implements Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x3d

    iput-byte v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->PAD:B

    iput p1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    iput p2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :cond_0
    iput v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    iput p4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuffer(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iput v3, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iput v3, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    :goto_0
    iget-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object v0

    :cond_0
    iget-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v2, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2

    iget-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    iget v1, v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array p1, v1, [B

    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, [B

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    iget v1, v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v1, v2

    new-array p1, v1, [B

    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(ILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 2

    iget-object v0, p2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6

    array-length v0, p1

    iget v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_0

    iget v2, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method hasData(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 1

    iget-object v0, p1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    aget-byte v2, p1, v0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_2

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method readResults([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 3

    iget-object v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0, p4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;->available(Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
