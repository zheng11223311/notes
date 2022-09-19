.class public Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
.super Ljava/lang/Object;
.source "ContactConstraintPoint.java"


# instance fields
.field public equalizedMass:F

.field public localAnchor1:Lorg/jbox2d/common/Vec2;

.field public localAnchor2:Lorg/jbox2d/common/Vec2;

.field public normalImpulse:F

.field public normalMass:F

.field public positionImpulse:F

.field public r1:Lorg/jbox2d/common/Vec2;

.field public r2:Lorg/jbox2d/common/Vec2;

.field public separation:F

.field public tangentImpulse:F

.field public tangentMass:F

.field public velocityBias:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 57
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 58
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    .line 59
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    .line 60
    return-void
.end method
