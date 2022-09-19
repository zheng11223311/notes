.class public Lorg/jbox2d/collision/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# instance fields
.field categoryBits:I

.field groupIndex:I

.field public lowerBounds:[I

.field maskBits:I

.field overlapCount:I

.field timeStamp:I

.field public upperBounds:[I

.field userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    .line 47
    iget-object v0, p0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    iget-object v1, p0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 48
    iget-object v0, p0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    iget-object v1, p0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 49
    const v0, 0x7fffffff

    iput v0, p0, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    .line 50
    iput v2, p0, Lorg/jbox2d/collision/Proxy;->timeStamp:I

    .line 51
    return-void
.end method


# virtual methods
.method getNext()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lorg/jbox2d/collision/Proxy;->overlapCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNext(I)V
    .locals 2
    .param p1, "next"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 59
    return-void
.end method
