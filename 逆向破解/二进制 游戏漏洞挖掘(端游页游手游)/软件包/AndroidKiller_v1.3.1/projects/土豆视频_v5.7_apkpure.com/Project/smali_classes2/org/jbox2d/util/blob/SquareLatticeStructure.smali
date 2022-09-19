.class public Lorg/jbox2d/util/blob/SquareLatticeStructure;
.super Lorg/jbox2d/util/blob/BlobStructure;
.source "SquareLatticeStructure.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 10
    invoke-direct {p0}, Lorg/jbox2d/util/blob/BlobStructure;-><init>()V

    .line 11
    new-instance v1, Lorg/jbox2d/util/blob/BlobPoint;

    invoke-direct {v1, v2, v2}, Lorg/jbox2d/util/blob/BlobPoint;-><init>(FF)V

    .line 12
    .local v1, "toAdd":Lorg/jbox2d/util/blob/BlobPoint;
    invoke-virtual {p0, v1}, Lorg/jbox2d/util/blob/SquareLatticeStructure;->addPoint(Lorg/jbox2d/util/blob/BlobPoint;)I

    move-result v0

    .line 14
    .local v0, "center":I
    sget-object v2, Lorg/jbox2d/util/blob/BlobStructure$Region;->UP_RIGHT:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {p0, v0, v0, v2}, Lorg/jbox2d/util/blob/SquareLatticeStructure;->addConnection(IILorg/jbox2d/util/blob/BlobStructure$Region;)V

    .line 15
    sget-object v2, Lorg/jbox2d/util/blob/BlobStructure$Region;->RIGHT:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {p0, v0, v0, v2}, Lorg/jbox2d/util/blob/SquareLatticeStructure;->addConnection(IILorg/jbox2d/util/blob/BlobStructure$Region;)V

    .line 16
    sget-object v2, Lorg/jbox2d/util/blob/BlobStructure$Region;->DOWN_RIGHT:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {p0, v0, v0, v2}, Lorg/jbox2d/util/blob/SquareLatticeStructure;->addConnection(IILorg/jbox2d/util/blob/BlobStructure$Region;)V

    .line 17
    sget-object v2, Lorg/jbox2d/util/blob/BlobStructure$Region;->DOWN:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {p0, v0, v0, v2}, Lorg/jbox2d/util/blob/SquareLatticeStructure;->addConnection(IILorg/jbox2d/util/blob/BlobStructure$Region;)V

    .line 18
    return-void
.end method
