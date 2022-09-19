.class public Lcom/alibaba/cpush/codec/support/ProtocolUtils;
.super Ljava/lang/Object;


# static fields
.field public static final BUFFER_SIZE:I = 0x400

.field public static final CHAR_SET:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeString(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-static {p0}, Lcom/alibaba/cpush/codec/support/ProtocolUtils;->readWord(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    new-array v2, v1, [B

    invoke-virtual {p0, v2}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->get([B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static decodeVariableNumber(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;)J
    .locals 8

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->remaining()I

    move-result v4

    if-gtz v4, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v6, v5

    mul-long/2addr v6, v2

    add-long/2addr v0, v6

    const-wide/16 v6, 0x80

    mul-long/2addr v2, v6

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method public static encodeString(Ljava/lang/String;)[B
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->allocate(I)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/cpush/codec/support/ProtocolUtils;->writeWord(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->put([B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    invoke-virtual {v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encodeVariableNumber(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;J)V
    .locals 7

    const-wide/16 v4, 0x80

    const-wide/16 v2, 0x0

    :cond_0
    rem-long v0, p1, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    div-long/2addr p1, v4

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->put(B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    return-void
.end method

.method public static encodeVariableNumber(J)[B
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->allocate(I)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/alibaba/cpush/codec/support/ProtocolUtils;->encodeVariableNumber(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;J)V

    invoke-virtual {v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static readWord(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static writeWord(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;I)V
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->put(B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->put(B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    return-void
.end method
