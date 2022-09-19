.class public Lorg/jbox2d/dynamics/contacts/ContactResult;
.super Ljava/lang/Object;
.source "ContactResult.java"


# instance fields
.field public id:Lorg/jbox2d/collision/ContactID;

.field public normal:Lorg/jbox2d/common/Vec2;

.field public normalImpulse:F

.field public position:Lorg/jbox2d/common/Vec2;

.field public shape1:Lorg/jbox2d/collision/Shape;

.field public shape2:Lorg/jbox2d/collision/Shape;

.field public tangentImpulse:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactResult;->position:Lorg/jbox2d/common/Vec2;

    .line 28
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactResult;->normal:Lorg/jbox2d/common/Vec2;

    .line 29
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/ContactResult;->id:Lorg/jbox2d/collision/ContactID;

    .line 30
    return-void
.end method
