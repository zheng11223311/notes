.class public Lorg/jbox2d/dynamics/contacts/ContactConstraint;
.super Ljava/lang/Object;
.source "ContactConstraint.java"


# instance fields
.field public body1:Lorg/jbox2d/dynamics/Body;

.field public body2:Lorg/jbox2d/dynamics/Body;

.field public friction:F

.field public manifold:Lorg/jbox2d/collision/Manifold;

.field public normal:Lorg/jbox2d/common/Vec2;

.field public pointCount:I

.field public points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

.field public restitution:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v1, v3, [Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    .line 57
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    .line 58
    new-instance v1, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v1}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->manifold:Lorg/jbox2d/collision/Manifold;

    .line 59
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    new-instance v2, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    invoke-direct {v2}, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;-><init>()V

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
