.class public Lorg/jbox2d/collision/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jbox2d/collision/Pair;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAIR_BUFFERED:I = 0x1

.field private static final PAIR_FINAL:I = 0x4

.field private static final PAIR_REMOVED:I = 0x2


# instance fields
.field public next:I

.field public proxyId1:I

.field public proxyId2:I

.field public status:I

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Pair;)V
    .locals 1
    .param p1, "other"    # Lorg/jbox2d/collision/Pair;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jbox2d/collision/Pair;->userData:Ljava/lang/Object;

    .line 54
    iget v0, p1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    iput v0, p0, Lorg/jbox2d/collision/Pair;->proxyId1:I

    .line 55
    iget v0, p1, Lorg/jbox2d/collision/Pair;->proxyId2:I

    iput v0, p0, Lorg/jbox2d/collision/Pair;->proxyId2:I

    .line 56
    iget v0, p1, Lorg/jbox2d/collision/Pair;->status:I

    iput v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    .line 57
    return-void
.end method


# virtual methods
.method public clearBuffered()V
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    .line 65
    return-void
.end method

.method public clearRemoved()V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    .line 73
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/jbox2d/collision/Pair;

    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/Pair;->compareTo(Lorg/jbox2d/collision/Pair;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jbox2d/collision/Pair;)I
    .locals 2
    .param p1, "p"    # Lorg/jbox2d/collision/Pair;

    .prologue
    .line 93
    iget v0, p0, Lorg/jbox2d/collision/Pair;->proxyId1:I

    iget v1, p1, Lorg/jbox2d/collision/Pair;->proxyId1:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isBuffered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    iget v1, p0, Lorg/jbox2d/collision/Pair;->status:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinal()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoved()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBuffered()V
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    .line 61
    return-void
.end method

.method public setFinal()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    .line 85
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jbox2d/collision/Pair;->status:I

    .line 77
    return-void
.end method
