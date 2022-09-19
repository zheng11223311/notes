.class abstract Lcom/unicom/iap/utils/BaseNCodec;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/iap/utils/BaseNCodec$Context;
    }
.end annotation


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
    .locals 3
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    const/16 v2, 0x3d

    iput-byte v2, p0, Lcom/unicom/iap/utils/BaseNCodec;->PAD:B

    .line 748
    iput p1, p0, Lcom/unicom/iap/utils/BaseNCodec;->unencodedBlockSize:I

    .line 749
    iput p2, p0, Lcom/unicom/iap/utils/BaseNCodec;->encodedBlockSize:I

    .line 750
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v0, 0x1

    .line 751
    .local v0, "useChunking":Z
    :goto_0
    if-eqz v0, :cond_0

    div-int v1, p3, p2

    mul-int/2addr v1, p2

    :cond_0
    iput v1, p0, Lcom/unicom/iap/utils/BaseNCodec;->lineLength:I

    .line 752
    iput p4, p0, Lcom/unicom/iap/utils/BaseNCodec;->chunkSeparatorLength:I

    .line 753
    return-void

    .end local v0    # "useChunking":Z
    :cond_1
    move v0, v1

    .line 750
    goto :goto_0
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .prologue
    .line 851
    sparse-switch p0, :sswitch_data_0

    .line 858
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 856
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 851
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuffer(Lcom/unicom/iap/utils/BaseNCodec$Context;)[B
    .locals 4
    .param p1, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    const/4 v3, 0x0

    .line 789
    iget-object v1, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    if-nez v1, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/unicom/iap/utils/BaseNCodec;->getDefaultBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    .line 791
    iput v3, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    .line 792
    iput v3, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    .line 798
    :goto_0
    iget-object v1, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    return-object v1

    .line 794
    :cond_0
    iget-object v1, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 795
    .local v0, "b":[B
    iget-object v1, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    iget-object v2, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    iput-object v0, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lcom/unicom/iap/utils/BaseNCodec$Context;)I
    .locals 2
    .param p1, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    .line 772
    iget-object v0, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v1, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1035
    if-nez p1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v1

    .line 1038
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v0, p1, v2

    .line 1039
    .local v0, "element":B
    const/16 v4, 0x3d

    if-eq v4, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/unicom/iap/utils/BaseNCodec;->isInAlphabet(B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1040
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1038
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 916
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 917
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    .line 918
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 919
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 921
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 934
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unicom/iap/utils/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .prologue
    const/4 v3, 0x0

    .line 945
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 953
    :goto_0
    return-object v1

    .line 948
    :cond_1
    new-instance v0, Lcom/unicom/iap/utils/BaseNCodec$Context;

    invoke-direct {v0}, Lcom/unicom/iap/utils/BaseNCodec$Context;-><init>()V

    .line 949
    .local v0, "context":Lcom/unicom/iap/utils/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/unicom/iap/utils/BaseNCodec;->decode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V

    .line 950
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/unicom/iap/utils/BaseNCodec;->decode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V

    .line 951
    iget v2, v0, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    new-array v1, v2, [B

    .line 952
    .local v1, "result":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/unicom/iap/utils/BaseNCodec;->readResults([BIILcom/unicom/iap/utils/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 873
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 964
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 972
    :goto_0
    return-object v0

    .line 967
    :cond_1
    new-instance v1, Lcom/unicom/iap/utils/BaseNCodec$Context;

    invoke-direct {v1}, Lcom/unicom/iap/utils/BaseNCodec$Context;-><init>()V

    .line 968
    .local v1, "context":Lcom/unicom/iap/utils/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/unicom/iap/utils/BaseNCodec;->encode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V

    .line 969
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/unicom/iap/utils/BaseNCodec;->encode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V

    .line 970
    iget v2, v1, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v3, v1, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 971
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/unicom/iap/utils/BaseNCodec;->readResults([BIILcom/unicom/iap/utils/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 3
    .param p1, "pArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 901
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encode([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 3
    .param p1, "pArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 889
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encode([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected ensureBufferSize(ILcom/unicom/iap/utils/BaseNCodec$Context;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    .line 808
    iget-object v0, p2, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 809
    :cond_0
    invoke-direct {p0, p2}, Lcom/unicom/iap/utils/BaseNCodec;->resizeBuffer(Lcom/unicom/iap/utils/BaseNCodec$Context;)[B

    move-result-object v0

    .line 811
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    .prologue
    .line 781
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6
    .param p1, "pArray"    # [B

    .prologue
    .line 1057
    array-length v2, p1

    iget v3, p0, Lcom/unicom/iap/utils/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/unicom/iap/utils/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lcom/unicom/iap/utils/BaseNCodec;->encodedBlockSize:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 1058
    .local v0, "len":J
    iget v2, p0, Lcom/unicom/iap/utils/BaseNCodec;->lineLength:I

    if-lez v2, :cond_0

    .line 1060
    iget v2, p0, Lcom/unicom/iap/utils/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/unicom/iap/utils/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/unicom/iap/utils/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1062
    :cond_0
    return-wide v0
.end method

.method hasData(Lcom/unicom/iap/utils/BaseNCodec$Context;)Z
    .locals 1
    .param p1, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    .line 762
    iget-object v0, p1, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

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
    .param p1, "basen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1022
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unicom/iap/utils/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 3
    .param p1, "arrayOctet"    # [B
    .param p2, "allowWSPad"    # Z

    .prologue
    .line 1002
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1008
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1003
    :cond_0
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/unicom/iap/utils/BaseNCodec;->isInAlphabet(B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1004
    if-eqz p2, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_2

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/unicom/iap/utils/BaseNCodec;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1005
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1002
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method readResults([BIILcom/unicom/iap/utils/BaseNCodec$Context;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    .line 831
    iget-object v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    if-eqz v1, :cond_1

    .line 832
    invoke-virtual {p0, p4}, Lcom/unicom/iap/utils/BaseNCodec;->available(Lcom/unicom/iap/utils/BaseNCodec$Context;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 833
    .local v0, "len":I
    iget-object v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    iget v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    .line 835
    iget v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_0

    .line 836
    const/4 v1, 0x0

    iput-object v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->buffer:[B

    .line 840
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
