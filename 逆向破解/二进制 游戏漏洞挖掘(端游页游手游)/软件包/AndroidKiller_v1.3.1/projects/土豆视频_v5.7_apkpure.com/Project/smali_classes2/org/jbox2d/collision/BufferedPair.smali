.class public Lorg/jbox2d/collision/BufferedPair;
.super Ljava/lang/Object;
.source "BufferedPair.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jbox2d/collision/BufferedPair;",
        ">;"
    }
.end annotation


# instance fields
.field proxyId1:I

.field proxyId2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private equals(Lorg/jbox2d/collision/BufferedPair;)Z
    .locals 2
    .param p1, "other"    # Lorg/jbox2d/collision/BufferedPair;

    .prologue
    .line 34
    iget v0, p0, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget v1, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    iget v1, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private minor(Lorg/jbox2d/collision/BufferedPair;)Z
    .locals 4
    .param p1, "other"    # Lorg/jbox2d/collision/BufferedPair;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    iget v2, p0, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget v3, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    if-ge v2, v3, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    iget v2, p0, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    iget v3, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId1:I

    if-ne v2, v3, :cond_2

    .line 42
    iget v2, p0, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    iget v3, p1, Lorg/jbox2d/collision/BufferedPair;->proxyId2:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/jbox2d/collision/BufferedPair;

    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/BufferedPair;->compareTo(Lorg/jbox2d/collision/BufferedPair;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jbox2d/collision/BufferedPair;)I
    .locals 1
    .param p1, "p"    # Lorg/jbox2d/collision/BufferedPair;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/jbox2d/collision/BufferedPair;->minor(Lorg/jbox2d/collision/BufferedPair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, -0x1

    .line 56
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lorg/jbox2d/collision/BufferedPair;->equals(Lorg/jbox2d/collision/BufferedPair;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
