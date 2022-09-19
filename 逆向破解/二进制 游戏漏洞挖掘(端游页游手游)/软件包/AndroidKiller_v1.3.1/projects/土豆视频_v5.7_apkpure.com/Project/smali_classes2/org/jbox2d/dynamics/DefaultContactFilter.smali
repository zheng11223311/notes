.class public Lorg/jbox2d/dynamics/DefaultContactFilter;
.super Ljava/lang/Object;
.source "DefaultContactFilter.java"

# interfaces
.implements Lorg/jbox2d/dynamics/ContactFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCollide(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Z
    .locals 6
    .param p1, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "shape2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1}, Lorg/jbox2d/collision/Shape;->getFilterData()Lorg/jbox2d/collision/FilterData;

    move-result-object v1

    .line 43
    .local v1, "filter1":Lorg/jbox2d/collision/FilterData;
    invoke-virtual {p2}, Lorg/jbox2d/collision/Shape;->getFilterData()Lorg/jbox2d/collision/FilterData;

    move-result-object v2

    .line 45
    .local v2, "filter2":Lorg/jbox2d/collision/FilterData;
    iget v4, v1, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    iget v5, v2, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    if-ne v4, v5, :cond_1

    iget v4, v1, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    if-eqz v4, :cond_1

    .line 46
    iget v4, v1, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    if-lez v4, :cond_0

    .line 50
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    iget v4, v1, Lorg/jbox2d/collision/FilterData;->maskBits:I

    iget v5, v2, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    iget v4, v1, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    iget v5, v2, Lorg/jbox2d/collision/FilterData;->maskBits:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 50
    .local v0, "collide":Z
    :goto_1
    goto :goto_0

    .end local v0    # "collide":Z
    :cond_2
    move v0, v3

    .line 49
    goto :goto_1
.end method
