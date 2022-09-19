.class public final Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
.super Ljava/lang/Object;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static allocate(I)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 2

    new-instance v0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;-><init>(IZ)V

    return-object v0
.end method

.method private check()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureSize(I)V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final array()[B
    .locals 4

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public final asBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final capacity()I
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final clear()Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final compact()Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final duplicate()Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    new-instance v0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public final flip()Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final get()B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public final get([B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final get([BII)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final getChar()C
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public final getChar(I)C
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public final getDouble()D
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRealBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getShort()S
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final hasRemaining()Z
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public final limit()I
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public final limit(I)Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final mark()Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final position()I
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final position(I)Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final put(B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(IB)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 2

    invoke-virtual {p1}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(Ljava/nio/ByteBuffer;)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put([B)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put([BII)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    invoke-direct {p0, p3}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putChar(C)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putChar(IC)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putDouble(D)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putDouble(ID)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putFloat(F)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putFloat(IF)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(I)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(II)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putLong(IJ)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putLong(J)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putShort(IS)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putShort(S)Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->ensureSize(I)V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final remaining()I
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final reset()Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final rewind()Ljava/nio/Buffer;
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    iget-object v0, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final slice()Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->check()V

    new-instance v0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicByteBuffer{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/cpush/codec/support/DynamicByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "<CLOSED>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
