.class public Lorg/jbox2d/collision/PairManager;
.super Ljava/lang/Object;
.source "PairManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NULL_PAIR:I = 0x7fffffff

.field static final NULL_PROXY:I = 0x7fffffff

.field public static final TABLE_CAPACITY:I = 0x4000

.field static final TABLE_MASK:I = 0x3fff


# instance fields
.field public m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

.field public m_callback:Lorg/jbox2d/collision/PairCallback;

.field public m_freePair:I

.field public m_hashTable:[I

.field public m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

.field public m_pairBufferCount:I

.field public m_pairCount:I

.field public m_pairs:[Lorg/jbox2d/collision/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/jbox2d/collision/PairManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/16 v3, 0x4000

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v1, v3, [Lorg/jbox2d/collision/Pair;

    iput-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    .line 61
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    .line 63
    new-array v1, v3, [Lorg/jbox2d/collision/BufferedPair;

    iput-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    .line 65
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->isPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 71
    iput v4, p0, Lorg/jbox2d/collision/PairManager;->m_freePair:I

    .line 72
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    .line 83
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    const/16 v2, 0x3fff

    aget-object v1, v1, v2

    iput v5, v1, Lorg/jbox2d/collision/Pair;->next:I

    .line 84
    iput v4, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    .line 85
    iput v4, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    .line 86
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aput v5, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    new-instance v2, Lorg/jbox2d/collision/Pair;

    invoke-direct {v2}, Lorg/jbox2d/collision/Pair;-><init>()V

    aput-object v2, v1, v0

    .line 75
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    iput v5, v1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    .line 76
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    iput v5, v1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    .line 77
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    iput v4, v1, Lorg/jbox2d/collision/Pair;->status:I

    .line 79
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lorg/jbox2d/collision/Pair;->next:I

    .line 81
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    new-instance v2, Lorg/jbox2d/collision/BufferedPair;

    invoke-direct {v2}, Lorg/jbox2d/collision/BufferedPair;-><init>()V

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hash(II)I
    .locals 3
    .param p1, "proxyId1"    # I
    .param p2, "proxyId2"    # I

    .prologue
    .line 467
    shl-int/lit8 v1, p2, 0x10

    or-int v0, v1, p1

    .line 468
    .local v0, "key":I
    xor-int/lit8 v1, v0, -0x1

    shl-int/lit8 v2, v0, 0xf

    add-int v0, v1, v2

    .line 469
    ushr-int/lit8 v1, v0, 0xc

    xor-int/2addr v0, v1

    .line 470
    shl-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 471
    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    .line 472
    mul-int/lit16 v0, v0, 0x809

    .line 473
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 474
    return v0
.end method


# virtual methods
.method public addBufferedPair(II)V
    .locals 3
    .param p1, "id1"    # I
    .param p2, "id2"    # I

    .prologue
    const v2, 0x7fffffff

    .line 201
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 202
    :cond_1
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    const/16 v2, 0x4000

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 204
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jbox2d/collision/PairManager;->addPair(II)Lorg/jbox2d/collision/Pair;

    move-result-object v0

    .line 207
    .local v0, "pair":Lorg/jbox2d/collision/Pair;
    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->isBuffered()Z

    move-result v1

    if-nez v1, :cond_4

    .line 209
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 212
    :cond_3
    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->setBuffered()V

    .line 213
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    iget v2, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    aget-object v1, v1, v2

    iget v2, v0, Lorg/jbox2d/collision/Pair;->proxyId1:I

    iput v2, v1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    .line 214
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    iget v2, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    aget-object v1, v1, v2

    iget v2, v0, Lorg/jbox2d/collision/Pair;->proxyId2:I

    iput v2, v1, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    .line 215
    iget v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    .line 217
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    iget v2, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    if-le v1, v2, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 221
    :cond_4
    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->clearRemoved()V

    .line 226
    return-void
.end method

.method public addPair(II)Lorg/jbox2d/collision/Pair;
    .locals 6
    .param p1, "proxyId1"    # I
    .param p2, "proxyId2"    # I

    .prologue
    .line 97
    if-le p1, p2, :cond_0

    .line 99
    add-int/2addr p1, p2

    .line 100
    sub-int p2, p1, p2

    .line 101
    sub-int/2addr p1, p2

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/collision/PairManager;->hash(II)I

    move-result v4

    and-int/lit16 v0, v4, 0x3fff

    .line 106
    .local v0, "hash":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/jbox2d/collision/PairManager;->find(III)Lorg/jbox2d/collision/Pair;

    move-result-object v1

    .line 107
    .local v1, "pair":Lorg/jbox2d/collision/Pair;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 128
    .end local v1    # "pair":Lorg/jbox2d/collision/Pair;
    .local v2, "pair":Lorg/jbox2d/collision/Pair;
    :goto_0
    return-object v2

    .line 111
    .end local v2    # "pair":Lorg/jbox2d/collision/Pair;
    .restart local v1    # "pair":Lorg/jbox2d/collision/Pair;
    :cond_1
    sget-boolean v4, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget v4, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    const/16 v5, 0x4000

    if-lt v4, v5, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Too many pairs (shape AABB overlaps) - this usually means you have too many bodies, or you need to increase Settings.maxPairs."

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 112
    :cond_2
    sget-boolean v4, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget v4, p0, Lorg/jbox2d/collision/PairManager;->m_freePair:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 114
    :cond_3
    iget v3, p0, Lorg/jbox2d/collision/PairManager;->m_freePair:I

    .line 115
    .local v3, "pairIndex":I
    iget-object v4, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v4, v3

    .line 116
    iget v4, v1, Lorg/jbox2d/collision/Pair;->next:I

    iput v4, p0, Lorg/jbox2d/collision/PairManager;->m_freePair:I

    .line 118
    iput p1, v1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    .line 119
    iput p2, v1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    .line 120
    const/4 v4, 0x0

    iput v4, v1, Lorg/jbox2d/collision/Pair;->status:I

    .line 121
    const/4 v4, 0x0

    iput-object v4, v1, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aget v4, v4, v0

    iput v4, v1, Lorg/jbox2d/collision/Pair;->next:I

    .line 124
    iget-object v4, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aput v3, v4, v0

    .line 126
    iget v4, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    move-object v2, v1

    .line 128
    .end local v1    # "pair":Lorg/jbox2d/collision/Pair;
    .restart local v2    # "pair":Lorg/jbox2d/collision/Pair;
    goto :goto_0
.end method

.method public commit()V
    .locals 11

    .prologue
    const/16 v10, 0x800

    .line 262
    const/4 v5, 0x0

    .line 264
    .local v5, "removeCount":I
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v2, v6, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    .line 266
    .local v2, "proxies":[Lorg/jbox2d/collision/Proxy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    if-lt v0, v6, :cond_0

    .line 302
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_a

    .line 311
    const/4 v6, 0x0

    iput v6, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    .line 316
    return-void

    .line 267
    :cond_0
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    aget-object v6, v6, v0

    iget v6, v6, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget-object v7, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    aget-object v7, v7, v0

    iget v7, v7, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    invoke-virtual {p0, v6, v7}, Lorg/jbox2d/collision/PairManager;->find(II)Lorg/jbox2d/collision/Pair;

    move-result-object v1

    .line 268
    .local v1, "pair":Lorg/jbox2d/collision/Pair;
    sget-boolean v6, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lorg/jbox2d/collision/Pair;->isBuffered()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 269
    :cond_1
    invoke-virtual {v1}, Lorg/jbox2d/collision/Pair;->clearBuffered()V

    .line 271
    sget-boolean v6, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget v6, v1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    if-ge v6, v10, :cond_2

    iget v6, v1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    if-lt v6, v10, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 273
    :cond_3
    iget v6, v1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    aget-object v3, v2, v6

    .line 274
    .local v3, "proxy1":Lorg/jbox2d/collision/Proxy;
    iget v6, v1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    aget-object v4, v2, v6

    .line 276
    .local v4, "proxy2":Lorg/jbox2d/collision/Proxy;
    sget-boolean v6, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 277
    :cond_4
    sget-boolean v6, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 279
    :cond_5
    invoke-virtual {v1}, Lorg/jbox2d/collision/Pair;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 283
    invoke-virtual {v1}, Lorg/jbox2d/collision/Pair;->isFinal()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 284
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_callback:Lorg/jbox2d/collision/PairCallback;

    iget-object v7, v3, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    iget-object v8, v4, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    iget-object v9, v1, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lorg/jbox2d/collision/PairCallback;->pairRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    :cond_6
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    aget-object v6, v6, v5

    iget v7, v1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    iput v7, v6, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    .line 289
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    aget-object v6, v6, v5

    iget v7, v1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    iput v7, v6, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    .line 291
    add-int/lit8 v5, v5, 0x1

    .line 266
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 293
    :cond_8
    sget-boolean v6, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v6, v3, v4}, Lorg/jbox2d/collision/BroadPhase;->testOverlap(Lorg/jbox2d/collision/Proxy;Lorg/jbox2d/collision/Proxy;)Z

    move-result v6

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 295
    :cond_9
    invoke-virtual {v1}, Lorg/jbox2d/collision/Pair;->isFinal()Z

    move-result v6

    if-nez v6, :cond_7

    .line 296
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_callback:Lorg/jbox2d/collision/PairCallback;

    iget-object v7, v3, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    iget-object v8, v4, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/jbox2d/collision/PairCallback;->pairAdded(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    .line 297
    invoke-virtual {v1}, Lorg/jbox2d/collision/Pair;->setFinal()V

    goto :goto_2

    .line 304
    .end local v1    # "pair":Lorg/jbox2d/collision/Pair;
    .end local v3    # "proxy1":Lorg/jbox2d/collision/Proxy;
    .end local v4    # "proxy2":Lorg/jbox2d/collision/Proxy;
    :cond_a
    iget-object v6, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    aget-object v6, v6, v0

    iget v6, v6, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget-object v7, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    aget-object v7, v7, v0

    iget v7, v7, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    invoke-virtual {p0, v6, v7}, Lorg/jbox2d/collision/PairManager;->removePair(II)Ljava/lang/Object;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method equals(Lorg/jbox2d/collision/BufferedPair;Lorg/jbox2d/collision/BufferedPair;)Z
    .locals 2
    .param p1, "pair1"    # Lorg/jbox2d/collision/BufferedPair;
    .param p2, "pair2"    # Lorg/jbox2d/collision/BufferedPair;

    .prologue
    .line 482
    iget v0, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget v1, p2, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    iget v1, p2, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method equals(Lorg/jbox2d/collision/Pair;II)Z
    .locals 1
    .param p1, "pair"    # Lorg/jbox2d/collision/Pair;
    .param p2, "proxyId1"    # I
    .param p3, "proxyId2"    # I

    .prologue
    .line 478
    iget v0, p1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public find(II)Lorg/jbox2d/collision/Pair;
    .locals 3
    .param p1, "proxyId1"    # I
    .param p2, "proxyId2"    # I

    .prologue
    .line 401
    if-le p1, p2, :cond_0

    .line 402
    move v1, p1

    .line 403
    .local v1, "tmp":I
    move p1, p2

    .line 404
    move p2, v1

    .line 407
    .end local v1    # "tmp":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/collision/PairManager;->hash(II)I

    move-result v2

    and-int/lit16 v0, v2, 0x3fff

    .line 409
    .local v0, "hash":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/jbox2d/collision/PairManager;->find(III)Lorg/jbox2d/collision/Pair;

    move-result-object v2

    return-object v2
.end method

.method public find(III)Lorg/jbox2d/collision/Pair;
    .locals 3
    .param p1, "proxyId1"    # I
    .param p2, "proxyId2"    # I
    .param p3, "hash"    # I

    .prologue
    const v2, 0x7fffffff

    .line 383
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aget v0, v1, p3

    .line 385
    .local v0, "index":I
    :goto_0
    if-eq v0, v2, :cond_0

    .line 386
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, p1, p2}, Lorg/jbox2d/collision/PairManager;->equals(Lorg/jbox2d/collision/Pair;II)Z

    move-result v1

    .line 385
    if-eqz v1, :cond_1

    .line 391
    :cond_0
    if-ne v0, v2, :cond_2

    .line 393
    const/4 v1, 0x0

    .line 397
    :goto_1
    return-object v1

    .line 387
    :cond_1
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    iget v0, v1, Lorg/jbox2d/collision/Pair;->next:I

    goto :goto_0

    .line 396
    :cond_2
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 397
    :cond_3
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v1, v1, v0

    goto :goto_1
.end method

.method public initialize(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/collision/PairCallback;)V
    .locals 0
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/BroadPhase;
    .param p2, "callback"    # Lorg/jbox2d/collision/PairCallback;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jbox2d/collision/PairManager;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    .line 90
    iput-object p2, p0, Lorg/jbox2d/collision/PairManager;->m_callback:Lorg/jbox2d/collision/PairCallback;

    .line 91
    return-void
.end method

.method minor(Lorg/jbox2d/collision/BufferedPair;Lorg/jbox2d/collision/BufferedPair;)Z
    .locals 4
    .param p1, "pair1"    # Lorg/jbox2d/collision/BufferedPair;
    .param p2, "pair2"    # Lorg/jbox2d/collision/BufferedPair;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 487
    iget v2, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget v3, p2, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    if-ge v2, v3, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    iget v2, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget v3, p2, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    if-ne v2, v3, :cond_2

    .line 492
    iget v2, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    iget v3, p2, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method public removeBufferedPair(II)V
    .locals 3
    .param p1, "id1"    # I
    .param p2, "id2"    # I

    .prologue
    const v2, 0x7fffffff

    .line 230
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 231
    :cond_1
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    const/16 v2, 0x4000

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 233
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jbox2d/collision/PairManager;->find(II)Lorg/jbox2d/collision/Pair;

    move-result-object v0

    .line 235
    .local v0, "pair":Lorg/jbox2d/collision/Pair;
    if-nez v0, :cond_3

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_3
    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->isBuffered()Z

    move-result v1

    if-nez v1, :cond_5

    .line 243
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->isFinal()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 245
    :cond_4
    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->setBuffered()V

    .line 246
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    iget v2, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    aget-object v1, v1, v2

    iget v2, v0, Lorg/jbox2d/collision/Pair;->proxyId1:I

    iput v2, v1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    .line 247
    iget-object v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    iget v2, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    aget-object v1, v1, v2

    iget v2, v0, Lorg/jbox2d/collision/Pair;->proxyId2:I

    iput v2, v1, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    .line 248
    iget v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    .line 250
    sget-boolean v1, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget v1, p0, Lorg/jbox2d/collision/PairManager;->m_pairBufferCount:I

    iget v2, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    if-le v1, v2, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 253
    :cond_5
    invoke-virtual {v0}, Lorg/jbox2d/collision/Pair;->setRemoved()V

    goto :goto_0
.end method

.method public removePair(II)Ljava/lang/Object;
    .locals 12
    .param p1, "proxyId1"    # I
    .param p2, "proxyId2"    # I

    .prologue
    const/4 v7, 0x0

    const v11, 0x7fffffff

    .line 133
    sget-boolean v8, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    iget v8, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    if-gtz v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 135
    :cond_0
    if-le p1, p2, :cond_1

    .line 137
    add-int/2addr p1, p2

    .line 138
    sub-int p2, p1, p2

    .line 139
    sub-int/2addr p1, p2

    .line 142
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/collision/PairManager;->hash(II)I

    move-result v8

    and-int/lit16 v1, v8, 0x3fff

    .line 144
    .local v1, "hash":I
    iget-object v8, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aget v0, v8, v1

    .line 145
    .local v0, "derefnode":I
    const/4 v3, 0x1

    .line 146
    .local v3, "isHash":Z
    const/4 v5, 0x0

    .line 147
    .local v5, "pderefnode":I
    :goto_0
    if-ne v0, v11, :cond_2

    .line 180
    sget-boolean v8, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Attempted to remove a pair that does not exist"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 148
    :cond_2
    iget-object v8, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v8, v8, v0

    invoke-virtual {p0, v8, p1, p2}, Lorg/jbox2d/collision/PairManager;->equals(Lorg/jbox2d/collision/Pair;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 150
    move v2, v0

    .line 152
    .local v2, "index":I
    if-eqz v3, :cond_3

    .line 153
    iget-object v8, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    iget-object v9, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    iget-object v10, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aget v10, v10, v1

    aget-object v9, v9, v10

    iget v9, v9, Lorg/jbox2d/collision/Pair;->next:I

    aput v9, v8, v1

    .line 158
    :goto_1
    iget-object v8, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v4, v8, v2

    .line 159
    .local v4, "pair":Lorg/jbox2d/collision/Pair;
    iget-object v6, v4, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    .line 162
    .local v6, "userData":Ljava/lang/Object;
    iget v8, p0, Lorg/jbox2d/collision/PairManager;->m_freePair:I

    iput v8, v4, Lorg/jbox2d/collision/Pair;->next:I

    .line 163
    iput v11, v4, Lorg/jbox2d/collision/Pair;->proxyId1:I

    .line 164
    iput v11, v4, Lorg/jbox2d/collision/Pair;->proxyId2:I

    .line 165
    iput-object v7, v4, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    .line 166
    const/4 v7, 0x0

    iput v7, v4, Lorg/jbox2d/collision/Pair;->status:I

    .line 168
    iput v2, p0, Lorg/jbox2d/collision/PairManager;->m_freePair:I

    .line 169
    iget v7, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    .line 181
    .end local v2    # "index":I
    .end local v4    # "pair":Lorg/jbox2d/collision/Pair;
    .end local v6    # "userData":Ljava/lang/Object;
    :goto_2
    return-object v6

    .line 155
    .restart local v2    # "index":I
    :cond_3
    iget-object v8, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v8, v8, v5

    iget-object v9, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v9, v9, v0

    iget v9, v9, Lorg/jbox2d/collision/Pair;->next:I

    iput v9, v8, Lorg/jbox2d/collision/Pair;->next:I

    goto :goto_1

    .line 174
    .end local v2    # "index":I
    :cond_4
    move v5, v0

    .line 175
    iget-object v8, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v8, v8, v0

    iget v0, v8, Lorg/jbox2d/collision/Pair;->next:I

    .line 176
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    move-object v6, v7

    .line 181
    goto :goto_2
.end method

.method public validateBuffer()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public validateTable()V
    .locals 8

    .prologue
    const/16 v7, 0x800

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x4000

    if-lt v0, v5, :cond_0

    .line 379
    return-void

    .line 356
    :cond_0
    iget-object v5, p0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    aget v1, v5, v0

    .line 357
    .local v1, "index":I
    :goto_1
    const v5, 0x7fffffff

    if-ne v1, v5, :cond_1

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v5, p0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    aget-object v2, v5, v1

    .line 359
    .local v2, "pair":Lorg/jbox2d/collision/Pair;
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lorg/jbox2d/collision/Pair;->isBuffered()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 360
    :cond_2
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lorg/jbox2d/collision/Pair;->isFinal()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 361
    :cond_3
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lorg/jbox2d/collision/Pair;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 363
    :cond_4
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    iget v5, v2, Lorg/jbox2d/collision/Pair;->proxyId1:I

    iget v6, v2, Lorg/jbox2d/collision/Pair;->proxyId2:I

    if-ne v5, v6, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 364
    :cond_5
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    iget v5, v2, Lorg/jbox2d/collision/Pair;->proxyId1:I

    if-lt v5, v7, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 365
    :cond_6
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    iget v5, v2, Lorg/jbox2d/collision/Pair;->proxyId2:I

    if-lt v5, v7, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 367
    :cond_7
    iget-object v5, p0, Lorg/jbox2d/collision/PairManager;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v5, v5, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget v6, v2, Lorg/jbox2d/collision/Pair;->proxyId1:I

    aget-object v3, v5, v6

    .line 368
    .local v3, "proxy1":Lorg/jbox2d/collision/Proxy;
    iget-object v5, p0, Lorg/jbox2d/collision/PairManager;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v5, v5, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget v6, v2, Lorg/jbox2d/collision/Pair;->proxyId2:I

    aget-object v4, v5, v6

    .line 370
    .local v4, "proxy2":Lorg/jbox2d/collision/Proxy;
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 371
    :cond_8
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 373
    :cond_9
    sget-boolean v5, Lorg/jbox2d/collision/PairManager;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/jbox2d/collision/PairManager;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v5, v3, v4}, Lorg/jbox2d/collision/BroadPhase;->testOverlap(Lorg/jbox2d/collision/Proxy;Lorg/jbox2d/collision/Proxy;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 375
    :cond_a
    iget v1, v2, Lorg/jbox2d/collision/Pair;->next:I

    goto/16 :goto_1
.end method
