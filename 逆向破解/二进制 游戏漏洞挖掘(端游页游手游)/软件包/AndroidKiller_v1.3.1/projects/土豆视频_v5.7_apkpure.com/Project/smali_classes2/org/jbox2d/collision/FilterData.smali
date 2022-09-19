.class public Lorg/jbox2d/collision/FilterData;
.super Ljava/lang/Object;
.source "FilterData.java"


# instance fields
.field public categoryBits:I

.field public groupIndex:I

.field public maskBits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/FilterData;)V
    .locals 1
    .param p1, "fd"    # Lorg/jbox2d/collision/FilterData;

    .prologue
    .line 47
    iget v0, p1, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    iput v0, p0, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    .line 48
    iget v0, p1, Lorg/jbox2d/collision/FilterData;->maskBits:I

    iput v0, p0, Lorg/jbox2d/collision/FilterData;->maskBits:I

    .line 49
    iget v0, p1, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    iput v0, p0, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    .line 50
    return-void
.end method
