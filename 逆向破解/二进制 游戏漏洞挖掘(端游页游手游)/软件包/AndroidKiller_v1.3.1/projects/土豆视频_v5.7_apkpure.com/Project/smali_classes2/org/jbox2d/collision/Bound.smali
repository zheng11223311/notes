.class public Lorg/jbox2d/collision/Bound;
.super Ljava/lang/Object;
.source "Bound.java"


# instance fields
.field proxyId:I

.field stabbingCount:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lorg/jbox2d/collision/Bound;->value:I

    .line 37
    iput v0, p0, Lorg/jbox2d/collision/Bound;->proxyId:I

    .line 38
    iput v0, p0, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Bound;)V
    .locals 1
    .param p1, "b"    # Lorg/jbox2d/collision/Bound;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lorg/jbox2d/collision/Bound;->value:I

    iput v0, p0, Lorg/jbox2d/collision/Bound;->value:I

    .line 43
    iget v0, p1, Lorg/jbox2d/collision/Bound;->proxyId:I

    iput v0, p0, Lorg/jbox2d/collision/Bound;->proxyId:I

    .line 44
    iget v0, p1, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    iput v0, p0, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 45
    return-void
.end method


# virtual methods
.method isLower()Z
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/jbox2d/collision/Bound;->value:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpper()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lorg/jbox2d/collision/Bound;->value:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lorg/jbox2d/collision/Bound;)V
    .locals 1
    .param p1, "b"    # Lorg/jbox2d/collision/Bound;

    .prologue
    .line 48
    iget v0, p1, Lorg/jbox2d/collision/Bound;->value:I

    iput v0, p0, Lorg/jbox2d/collision/Bound;->value:I

    .line 49
    iget v0, p1, Lorg/jbox2d/collision/Bound;->proxyId:I

    iput v0, p0, Lorg/jbox2d/collision/Bound;->proxyId:I

    .line 50
    iget v0, p1, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    iput v0, p0, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    const-string v0, "Bound variable:\n"

    .line 64
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/collision/Bound;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "proxyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/collision/Bound;->proxyId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "stabbing count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/collision/Bound;->stabbingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
