.class public Lorg/jbox2d/collision/BroadPhase;
.super Ljava/lang/Object;
.source "BroadPhase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INVALID:I = 0x7fffffff

.field public static final NULL_EDGE:I = 0x7fffffff

.field private static final debugPrint:Z

.field public static final s_validate:Z


# instance fields
.field public m_bounds:[[Lorg/jbox2d/collision/Bound;

.field m_freeProxy:I

.field m_pairBufferCount:I

.field public m_pairManager:Lorg/jbox2d/collision/PairManager;

.field public m_proxyCount:I

.field public m_proxyPool:[Lorg/jbox2d/collision/Proxy;

.field public m_quantizationFactor:Lorg/jbox2d/common/Vec2;

.field m_queryResultCount:I

.field m_queryResults:[I

.field m_timeStamp:I

.field public m_worldAABB:Lorg/jbox2d/collision/AABB;

.field pairBuffer:[Lorg/jbox2d/collision/BufferedPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/PairCallback;)V
    .locals 9
    .param p1, "worldAABB"    # Lorg/jbox2d/collision/AABB;
    .param p2, "callback"    # Lorg/jbox2d/collision/PairCallback;

    .prologue
    const/high16 v8, 0x4f000000

    const v7, 0x7fffffff

    const/16 v4, 0x800

    const/16 v6, 0x7ff

    const/4 v5, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-array v2, v4, [Lorg/jbox2d/collision/Proxy;

    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    .line 115
    const/16 v2, 0x4000

    new-array v2, v2, [Lorg/jbox2d/collision/BufferedPair;

    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    .line 116
    const/4 v2, 0x2

    const/16 v3, 0x1000

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lorg/jbox2d/collision/Bound;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/jbox2d/collision/Bound;

    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    .line 117
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    .line 124
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_1

    .line 128
    new-instance v2, Lorg/jbox2d/collision/PairManager;

    invoke-direct {v2}, Lorg/jbox2d/collision/PairManager;-><init>()V

    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    .line 129
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    invoke-virtual {v2, p0, p2}, Lorg/jbox2d/collision/PairManager;->initialize(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/collision/PairCallback;)V

    .line 131
    sget-boolean v2, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/jbox2d/collision/AABB;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 120
    :cond_0
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v2, v2, v5

    new-instance v3, Lorg/jbox2d/collision/Bound;

    invoke-direct {v3}, Lorg/jbox2d/collision/Bound;-><init>()V

    aput-object v3, v2, v1

    .line 121
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Lorg/jbox2d/collision/Bound;

    invoke-direct {v3}, Lorg/jbox2d/collision/Bound;-><init>()V

    aput-object v3, v2, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->pairBuffer:[Lorg/jbox2d/collision/BufferedPair;

    new-instance v3, Lorg/jbox2d/collision/BufferedPair;

    invoke-direct {v3}, Lorg/jbox2d/collision/BufferedPair;-><init>()V

    aput-object v3, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_2
    new-instance v2, Lorg/jbox2d/collision/AABB;

    invoke-direct {v2, p1}, Lorg/jbox2d/collision/AABB;-><init>(Lorg/jbox2d/collision/AABB;)V

    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    .line 134
    iput v5, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    .line 136
    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 137
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    div-float v3, v8, v3

    .line 138
    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    div-float v4, v8, v4

    invoke-direct {v2, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 137
    iput-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    .line 140
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v6, :cond_3

    .line 148
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    new-instance v3, Lorg/jbox2d/collision/Proxy;

    invoke-direct {v3}, Lorg/jbox2d/collision/Proxy;-><init>()V

    aput-object v3, v2, v6

    .line 149
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v6

    invoke-virtual {v2, v7}, Lorg/jbox2d/collision/Proxy;->setNext(I)V

    .line 150
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v6

    iput v5, v2, Lorg/jbox2d/collision/Proxy;->timeStamp:I

    .line 151
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v6

    iput v7, v2, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 152
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v6

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    .line 153
    iput v5, p0, Lorg/jbox2d/collision/BroadPhase;->m_freeProxy:I

    .line 155
    const/4 v2, 0x1

    iput v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    .line 156
    iput v5, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    .line 157
    return-void

    .line 141
    :cond_3
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    new-instance v3, Lorg/jbox2d/collision/Proxy;

    invoke-direct {v3}, Lorg/jbox2d/collision/Proxy;-><init>()V

    aput-object v3, v2, v1

    .line 142
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/Proxy;->setNext(I)V

    .line 143
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v1

    iput v5, v2, Lorg/jbox2d/collision/Proxy;->timeStamp:I

    .line 144
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v1

    iput v7, v2, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 145
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static binarySearch([Lorg/jbox2d/collision/Bound;II)I
    .locals 4
    .param p0, "bounds"    # [Lorg/jbox2d/collision/Bound;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, "low":I
    add-int/lit8 v0, p1, -0x1

    .line 834
    .local v0, "high":I
    :goto_0
    if-le v1, v0, :cond_1

    move v2, v1

    .line 847
    :cond_0
    return v2

    .line 835
    :cond_1
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 836
    .local v2, "mid":I
    aget-object v3, p0, v2

    iget v3, v3, Lorg/jbox2d/collision/Bound;->value:I

    if-le v3, p2, :cond_2

    .line 837
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 839
    :cond_2
    aget-object v3, p0, v2

    iget v3, v3, Lorg/jbox2d/collision/Bound;->value:I

    if-ge v3, p2, :cond_0

    .line 840
    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method private computeBounds([I[ILorg/jbox2d/collision/AABB;)V
    .locals 8
    .param p1, "lowerValues"    # [I
    .param p2, "upperValues"    # [I
    .param p3, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    const v7, 0x7ffffffe

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 724
    sget-boolean v2, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p3, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p3, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 725
    :cond_0
    sget-boolean v2, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p3, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p3, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 727
    :cond_1
    iget-object v2, p3, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v3, v3, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 728
    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v4, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 727
    invoke-static {v2, v3, v4}, Lorg/jbox2d/common/MathUtils;->clamp(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 729
    .local v1, "minVertex":Lorg/jbox2d/common/Vec2;
    iget-object v2, p3, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v3, v3, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 730
    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v4, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 729
    invoke-static {v2, v3, v4}, Lorg/jbox2d/common/MathUtils;->clamp(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 739
    .local v0, "maxVertex":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v4, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 740
    and-int/2addr v2, v7

    .line 739
    aput v2, p1, v5

    .line 741
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v4, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int/lit8 v2, v2, 0x1

    aput v2, p2, v5

    .line 743
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v4, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 744
    and-int/2addr v2, v7

    .line 743
    aput v2, p1, v6

    .line 745
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v4, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int/lit8 v2, v2, 0x1

    aput v2, p2, v6

    .line 746
    return-void
.end method

.method private dump()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "bounds[ %d ] = %d, %d \n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 104
    iget-object v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v4, v4, v6

    aget-object v4, v4, v0

    iget v4, v4, Lorg/jbox2d/collision/Bound;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v5, v5, v7

    aget-object v5, v5, v0

    iget v5, v5, Lorg/jbox2d/collision/Bound;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 103
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private incrementOverlapCount(I)V
    .locals 3
    .param p1, "proxyId"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v0, v1, p1

    .line 799
    .local v0, "proxy":Lorg/jbox2d/collision/Proxy;
    iget v1, v0, Lorg/jbox2d/collision/Proxy;->timeStamp:I

    iget v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    if-ge v1, v2, :cond_0

    .line 800
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    iput v1, v0, Lorg/jbox2d/collision/Proxy;->timeStamp:I

    .line 801
    const/4 v1, 0x1

    iput v1, v0, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 809
    :goto_0
    return-void

    .line 804
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 805
    sget-boolean v1, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 806
    :cond_1
    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    iget v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    aput p1, v1, v2

    .line 807
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    goto :goto_0
.end method

.method private incrementTimeStamp()V
    .locals 3

    .prologue
    .line 816
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    .line 820
    const/4 v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    .line 825
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 818
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/jbox2d/collision/Proxy;->timeStamp:I

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_timeStamp:I

    goto :goto_1
.end method

.method private query([III[Lorg/jbox2d/collision/Bound;II)V
    .locals 8
    .param p1, "results"    # [I
    .param p2, "lowerValue"    # I
    .param p3, "upperValue"    # I
    .param p4, "bounds"    # [Lorg/jbox2d/collision/Bound;
    .param p5, "boundCount"    # I
    .param p6, "axis"    # I

    .prologue
    .line 760
    invoke-static {p4, p5, p2}, Lorg/jbox2d/collision/BroadPhase;->binarySearch([Lorg/jbox2d/collision/Bound;II)I

    move-result v1

    .line 761
    .local v1, "lowerQuery":I
    invoke-static {p4, p5, p3}, Lorg/jbox2d/collision/BroadPhase;->binarySearch([Lorg/jbox2d/collision/Bound;II)I

    move-result v4

    .line 765
    .local v4, "upperQuery":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 772
    if-lez v1, :cond_0

    .line 773
    add-int/lit8 v0, v1, -0x1

    .line 774
    aget-object v5, p4, v0

    iget v3, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 776
    .local v3, "s":I
    :goto_1
    if-nez v3, :cond_3

    .line 789
    .end local v3    # "s":I
    :cond_0
    const/4 v5, 0x0

    aput v1, p1, v5

    .line 790
    const/4 v5, 0x1

    aput v4, p1, v5

    .line 791
    return-void

    .line 766
    :cond_1
    aget-object v5, p4, v0

    invoke-virtual {v5}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 767
    aget-object v5, p4, v0

    iget v5, v5, Lorg/jbox2d/collision/Bound;->proxyId:I

    invoke-direct {p0, v5}, Lorg/jbox2d/collision/BroadPhase;->incrementOverlapCount(I)V

    .line 765
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    .restart local v3    # "s":I
    :cond_3
    sget-boolean v5, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-gez v0, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "i = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 778
    :cond_4
    aget-object v5, p4, v0

    invoke-virtual {v5}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 779
    iget-object v5, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v6, p4, v0

    iget v6, v6, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v2, v5, v6

    .line 780
    .local v2, "proxy":Lorg/jbox2d/collision/Proxy;
    iget-object v5, v2, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v5, v5, p6

    if-gt v1, v5, :cond_5

    .line 781
    aget-object v5, p4, v0

    iget v5, v5, Lorg/jbox2d/collision/Bound;->proxyId:I

    invoke-direct {p0, v5}, Lorg/jbox2d/collision/BroadPhase;->incrementOverlapCount(I)V

    .line 782
    add-int/lit8 v3, v3, -0x1

    .line 785
    .end local v2    # "proxy":Lorg/jbox2d/collision/Proxy;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private testOverlap(Lorg/jbox2d/collision/BoundValues;Lorg/jbox2d/collision/Proxy;)Z
    .locals 5
    .param p1, "b"    # Lorg/jbox2d/collision/BoundValues;
    .param p2, "p"    # Lorg/jbox2d/collision/Proxy;

    .prologue
    const/4 v2, 0x0

    .line 181
    const/4 v0, 0x0

    .local v0, "axis":I
    :goto_0
    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 195
    const/4 v2, 0x1

    :cond_0
    return v2

    .line 183
    :cond_1
    iget-object v3, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v1, v3, v0

    .line 185
    .local v1, "bounds":[Lorg/jbox2d/collision/Bound;
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p2, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 186
    :cond_2
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p2, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 188
    :cond_3
    iget-object v3, p1, Lorg/jbox2d/collision/BoundValues;->lowerValues:[I

    aget v3, v3, v0

    iget-object v4, p2, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v4, v4, v0

    aget-object v4, v1, v4

    iget v4, v4, Lorg/jbox2d/collision/Bound;->value:I

    if-gt v3, v4, :cond_0

    .line 191
    iget-object v3, p1, Lorg/jbox2d/collision/BoundValues;->upperValues:[I

    aget v3, v3, v0

    iget-object v4, p2, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v4, v4, v0

    aget-object v4, v1, v4

    iget v4, v4, Lorg/jbox2d/collision/Bound;->value:I

    if-lt v3, v4, :cond_0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    invoke-virtual {v0}, Lorg/jbox2d/collision/PairManager;->commit()V

    .line 639
    return-void
.end method

.method createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I
    .locals 21
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "userData"    # Ljava/lang/Object;

    .prologue
    .line 229
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    const/16 v5, 0x800

    if-lt v3, v5, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 230
    :cond_0
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_freeProxy:I

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/collision/BroadPhase;->m_freeProxy:I

    .line 233
    .local v15, "proxyId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v14, v3, v15

    .line 234
    .local v14, "proxy":Lorg/jbox2d/collision/Proxy;
    invoke-virtual {v14}, Lorg/jbox2d/collision/Proxy;->getNext()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_freeProxy:I

    .line 236
    const/4 v3, 0x0

    iput v3, v14, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 237
    move-object/from16 v0, p2

    iput-object v0, v14, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    .line 244
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v8, v3, 0x2

    .line 246
    .local v8, "boundCount":I
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 247
    .local v13, "lowerValues":[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 248
    .local v18, "upperValues":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v13, v1, v2}, Lorg/jbox2d/collision/BroadPhase;->computeBounds([I[ILorg/jbox2d/collision/AABB;)V

    .line 250
    const/4 v9, 0x0

    .local v9, "axis":I
    :goto_0
    const/4 v3, 0x2

    if-lt v9, v3, :cond_2

    .line 321
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    .line 323
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    const/16 v5, 0x800

    if-lt v3, v5, :cond_b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 251
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v7, v3, v9

    .line 252
    .local v7, "bounds":[Lorg/jbox2d/collision/Bound;
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 254
    .local v4, "indexes":[I
    aget v5, v13, v9

    aget v6, v18, v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/jbox2d/collision/BroadPhase;->query([III[Lorg/jbox2d/collision/Bound;II)V

    .line 256
    const/4 v3, 0x0

    aget v12, v4, v3

    .line 257
    .local v12, "lowerIndex":I
    const/4 v3, 0x1

    aget v17, v4, v3

    .line 264
    .local v17, "upperIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v5, v5, v9

    .line 265
    add-int/lit8 v6, v17, 0x2

    sub-int v19, v8, v17

    .line 264
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v3, v0, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sub-int v3, v8, v17

    if-lt v10, v3, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v5, v5, v9

    .line 275
    add-int/lit8 v6, v12, 0x1

    sub-int v19, v17, v12

    .line 274
    move/from16 v0, v19

    invoke-static {v3, v12, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    const/4 v10, 0x0

    :goto_2
    sub-int v3, v17, v12

    if-lt v10, v3, :cond_4

    .line 283
    add-int/lit8 v17, v17, 0x1

    .line 288
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    aget-object v3, v7, v12

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Null pointer (lower)"

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 267
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    add-int/lit8 v5, v17, 0x2

    add-int/2addr v5, v10

    new-instance v6, Lorg/jbox2d/collision/Bound;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    add-int/lit8 v20, v17, 0x2

    add-int v20, v20, v10

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 267
    aput-object v6, v3, v5

    .line 266
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    add-int/lit8 v5, v12, 0x1

    add-int/2addr v5, v10

    new-instance v6, Lorg/jbox2d/collision/Bound;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    add-int/lit8 v20, v12, 0x1

    add-int v20, v20, v10

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 277
    aput-object v6, v3, v5

    .line 276
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 290
    :cond_5
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    aget-object v3, v7, v17

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Null pointer (upper)"

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 292
    :cond_6
    aget-object v3, v7, v12

    aget v5, v13, v9

    iput v5, v3, Lorg/jbox2d/collision/Bound;->value:I

    .line 293
    aget-object v3, v7, v12

    iput v15, v3, Lorg/jbox2d/collision/Bound;->proxyId:I

    .line 294
    aget-object v3, v7, v17

    aget v5, v18, v9

    iput v5, v3, Lorg/jbox2d/collision/Bound;->value:I

    .line 295
    aget-object v3, v7, v17

    iput v15, v3, Lorg/jbox2d/collision/Bound;->proxyId:I

    .line 297
    aget-object v5, v7, v12

    if-nez v12, :cond_7

    const/4 v3, 0x0

    :goto_3
    iput v3, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 299
    aget-object v3, v7, v17

    add-int/lit8 v5, v17, -0x1

    aget-object v5, v7, v5

    iget v5, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    iput v5, v3, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 305
    move v11, v12

    .local v11, "index":I
    :goto_4
    move/from16 v0, v17

    if-lt v11, v0, :cond_8

    .line 310
    move v11, v12

    :goto_5
    add-int/lit8 v3, v8, 0x2

    if-lt v11, v3, :cond_9

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 298
    .end local v11    # "index":I
    :cond_7
    add-int/lit8 v3, v12, -0x1

    aget-object v3, v7, v3

    iget v3, v3, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    goto :goto_3

    .line 306
    .restart local v11    # "index":I
    :cond_8
    aget-object v3, v7, v11

    iget v5, v3, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 305
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 311
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v5, v7, v11

    iget v5, v5, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v16, v3, v5

    .line 312
    .local v16, "proxyn":Lorg/jbox2d/collision/Proxy;
    aget-object v3, v7, v11

    invoke-virtual {v3}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 313
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aput v11, v3, v9

    .line 310
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 316
    :cond_a
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aput v11, v3, v9

    goto :goto_6

    .line 325
    .end local v4    # "indexes":[I
    .end local v7    # "bounds":[Lorg/jbox2d/collision/Bound;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v12    # "lowerIndex":I
    .end local v16    # "proxyn":Lorg/jbox2d/collision/Proxy;
    .end local v17    # "upperIndex":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    if-lt v10, v3, :cond_c

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    invoke-virtual {v3}, Lorg/jbox2d/collision/PairManager;->commit()V

    .line 340
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    .line 341
    invoke-direct/range {p0 .. p0}, Lorg/jbox2d/collision/BroadPhase;->incrementTimeStamp()V

    .line 343
    return v15

    .line 326
    :cond_c
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v3, v3, v10

    const/16 v5, 0x800

    if-lt v3, v5, :cond_d

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 327
    :cond_d
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v5, v5, v10

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 329
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v5, v5, v10

    invoke-virtual {v3, v15, v5}, Lorg/jbox2d/collision/PairManager;->addBufferedPair(II)V

    .line 325
    add-int/lit8 v10, v10, 0x1

    goto :goto_7
.end method

.method public destroyProxy(I)V
    .locals 20
    .param p1, "proxyId"    # I

    .prologue
    .line 347
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    const/16 v8, 0x800

    if-le v3, v8, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 348
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v14, v3, p1

    .line 349
    .local v14, "proxy":Lorg/jbox2d/collision/Proxy;
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v14}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 351
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v10, v3, 0x2

    .line 353
    .local v10, "boundCount":I
    const/4 v9, 0x0

    .local v9, "axis":I
    :goto_0
    const/4 v3, 0x2

    if-lt v9, v3, :cond_3

    .line 402
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    const/16 v8, 0x800

    if-lt v3, v8, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 354
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v7, v3, v9

    .line 356
    .local v7, "bounds":[Lorg/jbox2d/collision/Bound;
    iget-object v3, v14, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v13, v3, v9

    .line 357
    .local v13, "lowerIndex":I
    iget-object v3, v14, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v16, v3, v9

    .line 358
    .local v16, "upperIndex":I
    aget-object v3, v7, v13

    iget v5, v3, Lorg/jbox2d/collision/Bound;->value:I

    .line 359
    .local v5, "lowerValue":I
    aget-object v3, v7, v16

    iget v6, v3, Lorg/jbox2d/collision/Bound;->value:I

    .line 365
    .local v6, "upperValue":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    add-int/lit8 v8, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    .line 366
    sub-int v18, v16, v13

    add-int/lit8 v18, v18, -0x1

    .line 365
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v8, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    sub-int v3, v16, v13

    add-int/lit8 v3, v3, -0x1

    if-lt v11, v3, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    add-int/lit8 v8, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    .line 374
    add-int/lit8 v18, v16, -0x1

    sub-int v19, v10, v16

    add-int/lit8 v19, v19, -0x1

    .line 373
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v8, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    const/4 v11, 0x0

    :goto_2
    sub-int v3, v10, v16

    add-int/lit8 v3, v3, -0x1

    if-lt v11, v3, :cond_5

    .line 381
    move v12, v13

    .local v12, "index":I
    :goto_3
    add-int/lit8 v3, v10, -0x2

    if-lt v12, v3, :cond_6

    .line 392
    move v12, v13

    :goto_4
    add-int/lit8 v3, v16, -0x1

    if-lt v12, v3, :cond_8

    .line 398
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 399
    .local v4, "ignored":[I
    add-int/lit8 v8, v10, -0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/jbox2d/collision/BroadPhase;->query([III[Lorg/jbox2d/collision/Bound;II)V

    .line 353
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 368
    .end local v4    # "ignored":[I
    .end local v12    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    add-int v8, v13, v11

    new-instance v17, Lorg/jbox2d/collision/Bound;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    add-int v19, v13, v11

    aget-object v18, v18, v19

    invoke-direct/range {v17 .. v18}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 368
    aput-object v17, v3, v8

    .line 367
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 376
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v3, v9

    add-int/lit8 v8, v16, -0x1

    add-int/2addr v8, v11

    new-instance v17, Lorg/jbox2d/collision/Bound;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    add-int/lit8 v19, v16, -0x1

    add-int v19, v19, v11

    aget-object v18, v18, v19

    invoke-direct/range {v17 .. v18}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 376
    aput-object v17, v3, v8

    .line 375
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 382
    .restart local v12    # "index":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v8, v7, v12

    iget v8, v8, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v15, v3, v8

    .line 383
    .local v15, "proxyn":Lorg/jbox2d/collision/Proxy;
    aget-object v3, v7, v12

    invoke-virtual {v3}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    iget-object v3, v15, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aput v12, v3, v9

    .line 381
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 387
    :cond_7
    iget-object v3, v15, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aput v12, v3, v9

    goto :goto_5

    .line 393
    .end local v15    # "proxyn":Lorg/jbox2d/collision/Proxy;
    :cond_8
    aget-object v3, v7, v12

    iget v8, v3, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v3, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 392
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 404
    .end local v5    # "lowerValue":I
    .end local v6    # "upperValue":I
    .end local v7    # "bounds":[Lorg/jbox2d/collision/Bound;
    .end local v11    # "i":I
    .end local v12    # "index":I
    .end local v13    # "lowerIndex":I
    .end local v16    # "upperIndex":I
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    if-lt v11, v3, :cond_a

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    invoke-virtual {v3}, Lorg/jbox2d/collision/PairManager;->commit()V

    .line 412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    .line 413
    invoke-direct/range {p0 .. p0}, Lorg/jbox2d/collision/BroadPhase;->incrementTimeStamp()V

    .line 416
    const/4 v3, 0x0

    iput-object v3, v14, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    .line 417
    const v3, 0x7fffffff

    iput v3, v14, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 418
    iget-object v3, v14, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    const/4 v8, 0x0

    const v17, 0x7fffffff

    aput v17, v3, v8

    .line 419
    iget-object v3, v14, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    const/4 v8, 0x1

    const v17, 0x7fffffff

    aput v17, v3, v8

    .line 420
    iget-object v3, v14, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    const/4 v8, 0x0

    const v17, 0x7fffffff

    aput v17, v3, v8

    .line 421
    iget-object v3, v14, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    const/4 v8, 0x1

    const v17, 0x7fffffff

    aput v17, v3, v8

    .line 425
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_freeProxy:I

    invoke-virtual {v14, v3}, Lorg/jbox2d/collision/Proxy;->setNext(I)V

    .line 426
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/BroadPhase;->m_freeProxy:I

    .line 427
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    .line 432
    return-void

    .line 405
    :cond_a
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v8, v8, v11

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 406
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v8, v8, v11

    move/from16 v0, p1

    invoke-virtual {v3, v0, v8}, Lorg/jbox2d/collision/PairManager;->removeBufferedPair(II)V

    .line 404
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6
.end method

.method public getProxy(I)Lorg/jbox2d/collision/Proxy;
    .locals 1
    .param p1, "proxyId"    # I

    .prologue
    .line 213
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public inRange(Lorg/jbox2d/collision/AABB;)Z
    .locals 4
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 852
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v2, v2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 853
    iget-object v2, p0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    iget-object v2, v2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 852
    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 854
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method moveProxy(ILorg/jbox2d/collision/AABB;)V
    .locals 28
    .param p1, "proxyId"    # I
    .param p2, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 441
    const v25, 0x7fffffff

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v25, 0x800

    move/from16 v0, v25

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    .line 635
    :cond_0
    return-void

    .line 445
    :cond_1
    sget-boolean v25, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v25, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/jbox2d/collision/AABB;->isValid()Z

    move-result v25

    if-nez v25, :cond_2

    new-instance v25, Ljava/lang/AssertionError;

    const-string v26, "invalid AABB"

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 447
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    move/from16 v25, v0

    mul-int/lit8 v6, v25, 0x2

    .line 449
    .local v6, "boundCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v25, v0

    aget-object v21, v25, p1

    .line 452
    .local v21, "proxy":Lorg/jbox2d/collision/Proxy;
    new-instance v13, Lorg/jbox2d/collision/BoundValues;

    invoke-direct {v13}, Lorg/jbox2d/collision/BoundValues;-><init>()V

    .line 453
    .local v13, "newValues":Lorg/jbox2d/collision/BoundValues;
    iget-object v0, v13, Lorg/jbox2d/collision/BoundValues;->lowerValues:[I

    move-object/from16 v25, v0

    iget-object v0, v13, Lorg/jbox2d/collision/BoundValues;->upperValues:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/collision/BroadPhase;->computeBounds([I[ILorg/jbox2d/collision/AABB;)V

    .line 456
    new-instance v17, Lorg/jbox2d/collision/BoundValues;

    invoke-direct/range {v17 .. v17}, Lorg/jbox2d/collision/BoundValues;-><init>()V

    .line 457
    .local v17, "oldValues":Lorg/jbox2d/collision/BoundValues;
    const/4 v4, 0x0

    .local v4, "axis":I
    :goto_0
    const/16 v25, 0x2

    move/from16 v0, v25

    if-lt v4, v0, :cond_7

    .line 462
    const/4 v4, 0x0

    :goto_1
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v4, v0, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v25, v0

    aget-object v7, v25, v4

    .line 465
    .local v7, "bounds":[Lorg/jbox2d/collision/Bound;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v11, v25, v4

    .line 466
    .local v11, "lowerIndex":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v23, v25, v4

    .line 468
    .local v23, "upperIndex":I
    iget-object v0, v13, Lorg/jbox2d/collision/BoundValues;->lowerValues:[I

    move-object/from16 v25, v0

    aget v12, v25, v4

    .line 469
    .local v12, "lowerValue":I
    iget-object v0, v13, Lorg/jbox2d/collision/BoundValues;->upperValues:[I

    move-object/from16 v25, v0

    aget v24, v25, v4

    .line 471
    .local v24, "upperValue":I
    aget-object v25, v7, v11

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v25, v0

    sub-int v8, v12, v25

    .line 472
    .local v8, "deltaLower":I
    aget-object v25, v7, v23

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v25, v0

    sub-int v9, v24, v25

    .line 474
    .local v9, "deltaUpper":I
    aget-object v25, v7, v11

    move-object/from16 v0, v25

    iput v12, v0, Lorg/jbox2d/collision/Bound;->value:I

    .line 475
    aget-object v25, v7, v23

    move/from16 v0, v24

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Bound;->value:I

    .line 482
    if-gez v8, :cond_3

    .line 483
    move v10, v11

    .line 484
    .local v10, "index":I
    :goto_2
    if-lez v10, :cond_3

    add-int/lit8 v25, v10, -0x1

    aget-object v25, v7, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v12, v0, :cond_8

    .line 517
    .end local v10    # "index":I
    :cond_3
    if-lez v9, :cond_4

    .line 518
    move/from16 v10, v23

    .line 519
    .restart local v10    # "index":I
    :goto_3
    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v25

    if-ge v10, v0, :cond_4

    .line 520
    add-int/lit8 v25, v10, 0x1

    aget-object v25, v7, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 557
    .end local v10    # "index":I
    :cond_4
    if-lez v8, :cond_5

    .line 558
    move v10, v11

    .line 559
    .restart local v10    # "index":I
    :goto_4
    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    .line 560
    add-int/lit8 v25, v10, 0x1

    aget-object v25, v7, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v12, :cond_e

    .line 595
    .end local v10    # "index":I
    :cond_5
    if-gez v9, :cond_6

    .line 596
    move/from16 v10, v23

    .line 597
    .restart local v10    # "index":I
    :goto_5
    if-lez v10, :cond_6

    add-int/lit8 v25, v10, -0x1

    aget-object v25, v7, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_11

    .line 462
    .end local v10    # "index":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 458
    .end local v7    # "bounds":[Lorg/jbox2d/collision/Bound;
    .end local v8    # "deltaLower":I
    .end local v9    # "deltaUpper":I
    .end local v11    # "lowerIndex":I
    .end local v12    # "lowerValue":I
    .end local v23    # "upperIndex":I
    .end local v24    # "upperValue":I
    :cond_7
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/BoundValues;->lowerValues:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v26, v0

    aget-object v26, v26, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v27, v0

    aget v27, v27, v4

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v26, v0

    aput v26, v25, v4

    .line 459
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/BoundValues;->upperValues:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v26, v0

    aget-object v26, v26, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v27, v0

    aget v27, v27, v4

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v26, v0

    aput v26, v25, v4

    .line 457
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 485
    .restart local v7    # "bounds":[Lorg/jbox2d/collision/Bound;
    .restart local v8    # "deltaLower":I
    .restart local v9    # "deltaUpper":I
    .restart local v10    # "index":I
    .restart local v11    # "lowerIndex":I
    .restart local v12    # "lowerValue":I
    .restart local v23    # "upperIndex":I
    .restart local v24    # "upperValue":I
    :cond_8
    aget-object v5, v7, v10

    .line 486
    .local v5, "bound":Lorg/jbox2d/collision/Bound;
    add-int/lit8 v25, v10, -0x1

    aget-object v18, v7, v25

    .line 488
    .local v18, "prevBound":Lorg/jbox2d/collision/Bound;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/Bound;->proxyId:I

    move/from16 v20, v0

    .line 489
    .local v20, "prevProxyId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/Bound;->proxyId:I

    move/from16 v26, v0

    aget-object v19, v25, v26

    .line 491
    .local v19, "prevProxy":Lorg/jbox2d/collision/Proxy;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 493
    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/collision/Bound;->isUpper()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lorg/jbox2d/collision/BroadPhase;->testOverlap(Lorg/jbox2d/collision/BoundValues;Lorg/jbox2d/collision/Proxy;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/PairManager;->addBufferedPair(II)V

    .line 498
    :cond_9
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v4

    .line 499
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 506
    :goto_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v4

    .line 509
    new-instance v22, Lorg/jbox2d/collision/Bound;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 510
    .local v22, "tmp":Lorg/jbox2d/collision/Bound;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 511
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 512
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 502
    .end local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    :cond_a
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v4

    .line 503
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    goto :goto_6

    .line 521
    .end local v5    # "bound":Lorg/jbox2d/collision/Bound;
    .end local v18    # "prevBound":Lorg/jbox2d/collision/Bound;
    .end local v19    # "prevProxy":Lorg/jbox2d/collision/Proxy;
    .end local v20    # "prevProxyId":I
    :cond_b
    aget-object v5, v7, v10

    .line 522
    .restart local v5    # "bound":Lorg/jbox2d/collision/Bound;
    add-int/lit8 v25, v10, 0x1

    aget-object v14, v7, v25

    .line 523
    .local v14, "nextBound":Lorg/jbox2d/collision/Bound;
    iget v0, v14, Lorg/jbox2d/collision/Bound;->proxyId:I

    move/from16 v16, v0

    .line 524
    .local v16, "nextProxyId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v25, v0

    aget-object v15, v25, v16

    .line 526
    .local v15, "nextProxy":Lorg/jbox2d/collision/Proxy;
    iget v0, v14, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    iput v0, v14, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 528
    invoke-virtual {v14}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 529
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lorg/jbox2d/collision/BroadPhase;->testOverlap(Lorg/jbox2d/collision/BoundValues;Lorg/jbox2d/collision/Proxy;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/PairManager;->addBufferedPair(II)V

    .line 533
    :cond_c
    iget-object v0, v15, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v4

    .line 534
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 541
    :goto_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v4

    .line 545
    new-instance v22, Lorg/jbox2d/collision/Bound;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 546
    .restart local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    invoke-virtual {v5, v14}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 547
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 548
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 537
    .end local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    :cond_d
    iget-object v0, v15, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v4

    .line 538
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    goto :goto_7

    .line 561
    .end local v5    # "bound":Lorg/jbox2d/collision/Bound;
    .end local v14    # "nextBound":Lorg/jbox2d/collision/Bound;
    .end local v15    # "nextProxy":Lorg/jbox2d/collision/Proxy;
    .end local v16    # "nextProxyId":I
    :cond_e
    aget-object v5, v7, v10

    .line 562
    .restart local v5    # "bound":Lorg/jbox2d/collision/Bound;
    add-int/lit8 v25, v10, 0x1

    aget-object v14, v7, v25

    .line 564
    .restart local v14    # "nextBound":Lorg/jbox2d/collision/Bound;
    iget v0, v14, Lorg/jbox2d/collision/Bound;->proxyId:I

    move/from16 v16, v0

    .line 565
    .restart local v16    # "nextProxyId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v25, v0

    aget-object v15, v25, v16

    .line 567
    .restart local v15    # "nextProxy":Lorg/jbox2d/collision/Proxy;
    iget v0, v14, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    iput v0, v14, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 569
    invoke-virtual {v14}, Lorg/jbox2d/collision/Bound;->isUpper()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lorg/jbox2d/collision/BroadPhase;->testOverlap(Lorg/jbox2d/collision/BoundValues;Lorg/jbox2d/collision/Proxy;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/PairManager;->removeBufferedPair(II)V

    .line 574
    :cond_f
    iget-object v0, v15, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v4

    .line 575
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 582
    :goto_8
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v4

    .line 587
    new-instance v22, Lorg/jbox2d/collision/Bound;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 588
    .restart local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    invoke-virtual {v5, v14}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 589
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 590
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 578
    .end local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    :cond_10
    iget-object v0, v15, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v4

    .line 579
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    goto :goto_8

    .line 598
    .end local v5    # "bound":Lorg/jbox2d/collision/Bound;
    .end local v14    # "nextBound":Lorg/jbox2d/collision/Bound;
    .end local v15    # "nextProxy":Lorg/jbox2d/collision/Proxy;
    .end local v16    # "nextProxyId":I
    :cond_11
    aget-object v5, v7, v10

    .line 599
    .restart local v5    # "bound":Lorg/jbox2d/collision/Bound;
    add-int/lit8 v25, v10, -0x1

    aget-object v18, v7, v25

    .line 601
    .restart local v18    # "prevBound":Lorg/jbox2d/collision/Bound;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/Bound;->proxyId:I

    move/from16 v20, v0

    .line 602
    .restart local v20    # "prevProxyId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v25, v0

    aget-object v19, v25, v20

    .line 604
    .restart local v19    # "prevProxy":Lorg/jbox2d/collision/Proxy;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 606
    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/BroadPhase;->testOverlap(Lorg/jbox2d/collision/BoundValues;Lorg/jbox2d/collision/Proxy;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/PairManager;->removeBufferedPair(II)V

    .line 611
    :cond_12
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v4

    .line 612
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 619
    :goto_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v4

    .line 624
    new-instance v22, Lorg/jbox2d/collision/Bound;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lorg/jbox2d/collision/Bound;-><init>(Lorg/jbox2d/collision/Bound;)V

    .line 625
    .restart local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 626
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/Bound;->set(Lorg/jbox2d/collision/Bound;)V

    .line 627
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_5

    .line 615
    .end local v22    # "tmp":Lorg/jbox2d/collision/Bound;
    :cond_13
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v25, v0

    aget v26, v25, v4

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v4

    .line 616
    iget v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    iput v0, v5, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    goto :goto_9
.end method

.method public query(Lorg/jbox2d/collision/AABB;I)[Ljava/lang/Object;
    .locals 15
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "maxCount"    # I

    .prologue
    .line 652
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 653
    .local v11, "lowerValues":[I
    const/4 v1, 0x2

    new-array v14, v1, [I

    .line 654
    .local v14, "upperValues":[I
    move-object/from16 v0, p1

    invoke-direct {p0, v11, v14, v0}, Lorg/jbox2d/collision/BroadPhase;->computeBounds([I[ILorg/jbox2d/collision/AABB;)V

    .line 656
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 658
    .local v2, "indexes":[I
    const/4 v1, 0x0

    aget v3, v11, v1

    const/4 v1, 0x0

    aget v4, v14, v1

    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    .line 659
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    .line 658
    invoke-direct/range {v1 .. v7}, Lorg/jbox2d/collision/BroadPhase;->query([III[Lorg/jbox2d/collision/Bound;II)V

    .line 660
    const/4 v1, 0x1

    aget v3, v11, v1

    const/4 v1, 0x1

    aget v4, v14, v1

    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    .line 661
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    move-object v1, p0

    .line 660
    invoke-direct/range {v1 .. v7}, Lorg/jbox2d/collision/BroadPhase;->query([III[Lorg/jbox2d/collision/Bound;II)V

    .line 663
    sget-boolean v1, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    const/16 v3, 0x800

    if-lt v1, v3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 665
    :cond_0
    move/from16 v0, p2

    new-array v13, v0, [Ljava/lang/Object;

    .line 667
    .local v13, "results":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 668
    .local v9, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    if-ge v10, v1, :cond_1

    move/from16 v0, p2

    if-lt v9, v0, :cond_2

    .line 675
    :cond_1
    new-array v8, v9, [Ljava/lang/Object;

    .line 676
    .local v8, "copy":[Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v1, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResultCount:I

    .line 680
    invoke-direct {p0}, Lorg/jbox2d/collision/BroadPhase;->incrementTimeStamp()V

    .line 682
    return-object v8

    .line 669
    .end local v8    # "copy":[Ljava/lang/Object;
    :cond_2
    sget-boolean v1, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v1, v1, v10

    const/16 v3, 0x800

    if-lt v1, v3, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 670
    :cond_3
    iget-object v1, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget-object v3, p0, Lorg/jbox2d/collision/BroadPhase;->m_queryResults:[I

    aget v3, v3, v10

    aget-object v12, v1, v3

    .line 671
    .local v12, "proxy":Lorg/jbox2d/collision/Proxy;
    invoke-virtual {v12}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    .line 672
    iget-object v1, v12, Lorg/jbox2d/collision/Proxy;->userData:Ljava/lang/Object;

    aput-object v1, v13, v10

    .line 668
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected testOverlap(Lorg/jbox2d/collision/Proxy;Lorg/jbox2d/collision/Proxy;)Z
    .locals 5
    .param p1, "p1"    # Lorg/jbox2d/collision/Proxy;
    .param p2, "p2"    # Lorg/jbox2d/collision/Proxy;

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v0, 0x0

    .local v0, "axis":I
    :goto_0
    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 177
    const/4 v2, 0x1

    :cond_0
    return v2

    .line 163
    :cond_1
    iget-object v3, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v1, v3, v0

    .line 165
    .local v1, "bounds":[Lorg/jbox2d/collision/Bound;
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p1, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 166
    :cond_2
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p1, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 167
    :cond_3
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p2, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 168
    :cond_4
    sget-boolean v3, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    iget-object v3, p2, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 170
    :cond_5
    iget-object v3, p1, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v3, v3, v0

    aget-object v3, v1, v3

    iget v3, v3, Lorg/jbox2d/collision/Bound;->value:I

    iget-object v4, p2, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v4, v4, v0

    aget-object v4, v1, v4

    iget v4, v4, Lorg/jbox2d/collision/Bound;->value:I

    if-gt v3, v4, :cond_0

    .line 173
    iget-object v3, p1, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v3, v3, v0

    aget-object v3, v1, v3

    iget v3, v3, Lorg/jbox2d/collision/Bound;->value:I

    iget-object v4, p2, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v4, v4, v0

    aget-object v4, v1, v4

    iget v4, v4, Lorg/jbox2d/collision/Bound;->value:I

    if-lt v3, v4, :cond_0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public validate()V
    .locals 10

    .prologue
    .line 690
    const/4 v0, 0x0

    .local v0, "axis":I
    :goto_0
    const/4 v6, 0x2

    if-lt v0, v6, :cond_0

    .line 717
    return-void

    .line 691
    :cond_0
    iget-object v6, p0, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    aget-object v3, v6, v0

    .line 693
    .local v3, "bounds":[Lorg/jbox2d/collision/Bound;
    iget v6, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    mul-int/lit8 v2, v6, 0x2

    .line 694
    .local v2, "boundCount":I
    const/4 v5, 0x0

    .line 696
    .local v5, "stabbingCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v2, :cond_1

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_1
    aget-object v1, v3, v4

    .line 698
    .local v1, "bound":Lorg/jbox2d/collision/Bound;
    sget-boolean v6, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-eqz v4, :cond_2

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v3, v6

    iget v6, v6, Lorg/jbox2d/collision/Bound;->value:I

    iget v7, v1, Lorg/jbox2d/collision/Bound;->value:I

    if-le v6, v7, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 699
    :cond_2
    sget-boolean v6, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget v6, v1, Lorg/jbox2d/collision/Bound;->proxyId:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 700
    :cond_3
    sget-boolean v6, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget v7, v1, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 703
    :cond_4
    invoke-virtual {v1}, Lorg/jbox2d/collision/Bound;->isLower()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 704
    sget-boolean v6, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget v7, v1, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v6, v6, v0

    if-eq v6, v4, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget v9, v1, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    const-string v8, " not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 706
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 713
    :goto_2
    sget-boolean v6, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v6, :cond_8

    iget v6, v1, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    if-eq v6, v5, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 709
    :cond_6
    sget-boolean v6, Lorg/jbox2d/collision/BroadPhase;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    iget v7, v1, Lorg/jbox2d/collision/Bound;->proxyId:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aget v6, v6, v0

    if-eq v6, v4, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 710
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 696
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method
