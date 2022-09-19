.class public abstract Lorg/jbox2d/dynamics/DebugDraw;
.super Ljava/lang/Object;
.source "DebugDraw.java"


# static fields
.field public static final e_aabbBit:I = 0x8

.field public static final e_centerOfMassBit:I = 0x40

.field public static final e_coreShapeBit:I = 0x4

.field public static final e_jointBit:I = 0x2

.field public static final e_obbBit:I = 0x10

.field public static final e_pairBit:I = 0x20

.field public static final e_shapeBit:I = 0x1


# instance fields
.field protected m_drawFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    .line 53
    return-void
.end method


# virtual methods
.method public appendFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 64
    iget v0, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    .line 65
    return-void
.end method

.method public clearFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    .line 69
    return-void
.end method

.method public abstract drawCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawPoint(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawSolidCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawSolidPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawString(FFLjava/lang/String;Lorg/jbox2d/common/Color3f;)V
.end method

.method public abstract drawXForm(Lorg/jbox2d/common/XForm;)V
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    return v0
.end method

.method public screenToWorld(FF)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "screenx"    # F
    .param p2, "screeny"    # F

    .prologue
    .line 122
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public screenToWorld(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 2
    .param p1, "screenV"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 113
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/jbox2d/dynamics/DebugDraw;->screenToWorld(FF)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public setCamera(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scale"    # F

    .prologue
    .line 106
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/jbox2d/dynamics/DebugDraw;->m_drawFlags:I

    .line 57
    return-void
.end method

.method public worldToScreen(FF)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "worldx"    # F
    .param p2, "worldy"    # F

    .prologue
    .line 140
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public worldToScreen(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 2
    .param p1, "worldV"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 130
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/jbox2d/dynamics/DebugDraw;->worldToScreen(FF)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    goto :goto_0
.end method
