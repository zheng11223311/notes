.class public Lorg/jbox2d/dynamics/Body;
.super Ljava/lang/Object;
.source "Body.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final e_allowSleepFlag:I = 0x10

.field public static final e_bulletFlag:I = 0x20

.field public static final e_dynamicType:I = 0x1

.field public static final e_fixedRotationFlag:I = 0x40

.field public static final e_frozenFlag:I = 0x2

.field public static final e_islandFlag:I = 0x4

.field public static final e_maxTypes:I = 0x2

.field public static final e_sleepFlag:I = 0x8

.field public static final e_staticType:I


# instance fields
.field public m_I:F

.field public m_angularDamping:F

.field public m_angularVelocity:F

.field public m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public m_flags:I

.field public m_force:Lorg/jbox2d/common/Vec2;

.field public m_invI:F

.field public m_invMass:F

.field public m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public m_linearDamping:F

.field public m_linearVelocity:Lorg/jbox2d/common/Vec2;

.field public m_mass:F

.field public m_next:Lorg/jbox2d/dynamics/Body;

.field public m_prev:Lorg/jbox2d/dynamics/Body;

.field public m_shapeCount:I

.field public m_shapeList:Lorg/jbox2d/collision/Shape;

.field public m_sleepTime:F

.field public m_sweep:Lorg/jbox2d/common/Sweep;

.field public m_torque:F

.field public m_type:I

.field public m_userData:Ljava/lang/Object;

.field public m_world:Lorg/jbox2d/dynamics/World;

.field public m_xf:Lorg/jbox2d/common/XForm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/BodyDef;Lorg/jbox2d/dynamics/World;)V
    .locals 7
    .param p1, "bd"    # Lorg/jbox2d/dynamics/BodyDef;
    .param p2, "world"    # Lorg/jbox2d/dynamics/World;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-boolean v0, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 118
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->isBullet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 119
    :cond_1
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->fixedRotation:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 120
    :cond_2
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->allowSleep:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 121
    :cond_3
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/BodyDef;->isSleeping:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 123
    :cond_4
    iput-object p2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    .line 125
    new-instance v0, Lorg/jbox2d/common/XForm;

    invoke-direct {v0}, Lorg/jbox2d/common/XForm;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    .line 127
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 128
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget v1, p1, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Mat22;->set(F)V

    .line 130
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    .line 131
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    iget-object v1, v1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 132
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iput v5, v0, Lorg/jbox2d/common/Sweep;->t0:F

    .line 133
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v2, p1, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    iput v2, v1, Lorg/jbox2d/common/Sweep;->a:F

    iput v2, v0, Lorg/jbox2d/common/Sweep;->a0:F

    .line 134
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 135
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 137
    iput-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 138
    iput-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 139
    iput-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 140
    iput-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 142
    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->linearDamping:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearDamping:F

    .line 143
    iget v0, p1, Lorg/jbox2d/dynamics/BodyDef;->angularDamping:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularDamping:F

    .line 145
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v3, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    .line 146
    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 148
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v3, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 149
    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 151
    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 153
    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 154
    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 155
    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 157
    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    iget v0, v0, Lorg/jbox2d/collision/MassData;->mass:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 159
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 160
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    div-float v0, v5, v0

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 163
    :cond_5
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_6

    .line 164
    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    iget v0, v0, Lorg/jbox2d/collision/MassData;->I:F

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 167
    :cond_6
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 168
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    div-float v0, v5, v0

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 171
    :cond_7
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_8

    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_8

    .line 172
    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    .line 177
    :goto_0
    iget-object v0, p1, Lorg/jbox2d/dynamics/BodyDef;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    .line 179
    iput-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .line 180
    iput v6, p0, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    .line 182
    return-void

    .line 174
    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    goto :goto_0
.end method


# virtual methods
.method public advance(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 758
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Sweep;->advance(F)V

    .line 759
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 760
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v1, v1, Lorg/jbox2d/common/Sweep;->a0:F

    iput v1, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 761
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 762
    return-void
.end method

.method public allowSleeping(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 646
    if-eqz p1, :cond_0

    .line 647
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 652
    :goto_0
    return-void

    .line 649
    :cond_0
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 650
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    goto :goto_0
.end method

.method public applyForce(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 2
    .param p1, "force"    # Lorg/jbox2d/common/Vec2;
    .param p2, "point"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 527
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 528
    return-void
.end method

.method public applyImpulse(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 4
    .param p1, "impulse"    # Lorg/jbox2d/common/Vec2;
    .param p2, "point"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 551
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 552
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v2}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 553
    return-void
.end method

.method public applyTorque(F)V
    .locals 1
    .param p1, "torque"    # F

    .prologue
    .line 537
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 538
    :cond_0
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 539
    return-void
.end method

.method public computeMass()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method public createShape(Lorg/jbox2d/collision/ShapeDef;)Lorg/jbox2d/collision/Shape;
    .locals 3
    .param p1, "def"    # Lorg/jbox2d/collision/ShapeDef;

    .prologue
    .line 190
    sget-boolean v1, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v1, v1, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 192
    :cond_0
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v1, v1, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v1, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-static {p1}, Lorg/jbox2d/collision/Shape;->create(Lorg/jbox2d/collision/ShapeDef;)Lorg/jbox2d/collision/Shape;

    move-result-object v0

    .line 198
    .local v0, "s":Lorg/jbox2d/collision/Shape;
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    iput-object v1, v0, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    .line 199
    iput-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .line 200
    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    .line 202
    iput-object p0, v0, Lorg/jbox2d/collision/Shape;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 205
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v1, v1, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/Shape;->createProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V

    .line 208
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v1, v1, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/Shape;->updateSweepRadius(Lorg/jbox2d/common/Vec2;)V

    goto :goto_0
.end method

.method public destroyShape(Lorg/jbox2d/collision/Shape;)V
    .locals 5
    .param p1, "s"    # Lorg/jbox2d/collision/Shape;

    .prologue
    const/4 v4, 0x0

    .line 221
    sget-boolean v3, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v3, v3, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 222
    :cond_0
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v3, v3, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v3, :cond_1

    .line 275
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-boolean v3, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v3

    if-eq v3, p0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 227
    :cond_2
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v3, v3, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {p1, v3}, Lorg/jbox2d/collision/Shape;->destroyProxy(Lorg/jbox2d/collision/BroadPhase;)V

    .line 229
    sget-boolean v3, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    if-gtz v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 233
    :cond_3
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .line 234
    .local v1, "node":Lorg/jbox2d/collision/Shape;
    const/4 v2, 0x0

    .line 235
    .local v2, "prevNode":Lorg/jbox2d/collision/Shape;
    const/4 v0, 0x0

    .line 236
    .local v0, "found":Z
    :goto_1
    if-nez v1, :cond_4

    .line 268
    :goto_2
    sget-boolean v3, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 237
    :cond_4
    if-ne v1, p1, :cond_6

    .line 238
    if-nez v2, :cond_5

    .line 239
    iget-object v3, p1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    iput-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .line 240
    const/4 v0, 0x1

    .line 241
    goto :goto_2

    .line 243
    :cond_5
    iget-object v3, p1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    iput-object v3, v2, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    .line 244
    const/4 v0, 0x1

    .line 245
    goto :goto_2

    .line 248
    :cond_6
    move-object v2, v1

    .line 249
    iget-object v1, v1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_1

    .line 270
    :cond_7
    iput-object v4, p1, Lorg/jbox2d/collision/Shape;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 271
    iput-object v4, p1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    .line 273
    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    .line 274
    invoke-static {p1}, Lorg/jbox2d/collision/Shape;->destroy(Lorg/jbox2d/collision/Shape;)V

    goto :goto_0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    return v0
.end method

.method public getAngularVelocity()F
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    return v0
.end method

.method public getInertia()F
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    return v0
.end method

.method public getJointList()Lorg/jbox2d/dynamics/joints/JointEdge;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    return-object v0
.end method

.method public getLinearVelocity()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "localPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 779
    invoke-virtual {p0, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getLinearVelocityFromWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 3
    .param p1, "worldPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 770
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v2}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCenter()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "worldPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 595
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-static {v0, p1}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getLocalVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "worldVector"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 604
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-static {v0, p1}, Lorg/jbox2d/common/Mat22;->mulT(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getMass()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    return v0
.end method

.method public getNext()Lorg/jbox2d/dynamics/Body;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getPosition()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getShapeList()Lorg/jbox2d/collision/Shape;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWorld()Lorg/jbox2d/dynamics/World;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    return-object v0
.end method

.method public getWorldCenter()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "localPoint"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 577
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-static {v0, p1}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getWorldVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "localVector"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 586
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-static {v0, p1}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getXForm()Lorg/jbox2d/common/XForm;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Lorg/jbox2d/common/XForm;

    invoke-direct {v0}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 454
    .local v0, "xf":Lorg/jbox2d/common/XForm;
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/XForm;->set(Lorg/jbox2d/common/XForm;)V

    .line 455
    return-object v0
.end method

.method public isBullet()Z
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected(Lorg/jbox2d/dynamics/Body;)Z
    .locals 3
    .param p1, "other"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    const/4 v1, 0x0

    .line 746
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .local v0, "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    :goto_0
    if-nez v0, :cond_1

    .line 752
    :cond_0
    :goto_1
    return v1

    .line 747
    :cond_1
    iget-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    if-ne v2, p1, :cond_2

    .line 749
    iget-object v2, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    iget-boolean v2, v2, Lorg/jbox2d/dynamics/joints/Joint;->m_collideConnected:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 746
    :cond_2
    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 631
    iget v1, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSleeping()Z
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putToSleep()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 788
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 789
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 790
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 791
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 792
    iput v1, p0, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 793
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 0
    .param p1, "omega"    # F

    .prologue
    .line 506
    iput p1, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 507
    return-void
.end method

.method public setBullet(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_0
.end method

.method public setLinearVelocity(Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 490
    iget-object v0, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 491
    return-void
.end method

.method public setMass(Lorg/jbox2d/collision/MassData;)V
    .locals 6
    .param p1, "massData"    # Lorg/jbox2d/collision/MassData;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 284
    sget-boolean v2, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v2, v2, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 285
    :cond_0
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v2, v2, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v2, :cond_2

    .line 329
    :cond_1
    return-void

    .line 287
    :cond_2
    iput v5, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 288
    iput v5, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 289
    iput v5, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 291
    iget v2, p1, Lorg/jbox2d/collision/MassData;->mass:F

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 293
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 294
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    div-float v2, v3, v2

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 297
    :cond_3
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_4

    .line 298
    iget v2, p1, Lorg/jbox2d/collision/MassData;->I:F

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 301
    :cond_4
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 302
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    div-float v2, v3, v2

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 306
    :cond_5
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 307
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v4}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 308
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v3, v3, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 311
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .local v1, "s":Lorg/jbox2d/collision/Shape;
    :goto_0
    if-nez v1, :cond_6

    .line 315
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    .line 316
    .local v0, "oldType":I
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_7

    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_7

    .line 317
    const/4 v2, 0x0

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    .line 323
    :goto_1
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    if-eq v0, v2, :cond_1

    .line 324
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    :goto_2
    if-eqz v1, :cond_1

    .line 326
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v2, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-virtual {v1, v2, v3}, Lorg/jbox2d/collision/Shape;->refilterProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V

    .line 324
    iget-object v1, v1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_2

    .line 312
    .end local v0    # "oldType":I
    :cond_6
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Shape;->updateSweepRadius(Lorg/jbox2d/common/Vec2;)V

    .line 311
    iget-object v1, v1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_0

    .line 319
    .restart local v0    # "oldType":I
    :cond_7
    const/4 v2, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    goto :goto_1
.end method

.method public setMassFromShapes()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 337
    sget-boolean v4, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v4, v4, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 338
    :cond_0
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v4, v4, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v4, :cond_2

    .line 396
    :cond_1
    return-void

    .line 341
    :cond_2
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 342
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 343
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 344
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 346
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v7, v7}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 347
    .local v0, "center":Lorg/jbox2d/common/Vec2;
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .local v3, "s":Lorg/jbox2d/collision/Shape;
    :goto_0
    if-nez v3, :cond_4

    .line 357
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    .line 358
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    div-float v4, v8, v4

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 359
    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v5, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v4, v5

    iput v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 360
    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v5, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v4, v5

    iput v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 363
    :cond_3
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_6

    .line 365
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    iget v5, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    invoke-static {v0, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 366
    sget-boolean v4, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 348
    :cond_4
    new-instance v1, Lorg/jbox2d/collision/MassData;

    invoke-direct {v1}, Lorg/jbox2d/collision/MassData;-><init>()V

    .line 349
    .local v1, "massData":Lorg/jbox2d/collision/MassData;
    invoke-virtual {v3, v1}, Lorg/jbox2d/collision/Shape;->computeMass(Lorg/jbox2d/collision/MassData;)V

    .line 350
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    iget v5, v1, Lorg/jbox2d/collision/MassData;->mass:F

    add-float/2addr v4, v5

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 351
    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v5, v1, Lorg/jbox2d/collision/MassData;->mass:F

    iget-object v6, v1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 352
    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v5, v1, Lorg/jbox2d/collision/MassData;->mass:F

    iget-object v6, v1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 353
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    iget v5, v1, Lorg/jbox2d/collision/MassData;->I:F

    add-float/2addr v4, v5

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 347
    iget-object v3, v3, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_0

    .line 367
    .end local v1    # "massData":Lorg/jbox2d/collision/MassData;
    :cond_5
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    div-float v4, v8, v4

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 374
    :goto_1
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 375
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v6}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 376
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 379
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    :goto_2
    if-nez v3, :cond_7

    .line 383
    iget v2, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    .line 384
    .local v2, "oldType":I
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_8

    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_8

    .line 385
    const/4 v4, 0x0

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    .line 391
    :goto_3
    iget v4, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    if-eq v2, v4, :cond_1

    .line 392
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    :goto_4
    if-eqz v3, :cond_1

    .line 393
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v4, v4, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-virtual {v3, v4, v5}, Lorg/jbox2d/collision/Shape;->refilterProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V

    .line 392
    iget-object v3, v3, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_4

    .line 369
    .end local v2    # "oldType":I
    :cond_6
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_I:F

    .line 370
    iput v7, p0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    goto :goto_1

    .line 380
    :cond_7
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/collision/Shape;->updateSweepRadius(Lorg/jbox2d/common/Vec2;)V

    .line 379
    iget-object v3, v3, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_2

    .line 387
    .restart local v2    # "oldType":I
    :cond_8
    const/4 v4, 0x1

    iput v4, p0, Lorg/jbox2d/dynamics/Body;->m_type:I

    goto :goto_3
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 796
    iput-object p1, p0, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    .line 797
    return-void
.end method

.method public setXForm(Lorg/jbox2d/common/Vec2;F)Z
    .locals 8
    .param p1, "position"    # Lorg/jbox2d/common/Vec2;
    .param p2, "angle"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 408
    sget-boolean v5, Lorg/jbox2d/dynamics/Body;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v5, v5, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v5, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 409
    :cond_0
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-boolean v5, v5, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v5, :cond_1

    .line 445
    :goto_0
    return v3

    .line 410
    :cond_1
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/Body;->isFrozen()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 412
    :cond_2
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v5, v5, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v5, p2}, Lorg/jbox2d/common/Mat22;->set(F)V

    .line 413
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v5, v5, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 415
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-static {v6, v7}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 416
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 417
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iput p2, v6, Lorg/jbox2d/common/Sweep;->a:F

    iput p2, v5, Lorg/jbox2d/common/Sweep;->a0:F

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "freeze":Z
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .local v2, "s":Lorg/jbox2d/collision/Shape;
    :goto_1
    if-nez v2, :cond_3

    .line 430
    :goto_2
    if-eqz v0, :cond_6

    .line 431
    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 432
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 433
    const/4 v3, 0x0

    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 434
    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    :goto_3
    if-nez v2, :cond_5

    move v3, v4

    .line 439
    goto :goto_0

    .line 422
    :cond_3
    iget-object v5, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v5, v5, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v7, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-virtual {v2, v5, v6, v7}, Lorg/jbox2d/collision/Shape;->synchronize(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)Z

    move-result v1

    .line 424
    .local v1, "inRange":Z
    if-nez v1, :cond_4

    .line 425
    const/4 v0, 0x1

    .line 426
    goto :goto_2

    .line 421
    :cond_4
    iget-object v2, v2, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_1

    .line 435
    .end local v1    # "inRange":Z
    :cond_5
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v3, v3, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/Shape;->destroyProxy(Lorg/jbox2d/collision/BroadPhase;)V

    .line 434
    iget-object v2, v2, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_3

    .line 443
    :cond_6
    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v4, v4, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v4}, Lorg/jbox2d/collision/BroadPhase;->commit()V

    goto :goto_0
.end method

.method public synchronizeShapes()Z
    .locals 7

    .prologue
    .line 704
    new-instance v2, Lorg/jbox2d/common/XForm;

    invoke-direct {v2}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 705
    .local v2, "xf1":Lorg/jbox2d/common/XForm;
    iget-object v3, v2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v4, v4, Lorg/jbox2d/common/Sweep;->a0:F

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Mat22;->set(F)V

    .line 706
    iget-object v3, v2, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v4, v4, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v5, v2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v6, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v6}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 708
    const/4 v0, 0x1

    .line 709
    .local v0, "inRange":Z
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .local v1, "s":Lorg/jbox2d/collision/Shape;
    :goto_0
    if-nez v1, :cond_1

    .line 714
    :cond_0
    if-nez v0, :cond_3

    .line 715
    iget v3, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 716
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 717
    const/4 v3, 0x0

    iput v3, p0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 718
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    :goto_1
    if-nez v1, :cond_2

    .line 723
    const/4 v3, 0x0

    .line 727
    :goto_2
    return v3

    .line 710
    :cond_1
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v3, v3, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-virtual {v1, v3, v2, v4}, Lorg/jbox2d/collision/Shape;->synchronize(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)Z

    move-result v0

    .line 711
    if-eqz v0, :cond_0

    .line 709
    iget-object v1, v1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_0

    .line 719
    :cond_2
    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v3, v3, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v1, v3}, Lorg/jbox2d/collision/Shape;->destroyProxy(Lorg/jbox2d/collision/BroadPhase;)V

    .line 718
    iget-object v1, v1, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_1

    .line 727
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public synchronizeTransform()V
    .locals 6

    .prologue
    .line 732
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v1, v1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v2, v2, Lorg/jbox2d/common/Sweep;->a:F

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Mat22;->set(F)V

    .line 734
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v0, v1, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    .line 735
    .local v0, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v1, v1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v3, v3, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v4, v4, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget v5, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 736
    iget-object v1, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v1, v1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v2, v2, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v3, v3, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v4, v4, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget v5, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 738
    return-void
.end method

.method public wakeUp()V
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 658
    return-void
.end method
