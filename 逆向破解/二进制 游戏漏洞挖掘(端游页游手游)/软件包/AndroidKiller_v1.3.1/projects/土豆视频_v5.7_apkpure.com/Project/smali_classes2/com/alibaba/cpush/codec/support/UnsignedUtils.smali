.class public Lcom/alibaba/cpush/codec/support/UnsignedUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsignedByte(B)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static getUnsignedByte(Ljava/nio/ByteBuffer;)S
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/alibaba/cpush/codec/support/UnsignedUtils;->getUnsignedByte(B)S

    move-result v0

    return v0
.end method

.method public static getUnsignedByte(Ljava/nio/ByteBuffer;I)S
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/alibaba/cpush/codec/support/UnsignedUtils;->getUnsignedByte(B)S

    move-result v0

    return v0
.end method

.method public static getUnsignedInt(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;)J
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;I)J
    .locals 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/alibaba/cpush/codec/support/UnsignedUtils;->getUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;I)I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/alibaba/cpush/codec/support/UnsignedUtils;->getUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public static putUnsignedByte(Ljava/nio/ByteBuffer;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static putUnsignedByte(Ljava/nio/ByteBuffer;II)V
    .locals 1

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;I)V
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;II)V
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;I)V
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;II)V
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p2

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method
