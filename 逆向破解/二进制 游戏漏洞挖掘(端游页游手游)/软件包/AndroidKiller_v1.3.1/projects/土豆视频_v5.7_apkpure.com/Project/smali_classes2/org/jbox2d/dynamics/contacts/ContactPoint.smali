.class public Lorg/jbox2d/dynamics/contacts/ContactPoint;
.super Ljava/lang/Object;
.source "ContactPoint.java"


# instance fields
.field public friction:F

.field public id:Lorg/jbox2d/collision/ContactID;

.field public normal:Lorg/jbox2d/common/Vec2;

.field public position:Lorg/jbox2d/common/Vec2;

.field public restitution:F

.field public separation:F

.field public shape1:Lorg/jbox2d/collision/Shape;

.field public shape2:Lorg/jbox2d/collision/Shape;

.field public velocity:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 53
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 54
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 55
    return-void
.end method
