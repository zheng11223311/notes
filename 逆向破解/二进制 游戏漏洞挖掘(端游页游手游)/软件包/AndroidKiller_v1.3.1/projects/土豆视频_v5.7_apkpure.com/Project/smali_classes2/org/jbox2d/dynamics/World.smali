.class public Lorg/jbox2d/dynamics/World;
.super Ljava/lang/Object;
.source "World.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field m_allowSleep:Z

.field m_bodyCount:I

.field m_bodyList:Lorg/jbox2d/dynamics/Body;

.field m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

.field m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

.field m_contactCount:I

.field m_contactFilter:Lorg/jbox2d/dynamics/ContactFilter;

.field m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

.field m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

.field m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

.field m_continuousPhysics:Z

.field m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

.field m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

.field m_gravity:Lorg/jbox2d/common/Vec2;

.field m_groundBody:Lorg/jbox2d/dynamics/Body;

.field private m_inv_dt0:F

.field m_jointCount:I

.field m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

.field m_lock:Z

.field m_positionCorrection:Z

.field m_positionIterationCount:I

.field m_warmStarting:Z

.field private postStepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/dynamics/Steppable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/jbox2d/dynamics/World;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;Z)V
    .locals 4
    .param p1, "worldAABB"    # Lorg/jbox2d/collision/AABB;
    .param p2, "gravity"    # Lorg/jbox2d/common/Vec2;
    .param p3, "doSleep"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_positionCorrection:Z

    .line 165
    iput-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    .line 166
    iput-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    .line 167
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

    .line 168
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

    .line 169
    sget-object v1, Lorg/jbox2d/dynamics/ContactFilter;->DEFAULT_FILTER:Lorg/jbox2d/dynamics/ContactFilter;

    iput-object v1, p0, Lorg/jbox2d/dynamics/World;->m_contactFilter:Lorg/jbox2d/dynamics/ContactFilter;

    .line 170
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    .line 171
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/dynamics/World;->m_inv_dt0:F

    .line 175
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .line 176
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 177
    iput-object v2, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .line 179
    iput v3, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    .line 180
    iput v3, p0, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    .line 181
    iput v3, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    .line 183
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    .line 185
    iput-boolean p3, p0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    .line 187
    iput-object p2, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    .line 189
    new-instance v1, Lorg/jbox2d/dynamics/ContactManager;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/ContactManager;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    .line 190
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    iput-object p0, v1, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    .line 191
    new-instance v1, Lorg/jbox2d/collision/BroadPhase;

    iget-object v2, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    invoke-direct {v1, p1, v2}, Lorg/jbox2d/collision/BroadPhase;-><init>(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/PairCallback;)V

    iput-object v1, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    .line 193
    new-instance v0, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 194
    .local v0, "bd":Lorg/jbox2d/dynamics/BodyDef;
    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    iput-object v1, p0, Lorg/jbox2d/dynamics/World;->m_groundBody:Lorg/jbox2d/dynamics/Body;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/dynamics/World;->postStepList:Ljava/util/ArrayList;

    .line 196
    return-void
.end method

.method private postStep(FI)V
    .locals 3
    .param p1, "dt"    # F
    .param p2, "iterations"    # I

    .prologue
    .line 491
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->postStepList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    return-void

    .line 491
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/Steppable;

    .line 492
    .local v0, "s":Lorg/jbox2d/dynamics/Steppable;
    invoke-interface {v0, p1, p2}, Lorg/jbox2d/dynamics/Steppable;->step(FI)V

    goto :goto_0
.end method


# virtual methods
.method public createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;
    .locals 3
    .param p1, "def"    # Lorg/jbox2d/dynamics/BodyDef;

    .prologue
    const/4 v1, 0x0

    .line 238
    sget-boolean v2, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 239
    :cond_0
    iget-boolean v2, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 254
    :goto_0
    return-object v0

    .line 243
    :cond_1
    new-instance v0, Lorg/jbox2d/dynamics/Body;

    invoke-direct {v0, p1, p0}, Lorg/jbox2d/dynamics/Body;-><init>(Lorg/jbox2d/dynamics/BodyDef;Lorg/jbox2d/dynamics/World;)V

    .line 246
    .local v0, "b":Lorg/jbox2d/dynamics/Body;
    iput-object v1, v0, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 247
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    iput-object v1, v0, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 248
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    iput-object v0, v1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 251
    :cond_2
    iput-object v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .line 252
    iget v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    goto :goto_0
.end method

.method public createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;
    .locals 6
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/JointDef;

    .prologue
    const/4 v5, 0x0

    .line 321
    sget-boolean v3, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 323
    :cond_0
    invoke-static {p1}, Lorg/jbox2d/dynamics/joints/Joint;->create(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v1

    .line 326
    .local v1, "j":Lorg/jbox2d/dynamics/joints/Joint;
    iput-object v5, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 327
    iget-object v3, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    .line 328
    iget-object v3, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v1, v3, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 331
    :cond_1
    iput-object v1, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .line 332
    iget v3, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    .line 335
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v1, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 336
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 337
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 338
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 339
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 342
    :cond_2
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v3, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 344
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v1, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 345
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 346
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 347
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 348
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v3, :cond_3

    .line 349
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v3, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 351
    :cond_3
    iget-object v3, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v4, v3, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 354
    iget-boolean v3, p1, Lorg/jbox2d/dynamics/joints/JointDef;->collideConnected:Z

    if-nez v3, :cond_4

    .line 356
    iget-object v3, p1, Lorg/jbox2d/dynamics/joints/JointDef;->body1:Lorg/jbox2d/dynamics/Body;

    iget v3, v3, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/JointDef;->body2:Lorg/jbox2d/dynamics/Body;

    iget v4, v4, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    if-ge v3, v4, :cond_5

    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->body1:Lorg/jbox2d/dynamics/Body;

    .line 358
    .local v0, "b":Lorg/jbox2d/dynamics/Body;
    :goto_0
    iget-object v2, v0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .local v2, "s":Lorg/jbox2d/collision/Shape;
    :goto_1
    if-nez v2, :cond_6

    .line 363
    .end local v0    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v2    # "s":Lorg/jbox2d/collision/Shape;
    :cond_4
    return-object v1

    .line 357
    :cond_5
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->body2:Lorg/jbox2d/dynamics/Body;

    goto :goto_0

    .line 359
    .restart local v0    # "b":Lorg/jbox2d/dynamics/Body;
    .restart local v2    # "s":Lorg/jbox2d/collision/Shape;
    :cond_6
    iget-object v3, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jbox2d/collision/Shape;->refilterProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V

    .line 358
    iget-object v2, v2, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_1
.end method

.method public destroyBody(Lorg/jbox2d/dynamics/Body;)V
    .locals 6
    .param p1, "b"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 264
    sget-boolean v4, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget v4, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 265
    :cond_0
    sget-boolean v4, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 266
    :cond_1
    iget-boolean v4, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v4, :cond_2

    .line 313
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v0, p1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 272
    .local v0, "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    :goto_1
    if-nez v0, :cond_6

    .line 285
    iget-object v2, p1, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .line 286
    .local v2, "s":Lorg/jbox2d/collision/Shape;
    :goto_2
    if-nez v2, :cond_8

    .line 299
    iget-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    if-eqz v4, :cond_3

    .line 300
    iget-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    iget-object v5, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    iput-object v5, v4, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    .line 303
    :cond_3
    iget-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    if-eqz v4, :cond_4

    .line 304
    iget-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    iget-object v5, p1, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    iput-object v5, v4, Lorg/jbox2d/dynamics/Body;->m_prev:Lorg/jbox2d/dynamics/Body;

    .line 307
    :cond_4
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    if-ne p1, v4, :cond_5

    .line 308
    iget-object v4, p1, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    iput-object v4, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .line 311
    :cond_5
    iget v4, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    goto :goto_0

    .line 273
    .end local v2    # "s":Lorg/jbox2d/collision/Shape;
    :cond_6
    move-object v1, v0

    .line 274
    .local v1, "jn0":Lorg/jbox2d/dynamics/joints/JointEdge;
    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 276
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

    if-eqz v4, :cond_7

    .line 277
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

    iget-object v5, v1, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-interface {v4, v5}, Lorg/jbox2d/dynamics/DestructionListener;->sayGoodbye(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 280
    :cond_7
    iget-object v4, v1, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {p0, v4}, Lorg/jbox2d/dynamics/World;->destroyJoint(Lorg/jbox2d/dynamics/joints/Joint;)V

    goto :goto_1

    .line 287
    .end local v1    # "jn0":Lorg/jbox2d/dynamics/joints/JointEdge;
    .restart local v2    # "s":Lorg/jbox2d/collision/Shape;
    :cond_8
    move-object v3, v2

    .line 288
    .local v3, "s0":Lorg/jbox2d/collision/Shape;
    iget-object v2, v2, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    .line 290
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

    if-eqz v4, :cond_9

    .line 291
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

    invoke-interface {v4, v3}, Lorg/jbox2d/dynamics/DestructionListener;->sayGoodbye(Lorg/jbox2d/collision/Shape;)V

    .line 294
    :cond_9
    iget-object v4, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v3, v4}, Lorg/jbox2d/collision/Shape;->destroyProxy(Lorg/jbox2d/collision/BroadPhase;)V

    .line 295
    invoke-static {v3}, Lorg/jbox2d/collision/Shape;->destroy(Lorg/jbox2d/collision/Shape;)V

    goto :goto_2
.end method

.method public destroyJoint(Lorg/jbox2d/dynamics/joints/Joint;)V
    .locals 8
    .param p1, "j"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    const/4 v7, 0x0

    .line 371
    sget-boolean v5, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 373
    :cond_0
    iget-boolean v3, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_collideConnected:Z

    .line 376
    .local v3, "collideConnected":Z
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v5, :cond_1

    .line 377
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    iget-object v6, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    .line 380
    :cond_1
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    if-eqz v5, :cond_2

    .line 381
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    iget-object v6, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 384
    :cond_2
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    if-ne p1, v5, :cond_3

    .line 385
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v5, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .line 389
    :cond_3
    iget-object v1, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 390
    .local v1, "body1":Lorg/jbox2d/dynamics/Body;
    iget-object v2, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 393
    .local v2, "body2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 394
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 397
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v5, :cond_4

    .line 398
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v6, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 401
    :cond_4
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v5, :cond_5

    .line 402
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v6, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 405
    :cond_5
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-ne v5, v6, :cond_6

    .line 406
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v1, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 409
    :cond_6
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v7, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 410
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v7, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 413
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v5, :cond_7

    .line 414
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v6, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 417
    :cond_7
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-eqz v5, :cond_8

    .line 418
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v6, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 421
    :cond_8
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v6, v2, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    if-ne v5, v6, :cond_9

    .line 422
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v5, v2, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 425
    :cond_9
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v7, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 426
    iget-object v5, p1, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    iput-object v7, v5, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 428
    invoke-static {p1}, Lorg/jbox2d/dynamics/joints/Joint;->destroy(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 430
    sget-boolean v5, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    iget v5, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    if-gtz v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 431
    :cond_a
    iget v5, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    .line 434
    if-nez v3, :cond_b

    .line 436
    iget v5, v1, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    iget v6, v2, Lorg/jbox2d/dynamics/Body;->m_shapeCount:I

    if-ge v5, v6, :cond_c

    move-object v0, v1

    .line 437
    .local v0, "b":Lorg/jbox2d/dynamics/Body;
    :goto_0
    iget-object v4, v0, Lorg/jbox2d/dynamics/Body;->m_shapeList:Lorg/jbox2d/collision/Shape;

    .local v4, "s":Lorg/jbox2d/collision/Shape;
    :goto_1
    if-nez v4, :cond_d

    .line 441
    .end local v0    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v4    # "s":Lorg/jbox2d/collision/Shape;
    :cond_b
    return-void

    :cond_c
    move-object v0, v2

    .line 436
    goto :goto_0

    .line 438
    .restart local v0    # "b":Lorg/jbox2d/dynamics/Body;
    .restart local v4    # "s":Lorg/jbox2d/collision/Shape;
    :cond_d
    iget-object v5, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jbox2d/collision/Shape;->refilterProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V

    .line 437
    iget-object v4, v4, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    goto :goto_1
.end method

.method public drawDebugData()V
    .locals 36

    .prologue
    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 1130
    :cond_0
    return-void

    .line 987
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/jbox2d/dynamics/DebugDraw;->getFlags()I

    move-result v10

    .line 989
    .local v10, "flags":I
    and-int/lit8 v30, v10, 0x1

    if-eqz v30, :cond_2

    .line 991
    and-int/lit8 v30, v10, 0x4

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    const/4 v9, 0x1

    .line 993
    .local v9, "core":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v4, "b":Lorg/jbox2d/dynamics/Body;
    :goto_1
    if-nez v4, :cond_8

    .line 1009
    .end local v4    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v9    # "core":Z
    :cond_2
    and-int/lit8 v30, v10, 0x2

    if-eqz v30, :cond_3

    .line 1010
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .local v15, "j":Lorg/jbox2d/dynamics/joints/Joint;
    :goto_2
    if-nez v15, :cond_d

    .line 1017
    .end local v15    # "j":Lorg/jbox2d/dynamics/joints/Joint;
    :cond_3
    and-int/lit8 v30, v10, 0x20

    if-eqz v30, :cond_4

    .line 1018
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    .line 1019
    .local v7, "bp":Lorg/jbox2d/collision/BroadPhase;
    new-instance v14, Lorg/jbox2d/common/Vec2;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v14, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 1020
    .local v14, "invQ":Lorg/jbox2d/common/Vec2;
    const/high16 v30, 0x3f800000    # 1.0f

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    div-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 1021
    new-instance v8, Lorg/jbox2d/common/Color3f;

    const v30, 0x43658000    # 229.5f

    const v31, 0x43658000    # 229.5f

    const/high16 v32, 0x42990000    # 76.5f

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v8, v0, v1, v2}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    .line 1023
    .local v8, "color":Lorg/jbox2d/common/Color3f;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    const/16 v30, 0x4000

    move/from16 v0, v30

    if-lt v12, v0, :cond_f

    .line 1054
    .end local v7    # "bp":Lorg/jbox2d/collision/BroadPhase;
    .end local v8    # "color":Lorg/jbox2d/common/Color3f;
    .end local v12    # "i":I
    .end local v14    # "invQ":Lorg/jbox2d/common/Vec2;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    .line 1055
    .restart local v7    # "bp":Lorg/jbox2d/collision/BroadPhase;
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    .line 1056
    .local v25, "worldLower":Lorg/jbox2d/common/Vec2;
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    .line 1058
    .local v26, "worldUpper":Lorg/jbox2d/common/Vec2;
    and-int/lit8 v30, v10, 0x8

    if-eqz v30, :cond_5

    .line 1060
    new-instance v14, Lorg/jbox2d/common/Vec2;

    invoke-direct {v14}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 1061
    .restart local v14    # "invQ":Lorg/jbox2d/common/Vec2;
    const/high16 v30, 0x3f800000    # 1.0f

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    div-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_quantizationFactor:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 1062
    new-instance v8, Lorg/jbox2d/common/Color3f;

    const v30, 0x43658000    # 229.5f

    const/high16 v31, 0x42990000    # 76.5f

    const v32, 0x43658000    # 229.5f

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v8, v0, v1, v2}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    .line 1063
    .restart local v8    # "color":Lorg/jbox2d/common/Color3f;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    const/16 v30, 0x800

    move/from16 v0, v30

    if-lt v12, v0, :cond_11

    .line 1087
    .end local v8    # "color":Lorg/jbox2d/common/Color3f;
    .end local v12    # "i":I
    .end local v14    # "invQ":Lorg/jbox2d/common/Vec2;
    :cond_5
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    .line 1088
    .local v24, "vsw":[Lorg/jbox2d/common/Vec2;
    const/16 v30, 0x0

    new-instance v31, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v24, v30

    .line 1089
    const/16 v30, 0x1

    new-instance v31, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v24, v30

    .line 1090
    const/16 v30, 0x2

    new-instance v31, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v24, v30

    .line 1091
    const/16 v30, 0x3

    new-instance v31, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v24, v30

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    new-instance v32, Lorg/jbox2d/common/Color3f;

    const/high16 v33, 0x42990000    # 76.5f

    const v34, 0x43658000    # 229.5f

    const v35, 0x43658000    # 229.5f

    invoke-direct/range {v32 .. v35}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    .line 1094
    and-int/lit8 v30, v10, 0x10

    if-eqz v30, :cond_6

    .line 1095
    new-instance v8, Lorg/jbox2d/common/Color3f;

    const/high16 v30, 0x3f000000    # 0.5f

    const v31, 0x3e99999a    # 0.3f

    const/high16 v32, 0x3f000000    # 0.5f

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v8, v0, v1, v2}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    .line 1097
    .restart local v8    # "color":Lorg/jbox2d/common/Color3f;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .restart local v4    # "b":Lorg/jbox2d/dynamics/Body;
    :goto_5
    if-nez v4, :cond_13

    .line 1123
    .end local v4    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v8    # "color":Lorg/jbox2d/common/Color3f;
    :cond_6
    and-int/lit8 v30, v10, 0x40

    if-eqz v30, :cond_0

    .line 1124
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .restart local v4    # "b":Lorg/jbox2d/dynamics/Body;
    :goto_6
    if-eqz v4, :cond_0

    .line 1125
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v29

    .line 1126
    .local v29, "xf":Lorg/jbox2d/common/XForm;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getWorldCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/DebugDraw;->drawXForm(Lorg/jbox2d/common/XForm;)V

    .line 1124
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    goto :goto_6

    .line 991
    .end local v4    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v7    # "bp":Lorg/jbox2d/collision/BroadPhase;
    .end local v24    # "vsw":[Lorg/jbox2d/common/Vec2;
    .end local v25    # "worldLower":Lorg/jbox2d/common/Vec2;
    .end local v26    # "worldUpper":Lorg/jbox2d/common/Vec2;
    .end local v29    # "xf":Lorg/jbox2d/common/XForm;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 994
    .restart local v4    # "b":Lorg/jbox2d/dynamics/Body;
    .restart local v9    # "core":Z
    :cond_8
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v29

    .line 995
    .restart local v29    # "xf":Lorg/jbox2d/common/XForm;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getShapeList()Lorg/jbox2d/collision/Shape;

    move-result-object v22

    .local v22, "s":Lorg/jbox2d/collision/Shape;
    :goto_7
    if-nez v22, :cond_9

    .line 993
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    goto/16 :goto_1

    .line 996
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/collision/Shape;->isSensor()Z

    move-result v30

    if-eqz v30, :cond_a

    .line 995
    :goto_8
    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/collision/Shape;->getNext()Lorg/jbox2d/collision/Shape;

    move-result-object v22

    goto :goto_7

    .line 997
    :cond_a
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 998
    new-instance v30, Lorg/jbox2d/common/Color3f;

    const/high16 v31, 0x42ff0000    # 127.5f

    const v32, 0x43658000    # 229.5f

    const/high16 v33, 0x42ff0000    # 127.5f

    invoke-direct/range {v30 .. v33}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Color3f;Z)V

    goto :goto_8

    .line 1000
    :cond_b
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v30

    if-eqz v30, :cond_c

    .line 1001
    new-instance v30, Lorg/jbox2d/common/Color3f;

    const/high16 v31, 0x42ff0000    # 127.5f

    const/high16 v32, 0x42ff0000    # 127.5f

    const v33, 0x43658000    # 229.5f

    invoke-direct/range {v30 .. v33}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Color3f;Z)V

    goto :goto_8

    .line 1003
    :cond_c
    new-instance v30, Lorg/jbox2d/common/Color3f;

    const v31, 0x43658000    # 229.5f

    const v32, 0x43658000    # 229.5f

    const v33, 0x43658000    # 229.5f

    invoke-direct/range {v30 .. v33}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/jbox2d/dynamics/World;->drawShape(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Color3f;Z)V

    goto :goto_8

    .line 1011
    .end local v4    # "b":Lorg/jbox2d/dynamics/Body;
    .end local v9    # "core":Z
    .end local v22    # "s":Lorg/jbox2d/collision/Shape;
    .end local v29    # "xf":Lorg/jbox2d/common/XForm;
    .restart local v15    # "j":Lorg/jbox2d/dynamics/joints/Joint;
    :cond_d
    invoke-virtual {v15}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v30

    sget-object v31, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_e

    .line 1012
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/jbox2d/dynamics/World;->drawJoint(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 1010
    :cond_e
    invoke-virtual {v15}, Lorg/jbox2d/dynamics/joints/Joint;->getNext()Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v15

    goto/16 :goto_2

    .line 1024
    .end local v15    # "j":Lorg/jbox2d/dynamics/joints/Joint;
    .restart local v7    # "bp":Lorg/jbox2d/collision/BroadPhase;
    .restart local v8    # "color":Lorg/jbox2d/common/Color3f;
    .restart local v12    # "i":I
    .restart local v14    # "invQ":Lorg/jbox2d/common/Vec2;
    :cond_f
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/jbox2d/collision/PairManager;->m_hashTable:[I

    move-object/from16 v30, v0

    aget v13, v30, v12

    .line 1025
    .local v13, "index":I
    :goto_9
    const v30, 0x7fffffff

    move/from16 v0, v30

    if-ne v13, v0, :cond_10

    .line 1023
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1026
    :cond_10
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/jbox2d/collision/PairManager;->m_pairs:[Lorg/jbox2d/collision/Pair;

    move-object/from16 v30, v0

    aget-object v20, v30, v13

    .line 1027
    .local v20, "pair":Lorg/jbox2d/collision/Pair;
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/collision/Pair;->proxyId1:I

    move/from16 v31, v0

    aget-object v18, v30, v31

    .line 1028
    .local v18, "p1":Lorg/jbox2d/collision/Proxy;
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/collision/Pair;->proxyId2:I

    move/from16 v31, v0

    aget-object v19, v30, v31

    .line 1030
    .local v19, "p2":Lorg/jbox2d/collision/Proxy;
    new-instance v5, Lorg/jbox2d/collision/AABB;

    invoke-direct {v5}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 1031
    .local v5, "b1":Lorg/jbox2d/collision/AABB;
    new-instance v6, Lorg/jbox2d/collision/AABB;

    invoke-direct {v6}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 1032
    .local v6, "b2":Lorg/jbox2d/collision/AABB;
    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1033
    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1034
    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1035
    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1036
    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1037
    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1038
    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1039
    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1041
    new-instance v27, Lorg/jbox2d/common/Vec2;

    const/high16 v30, 0x3f000000    # 0.5f

    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    add-float v31, v31, v32

    mul-float v30, v30, v31

    .line 1042
    const/high16 v31, 0x3f000000    # 0.5f

    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v5, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    add-float v32, v32, v33

    mul-float v31, v31, v32

    .line 1041
    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 1043
    .local v27, "x1":Lorg/jbox2d/common/Vec2;
    new-instance v28, Lorg/jbox2d/common/Vec2;

    const/high16 v30, 0x3f000000    # 0.5f

    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    add-float v31, v31, v32

    mul-float v30, v30, v31

    .line 1044
    const/high16 v31, 0x3f000000    # 0.5f

    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v6, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    add-float v32, v32, v33

    mul-float v31, v31, v32

    .line 1043
    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 1046
    .local v28, "x2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v8}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 1048
    move-object/from16 v0, v20

    iget v13, v0, Lorg/jbox2d/collision/Pair;->next:I

    goto/16 :goto_9

    .line 1064
    .end local v5    # "b1":Lorg/jbox2d/collision/AABB;
    .end local v6    # "b2":Lorg/jbox2d/collision/AABB;
    .end local v13    # "index":I
    .end local v18    # "p1":Lorg/jbox2d/collision/Proxy;
    .end local v19    # "p2":Lorg/jbox2d/collision/Proxy;
    .end local v20    # "pair":Lorg/jbox2d/collision/Pair;
    .end local v27    # "x1":Lorg/jbox2d/common/Vec2;
    .end local v28    # "x2":Lorg/jbox2d/common/Vec2;
    .restart local v25    # "worldLower":Lorg/jbox2d/common/Vec2;
    .restart local v26    # "worldUpper":Lorg/jbox2d/common/Vec2;
    :cond_11
    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_proxyPool:[Lorg/jbox2d/collision/Proxy;

    move-object/from16 v30, v0

    aget-object v17, v30, v12

    .line 1065
    .local v17, "p":Lorg/jbox2d/collision/Proxy;
    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/collision/Proxy;->isValid()Z

    move-result v30

    if-nez v30, :cond_12

    .line 1063
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 1069
    :cond_12
    new-instance v4, Lorg/jbox2d/collision/AABB;

    invoke-direct {v4}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 1070
    .local v4, "b":Lorg/jbox2d/collision/AABB;
    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1071
    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->lowerBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1072
    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1073
    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget-object v0, v7, Lorg/jbox2d/collision/BroadPhase;->m_bounds:[[Lorg/jbox2d/collision/Bound;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/Proxy;->upperBounds:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/collision/Bound;->value:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1075
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 1076
    .local v23, "vs":[Lorg/jbox2d/common/Vec2;
    const/16 v30, 0x0

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1077
    const/16 v30, 0x1

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1078
    const/16 v30, 0x2

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1079
    const/16 v30, 0x3

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget-object v0, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lorg/jbox2d/dynamics/DebugDraw;->drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    goto/16 :goto_a

    .line 1098
    .end local v12    # "i":I
    .end local v14    # "invQ":Lorg/jbox2d/common/Vec2;
    .end local v17    # "p":Lorg/jbox2d/collision/Proxy;
    .end local v23    # "vs":[Lorg/jbox2d/common/Vec2;
    .local v4, "b":Lorg/jbox2d/dynamics/Body;
    .restart local v24    # "vsw":[Lorg/jbox2d/common/Vec2;
    :cond_13
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v29

    .line 1099
    .restart local v29    # "xf":Lorg/jbox2d/common/XForm;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getShapeList()Lorg/jbox2d/collision/Shape;

    move-result-object v22

    .restart local v22    # "s":Lorg/jbox2d/collision/Shape;
    :goto_b
    if-nez v22, :cond_14

    .line 1097
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    goto/16 :goto_5

    .line 1100
    :cond_14
    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v30

    sget-object v31, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_15

    .line 1099
    :goto_c
    invoke-virtual/range {v22 .. v22}, Lorg/jbox2d/collision/Shape;->getNext()Lorg/jbox2d/collision/Shape;

    move-result-object v22

    goto :goto_b

    :cond_15
    move-object/from16 v21, v22

    .line 1104
    check-cast v21, Lorg/jbox2d/collision/PolygonShape;

    .line 1105
    .local v21, "poly":Lorg/jbox2d/collision/PolygonShape;
    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/collision/PolygonShape;->getOBB()Lorg/jbox2d/collision/OBB;

    move-result-object v16

    .line 1106
    .local v16, "obb":Lorg/jbox2d/collision/OBB;
    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/jbox2d/collision/OBB;->extents:Lorg/jbox2d/common/Vec2;

    .line 1107
    .local v11, "h":Lorg/jbox2d/common/Vec2;
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 1108
    .restart local v23    # "vs":[Lorg/jbox2d/common/Vec2;
    const/16 v30, 0x0

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1109
    const/16 v30, 0x1

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1110
    const/16 v30, 0x2

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1111
    const/16 v30, 0x3

    new-instance v31, Lorg/jbox2d/common/Vec2;

    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    aput-object v31, v23, v30

    .line 1113
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_d
    const/16 v30, 0x4

    move/from16 v0, v30

    if-lt v12, v0, :cond_16

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lorg/jbox2d/dynamics/DebugDraw;->drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    goto/16 :goto_c

    .line 1114
    :cond_16
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jbox2d/collision/OBB;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    aget-object v32, v23, v12

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v30

    aput-object v30, v23, v12

    .line 1115
    aget-object v30, v23, v12

    invoke-static/range {v29 .. v30}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v30

    aput-object v30, v23, v12

    .line 1113
    add-int/lit8 v12, v12, 0x1

    goto :goto_d
.end method

.method public drawJoint(Lorg/jbox2d/dynamics/joints/Joint;)V
    .locals 17
    .param p1, "joint"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    .line 950
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/joints/Joint;->getBody1()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 951
    .local v1, "b1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/joints/Joint;->getBody2()Lorg/jbox2d/dynamics/Body;

    move-result-object v2

    .line 952
    .local v2, "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v12

    .line 953
    .local v12, "xf1":Lorg/jbox2d/common/XForm;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v13

    .line 954
    .local v13, "xf2":Lorg/jbox2d/common/XForm;
    iget-object v10, v12, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    .line 955
    .local v10, "x1":Lorg/jbox2d/common/Vec2;
    iget-object v11, v13, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    .line 956
    .local v11, "x2":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/joints/Joint;->getAnchor1()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 957
    .local v4, "p1":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/joints/Joint;->getAnchor2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 959
    .local v5, "p2":Lorg/jbox2d/common/Vec2;
    new-instance v3, Lorg/jbox2d/common/Color3f;

    const/high16 v14, 0x42ff0000    # 127.5f

    const/high16 v15, 0x434c0000    # 204.0f

    const/high16 v16, 0x434c0000    # 204.0f

    move/from16 v0, v16

    invoke-direct {v3, v14, v15, v0}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    .line 961
    .local v3, "color":Lorg/jbox2d/common/Color3f;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v9

    .line 963
    .local v9, "type":Lorg/jbox2d/dynamics/joints/JointType;
    sget-object v14, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v9, v14, :cond_1

    .line 964
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v4, v5, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    sget-object v14, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v9, v14, :cond_2

    move-object/from16 v6, p1

    .line 966
    check-cast v6, Lorg/jbox2d/dynamics/joints/PulleyJoint;

    .line 967
    .local v6, "pulley":Lorg/jbox2d/dynamics/joints/PulleyJoint;
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/joints/PulleyJoint;->getGroundAnchor1()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 968
    .local v7, "s1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/joints/PulleyJoint;->getGroundAnchor2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 969
    .local v8, "s2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v7, v4, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v8, v5, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v7, v8, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto :goto_0

    .line 972
    .end local v6    # "pulley":Lorg/jbox2d/dynamics/joints/PulleyJoint;
    .end local v7    # "s1":Lorg/jbox2d/common/Vec2;
    .end local v8    # "s2":Lorg/jbox2d/common/Vec2;
    :cond_2
    sget-object v14, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-eq v9, v14, :cond_0

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v10, v4, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v4, v5, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v14, v11, v5, v3}, Lorg/jbox2d/dynamics/DebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    goto :goto_0
.end method

.method public drawShape(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Color3f;Z)V
    .locals 15
    .param p1, "shape"    # Lorg/jbox2d/collision/Shape;
    .param p2, "xf"    # Lorg/jbox2d/common/XForm;
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;
    .param p4, "core"    # Z

    .prologue
    .line 909
    new-instance v4, Lorg/jbox2d/common/Color3f;

    const v12, 0x43658000    # 229.5f

    const/high16 v13, 0x43190000    # 153.0f

    const/high16 v14, 0x43190000    # 153.0f

    invoke-direct {v4, v12, v13, v14}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    .line 911
    .local v4, "coreColor":Lorg/jbox2d/common/Color3f;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v12

    sget-object v13, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v12, v13, :cond_1

    move-object/from16 v3, p1

    .line 912
    check-cast v3, Lorg/jbox2d/collision/CircleShape;

    .line 914
    .local v3, "circle":Lorg/jbox2d/collision/CircleShape;
    invoke-virtual {v3}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 915
    .local v2, "center":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v3}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v9

    .line 916
    .local v9, "radius":F
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v1, v12, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    .line 918
    .local v1, "axis":Lorg/jbox2d/common/Vec2;
    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v9, v1, v0}, Lorg/jbox2d/dynamics/DebugDraw;->drawSolidCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 920
    if-eqz p4, :cond_0

    .line 921
    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    const v13, 0x3d23d70a    # 0.04f

    sub-float v13, v9, v13

    invoke-virtual {v12, v2, v13, v4}, Lorg/jbox2d/dynamics/DebugDraw;->drawCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V

    .line 946
    .end local v1    # "axis":Lorg/jbox2d/common/Vec2;
    .end local v2    # "center":Lorg/jbox2d/common/Vec2;
    .end local v3    # "circle":Lorg/jbox2d/collision/CircleShape;
    .end local v9    # "radius":F
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v12

    sget-object v13, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v12, v13, :cond_0

    move-object/from16 v8, p1

    .line 924
    check-cast v8, Lorg/jbox2d/collision/PolygonShape;

    .line 925
    .local v8, "poly":Lorg/jbox2d/collision/PolygonShape;
    invoke-virtual {v8}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v10

    .line 926
    .local v10, "vertexCount":I
    invoke-virtual {v8}, Lorg/jbox2d/collision/PolygonShape;->getVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 928
    .local v7, "localVertices":[Lorg/jbox2d/common/Vec2;
    sget-boolean v12, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v12, :cond_2

    const/16 v12, 0x8

    if-le v10, v12, :cond_2

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 929
    :cond_2
    new-array v11, v10, [Lorg/jbox2d/common/Vec2;

    .line 931
    .local v11, "vertices":[Lorg/jbox2d/common/Vec2;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v10, :cond_3

    .line 935
    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    move-object/from16 v0, p3

    invoke-virtual {v12, v11, v10, v0}, Lorg/jbox2d/dynamics/DebugDraw;->drawSolidPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    .line 937
    if-eqz p4, :cond_0

    .line 938
    invoke-virtual {v8}, Lorg/jbox2d/collision/PolygonShape;->getCoreVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 939
    .local v6, "localCoreVertices":[Lorg/jbox2d/common/Vec2;
    const/4 v5, 0x0

    :goto_2
    if-lt v5, v10, :cond_4

    .line 942
    iget-object v12, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    invoke-virtual {v12, v11, v10, v4}, Lorg/jbox2d/dynamics/DebugDraw;->drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    goto :goto_0

    .line 932
    .end local v6    # "localCoreVertices":[Lorg/jbox2d/common/Vec2;
    :cond_3
    aget-object v12, v7, v5

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    aput-object v12, v11, v5

    .line 931
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 940
    .restart local v6    # "localCoreVertices":[Lorg/jbox2d/common/Vec2;
    :cond_4
    aget-object v12, v6, v5

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    aput-object v12, v11, v5

    .line 939
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getBodyCount()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    return v0
.end method

.method public getBodyList()Lorg/jbox2d/dynamics/Body;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    return v0
.end method

.method public getGravity()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getGroundBody()Lorg/jbox2d/dynamics/Body;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_groundBody:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getJointCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    return v0
.end method

.method public getJointList()Lorg/jbox2d/dynamics/joints/Joint;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    return-object v0
.end method

.method public getPairCount()I
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_pairManager:Lorg/jbox2d/collision/PairManager;

    iget v0, v0, Lorg/jbox2d/collision/PairManager;->m_pairCount:I

    return v0
.end method

.method public getProxyCount()I
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_proxyCount:I

    return v0
.end method

.method public getWorldAABB()Lorg/jbox2d/collision/AABB;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    iget-object v0, v0, Lorg/jbox2d/collision/BroadPhase;->m_worldAABB:Lorg/jbox2d/collision/AABB;

    return-object v0
.end method

.method public inRange(Lorg/jbox2d/collision/AABB;)Z
    .locals 1
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 1163
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v0, p1}, Lorg/jbox2d/collision/BroadPhase;->inRange(Lorg/jbox2d/collision/AABB;)Z

    move-result v0

    return v0
.end method

.method public query(Lorg/jbox2d/collision/AABB;I)[Lorg/jbox2d/collision/Shape;
    .locals 4
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "maxCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v2, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v2, p1, p2}, Lorg/jbox2d/collision/BroadPhase;->query(Lorg/jbox2d/collision/AABB;I)[Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, "objs":[Ljava/lang/Object;
    array-length v2, v0

    new-array v1, v2, [Lorg/jbox2d/collision/Shape;

    .line 531
    .local v1, "ret":[Lorg/jbox2d/collision/Shape;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    return-object v1
.end method

.method public refilter(Lorg/jbox2d/collision/Shape;)V
    .locals 2
    .param p1, "shape"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 517
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {p1}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jbox2d/collision/Shape;->refilterProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V

    .line 518
    return-void
.end method

.method public registerPostStep(Lorg/jbox2d/dynamics/Steppable;)V
    .locals 1
    .param p1, "s"    # Lorg/jbox2d/dynamics/Steppable;

    .prologue
    .line 503
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->postStepList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public setBoundaryListener(Lorg/jbox2d/dynamics/BoundaryListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/jbox2d/dynamics/BoundaryListener;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

    .line 206
    return-void
.end method

.method public setContactFilter(Lorg/jbox2d/dynamics/ContactFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/jbox2d/dynamics/ContactFilter;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_contactFilter:Lorg/jbox2d/dynamics/ContactFilter;

    .line 220
    return-void
.end method

.method public setContactListener(Lorg/jbox2d/dynamics/ContactListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    .line 211
    return-void
.end method

.method public setContinuousPhysics(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1139
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    return-void
.end method

.method public setDebugDraw(Lorg/jbox2d/dynamics/DebugDraw;)V
    .locals 0
    .param p1, "debugDraw"    # Lorg/jbox2d/dynamics/DebugDraw;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_debugDraw:Lorg/jbox2d/dynamics/DebugDraw;

    .line 229
    return-void
.end method

.method public setDestructionListener(Lorg/jbox2d/dynamics/DestructionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/jbox2d/dynamics/DestructionListener;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_destructionListener:Lorg/jbox2d/dynamics/DestructionListener;

    .line 201
    return-void
.end method

.method public setGravity(Lorg/jbox2d/common/Vec2;)V
    .locals 0
    .param p1, "gravity"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    .line 123
    return-void
.end method

.method public setPositionCorrection(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1136
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_positionCorrection:Z

    return-void
.end method

.method public setWarmStarting(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1133
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    return-void
.end method

.method public solve(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 22
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 548
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/World;->m_positionIterationCount:I

    .line 551
    new-instance v9, Lorg/jbox2d/dynamics/Island;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_jointCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/jbox2d/dynamics/Island;-><init>(IIILorg/jbox2d/dynamics/ContactListener;)V

    .line 554
    .local v9, "island":Lorg/jbox2d/dynamics/Island;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v4, "b":Lorg/jbox2d/dynamics/Body;
    :goto_0
    if-nez v4, :cond_0

    .line 557
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .local v5, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_1
    if-nez v5, :cond_1

    .line 560
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jbox2d/dynamics/World;->m_jointList:Lorg/jbox2d/dynamics/joints/Joint;

    .local v10, "j":Lorg/jbox2d/dynamics/joints/Joint;
    :goto_2
    if-nez v10, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    move/from16 v17, v0

    .line 566
    .local v17, "stackSize":I
    move/from16 v0, v17

    new-array v14, v0, [Lorg/jbox2d/dynamics/Body;

    .line 567
    .local v14, "stack":[Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v13, "seed":Lorg/jbox2d/dynamics/Body;
    :goto_3
    if-nez v13, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    :goto_4
    if-nez v4, :cond_12

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/collision/BroadPhase;->commit()V

    .line 684
    return-void

    .line 555
    .end local v5    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v10    # "j":Lorg/jbox2d/dynamics/joints/Joint;
    .end local v13    # "seed":Lorg/jbox2d/dynamics/Body;
    .end local v14    # "stack":[Lorg/jbox2d/dynamics/Body;
    .end local v17    # "stackSize":I
    :cond_0
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x5

    move/from16 v0, v18

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 554
    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_0

    .line 558
    .restart local v5    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_1
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x5

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 557
    iget-object v5, v5, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    goto :goto_1

    .line 561
    .restart local v10    # "j":Lorg/jbox2d/dynamics/joints/Joint;
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v10, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    .line 560
    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    goto :goto_2

    .line 568
    .restart local v13    # "seed":Lorg/jbox2d/dynamics/Body;
    .restart local v14    # "stack":[Lorg/jbox2d/dynamics/Body;
    .restart local v17    # "stackSize":I
    :cond_3
    iget v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-lez v18, :cond_5

    .line 567
    :cond_4
    iget-object v13, v13, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_3

    .line 572
    :cond_5
    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v18

    if-nez v18, :cond_4

    .line 577
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Island;->clear()V

    .line 578
    const/4 v15, 0x0

    .line 579
    .local v15, "stackCount":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "stackCount":I
    .local v16, "stackCount":I
    aput-object v13, v14, v15

    .line 580
    iget v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v13, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v15, v16

    .line 583
    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    :cond_6
    :goto_5
    if-gtz v15, :cond_8

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_gravity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/World;->m_positionCorrection:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/World;->m_allowSleep:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/jbox2d/dynamics/Island;->solve(Lorg/jbox2d/dynamics/TimeStep;Lorg/jbox2d/common/Vec2;ZZ)V

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_positionIterationCount:I

    move/from16 v18, v0

    sget v19, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/World;->m_positionIterationCount:I

    .line 648
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    iget v0, v9, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 650
    iget-object v0, v9, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    aget-object v4, v18, v7

    .line 651
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 652
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x5

    move/from16 v0, v18

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 648
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 585
    .end local v7    # "i":I
    :cond_8
    add-int/lit8 v15, v15, -0x1

    aget-object v4, v14, v15

    .line 586
    invoke-virtual {v9, v4}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/Body;)V

    .line 589
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x9

    move/from16 v0, v18

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 593
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v18

    if-nez v18, :cond_6

    .line 598
    iget-object v6, v4, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .local v6, "cn":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    move/from16 v16, v15

    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    :goto_7
    if-nez v6, :cond_9

    .line 624
    iget-object v11, v4, Lorg/jbox2d/dynamics/Body;->m_jointList:Lorg/jbox2d/dynamics/joints/JointEdge;

    .local v11, "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    :goto_8
    if-nez v11, :cond_e

    move/from16 v15, v16

    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    goto :goto_5

    .line 600
    .end local v11    # "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    :cond_9
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x5

    if-lez v18, :cond_a

    move/from16 v15, v16

    .line 598
    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    :goto_9
    iget-object v6, v6, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move/from16 v16, v15

    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_7

    .line 605
    :cond_a
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v18

    if-nez v18, :cond_b

    move/from16 v15, v16

    .line 606
    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    goto :goto_9

    .line 609
    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    :cond_b
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 610
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 613
    iget-object v12, v6, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 614
    .local v12, "other":Lorg/jbox2d/dynamics/Body;
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-lez v18, :cond_c

    move/from16 v15, v16

    .line 615
    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    goto :goto_9

    .line 618
    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    :cond_c
    sget-boolean v18, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v18, :cond_d

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_d

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 619
    :cond_d
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    aput-object v12, v14, v16

    .line 620
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_9

    .line 625
    .end local v12    # "other":Lorg/jbox2d/dynamics/Body;
    .end local v15    # "stackCount":I
    .restart local v11    # "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    .restart local v16    # "stackCount":I
    :cond_e
    iget-object v0, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move/from16 v15, v16

    .line 624
    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    :goto_a
    iget-object v11, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    move/from16 v16, v15

    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    goto :goto_8

    .line 629
    :cond_f
    iget-object v0, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/joints/Joint;)V

    .line 630
    iget-object v0, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    .line 632
    iget-object v12, v11, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 633
    .restart local v12    # "other":Lorg/jbox2d/dynamics/Body;
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-lez v18, :cond_10

    move/from16 v15, v16

    .line 634
    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    goto :goto_a

    .line 637
    .end local v15    # "stackCount":I
    .restart local v16    # "stackCount":I
    :cond_10
    sget-boolean v18, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v18, :cond_11

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_11

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 638
    :cond_11
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "stackCount":I
    .restart local v15    # "stackCount":I
    aput-object v12, v14, v16

    .line 639
    iget v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v12, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_a

    .line 661
    .end local v6    # "cn":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .end local v11    # "jn":Lorg/jbox2d/dynamics/joints/JointEdge;
    .end local v12    # "other":Lorg/jbox2d/dynamics/Body;
    .end local v15    # "stackCount":I
    :cond_12
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xa

    if-eqz v18, :cond_14

    .line 660
    :cond_13
    :goto_b
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getNext()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    goto/16 :goto_4

    .line 665
    :cond_14
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v18

    if-nez v18, :cond_13

    .line 672
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->synchronizeShapes()Z

    move-result v8

    .line 675
    .local v8, "inRange":Z
    if-nez v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/jbox2d/dynamics/BoundaryListener;->violation(Lorg/jbox2d/dynamics/Body;)V

    goto :goto_b
.end method

.method public solveTOI(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 29
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 690
    new-instance v11, Lorg/jbox2d/dynamics/Island;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    move/from16 v25, v0

    sget v26, Lorg/jbox2d/common/Settings;->maxTOIContactsPerIsland:I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    move-object/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/jbox2d/dynamics/Island;-><init>(IIILorg/jbox2d/dynamics/ContactListener;)V

    .line 691
    .local v11, "island":Lorg/jbox2d/dynamics/Island;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_bodyCount:I

    move/from16 v21, v0

    .line 692
    .local v21, "stackSize":I
    move/from16 v0, v21

    new-array v0, v0, [Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    .line 694
    .local v18, "stack":[Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/World;->m_bodyList:Lorg/jbox2d/dynamics/Body;

    .local v4, "b":Lorg/jbox2d/dynamics/Body;
    :goto_0
    if-nez v4, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .local v7, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_1
    if-nez v7, :cond_3

    .line 707
    :cond_0
    :goto_2
    const/4 v12, 0x0

    .line 708
    .local v12, "minContact":Lorg/jbox2d/dynamics/contacts/Contact;
    const/high16 v13, 0x3f800000    # 1.0f

    .line 710
    .local v13, "minTOI":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    :goto_3
    if-nez v7, :cond_4

    .line 764
    if-eqz v12, :cond_1

    const v25, 0x3f7fff38    # 0.9999881f

    cmpg-float v25, v25, v13

    if-gez v25, :cond_10

    .line 905
    :cond_1
    return-void

    .line 695
    .end local v7    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v12    # "minContact":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v13    # "minTOI":F
    :cond_2
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x5

    move/from16 v0, v25

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 696
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Sweep;->t0:F

    .line 694
    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_next:Lorg/jbox2d/dynamics/Body;

    goto :goto_0

    .line 701
    .restart local v7    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :cond_3
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0xd

    move/from16 v0, v25

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 699
    iget-object v7, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    goto :goto_1

    .line 711
    .restart local v12    # "minContact":Lorg/jbox2d/dynamics/contacts/Contact;
    .restart local v13    # "minTOI":F
    :cond_4
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x3

    if-eqz v25, :cond_6

    .line 710
    :cond_5
    :goto_4
    iget-object v7, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    goto :goto_3

    .line 716
    :cond_6
    const/high16 v24, 0x3f800000    # 1.0f

    .line 717
    .local v24, "toi":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_7

    .line 719
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_toi:F

    move/from16 v24, v0

    .line 755
    :goto_5
    const/high16 v25, 0x34000000

    cmpg-float v25, v25, v24

    if-gez v25, :cond_5

    cmpg-float v25, v24, v13

    if-gez v25, :cond_5

    .line 757
    move-object v12, v7

    .line 758
    move/from16 v13, v24

    goto :goto_4

    .line 722
    :cond_7
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v15

    .line 723
    .local v15, "s1":Lorg/jbox2d/collision/Shape;
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v16

    .line 724
    .local v16, "s2":Lorg/jbox2d/collision/Shape;
    invoke-virtual {v15}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    .line 725
    .local v5, "b1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 727
    .local v6, "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v25

    if-nez v25, :cond_8

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v25

    if-eqz v25, :cond_9

    :cond_8
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v25

    if-nez v25, :cond_5

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v25

    if-nez v25, :cond_5

    .line 732
    :cond_9
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v23, v0

    .line 734
    .local v23, "t0":F
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v25, v0

    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v26, v0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_b

    .line 735
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v23, v0

    .line 736
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Sweep;->advance(F)V

    .line 741
    :cond_a
    :goto_6
    sget-boolean v25, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v25, :cond_c

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v23, v25

    if-ltz v25, :cond_c

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 737
    :cond_b
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v25, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v26, v0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_a

    .line 738
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v23, v0

    .line 739
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Sweep;->advance(F)V

    goto :goto_6

    .line 744
    :cond_c
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v25, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v26, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v27, v0

    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v28, v0

    invoke-static/range {v25 .. v28}, Lorg/jbox2d/collision/TOI;->timeOfImpact(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/Sweep;Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/Sweep;)F

    move-result v24

    .line 745
    sget-boolean v25, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v25, :cond_e

    const/16 v25, 0x0

    cmpg-float v25, v25, v24

    if-gtz v25, :cond_d

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v24, v25

    if-lez v25, :cond_e

    :cond_d
    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 747
    :cond_e
    const/16 v25, 0x0

    cmpl-float v25, v24, v25

    if-lez v25, :cond_f

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v24, v25

    if-gez v25, :cond_f

    .line 748
    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v24

    mul-float v25, v25, v23

    add-float v25, v25, v24

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 751
    :cond_f
    move/from16 v0, v24

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_toi:F

    .line 752
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    goto/16 :goto_5

    .line 770
    .end local v5    # "b1":Lorg/jbox2d/dynamics/Body;
    .end local v6    # "b2":Lorg/jbox2d/dynamics/Body;
    .end local v15    # "s1":Lorg/jbox2d/collision/Shape;
    .end local v16    # "s2":Lorg/jbox2d/collision/Shape;
    .end local v23    # "t0":F
    .end local v24    # "toi":F
    :cond_10
    invoke-virtual {v12}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v15

    .line 771
    .restart local v15    # "s1":Lorg/jbox2d/collision/Shape;
    invoke-virtual {v12}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v16

    .line 772
    .restart local v16    # "s2":Lorg/jbox2d/collision/Shape;
    invoke-virtual {v15}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    .line 773
    .restart local v5    # "b1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 774
    .restart local v6    # "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v5, v13}, Lorg/jbox2d/dynamics/Body;->advance(F)V

    .line 775
    invoke-virtual {v6, v13}, Lorg/jbox2d/dynamics/Body;->advance(F)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/jbox2d/dynamics/contacts/Contact;->update(Lorg/jbox2d/dynamics/ContactListener;)V

    .line 779
    iget v0, v12, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x9

    move/from16 v0, v25

    iput v0, v12, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 781
    invoke-virtual {v12}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v25

    if-eqz v25, :cond_0

    .line 788
    move-object/from16 v17, v5

    .line 789
    .local v17, "seed":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 790
    move-object/from16 v17, v6

    .line 794
    :cond_11
    invoke-virtual {v11}, Lorg/jbox2d/dynamics/Island;->clear()V

    .line 795
    const/16 v19, 0x0

    .line 796
    .local v19, "stackCount":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "stackCount":I
    .local v20, "stackCount":I
    aput-object v17, v18, v19

    .line 797
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v19, v20

    .line 800
    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    :cond_12
    :goto_7
    if-gtz v19, :cond_13

    .line 854
    new-instance v22, Lorg/jbox2d/dynamics/TimeStep;

    invoke-direct/range {v22 .. v22}, Lorg/jbox2d/dynamics/TimeStep;-><init>()V

    .line 855
    .local v22, "subStep":Lorg/jbox2d/dynamics/TimeStep;
    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v13

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 856
    sget-boolean v25, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v25, :cond_1b

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v25, v0

    const/high16 v26, 0x34000000

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_1b

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 802
    .end local v22    # "subStep":Lorg/jbox2d/dynamics/TimeStep;
    :cond_13
    add-int/lit8 v19, v19, -0x1

    aget-object v4, v18, v19

    .line 803
    invoke-virtual {v11, v4}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/Body;)V

    .line 806
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x9

    move/from16 v0, v25

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 810
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v25

    if-nez v25, :cond_12

    .line 815
    iget-object v8, v4, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .local v8, "cn":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    move/from16 v20, v19

    .end local v19    # "stackCount":I
    .restart local v20    # "stackCount":I
    :goto_8
    if-nez v8, :cond_14

    move/from16 v19, v20

    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    goto :goto_7

    .line 817
    .end local v19    # "stackCount":I
    .restart local v20    # "stackCount":I
    :cond_14
    iget v0, v11, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    move/from16 v25, v0

    iget v0, v11, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    move/from16 v19, v20

    .line 815
    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    :goto_9
    iget-object v8, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move/from16 v20, v19

    .end local v19    # "stackCount":I
    .restart local v20    # "stackCount":I
    goto :goto_8

    .line 822
    :cond_15
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x7

    if-eqz v25, :cond_16

    move/from16 v19, v20

    .line 823
    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    goto :goto_9

    .line 827
    .end local v19    # "stackCount":I
    .restart local v20    # "stackCount":I
    :cond_16
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v25

    if-nez v25, :cond_17

    move/from16 v19, v20

    .line 828
    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    goto :goto_9

    .line 831
    .end local v19    # "stackCount":I
    .restart local v20    # "stackCount":I
    :cond_17
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/jbox2d/dynamics/Island;->add(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 832
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 834
    iget-object v14, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 837
    .local v14, "other":Lorg/jbox2d/dynamics/Body;
    iget v0, v14, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_18

    move/from16 v19, v20

    .line 838
    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    goto :goto_9

    .line 842
    .end local v19    # "stackCount":I
    .restart local v20    # "stackCount":I
    :cond_18
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v25

    if-nez v25, :cond_19

    .line 843
    invoke-virtual {v14, v13}, Lorg/jbox2d/dynamics/Body;->advance(F)V

    .line 844
    invoke-virtual {v14}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 847
    :cond_19
    sget-boolean v25, Lorg/jbox2d/dynamics/World;->$assertionsDisabled:Z

    if-nez v25, :cond_1a

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1a

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 848
    :cond_1a
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "stackCount":I
    .restart local v19    # "stackCount":I
    aput-object v14, v18, v20

    .line 849
    iget v0, v14, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    iput v0, v14, Lorg/jbox2d/dynamics/Body;->m_flags:I

    goto :goto_9

    .line 857
    .end local v8    # "cn":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .end local v14    # "other":Lorg/jbox2d/dynamics/Body;
    .restart local v22    # "subStep":Lorg/jbox2d/dynamics/TimeStep;
    :cond_1b
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    .line 858
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    .line 860
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/jbox2d/dynamics/Island;->solveTOI(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 863
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a
    iget v0, v11, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v9, v0, :cond_1c

    .line 893
    const/4 v9, 0x0

    :goto_b
    iget v0, v11, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v9, v0, :cond_20

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/collision/BroadPhase;->commit()V

    goto/16 :goto_2

    .line 865
    :cond_1c
    iget-object v0, v11, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    aget-object v4, v25, v9

    .line 866
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x5

    move/from16 v0, v25

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 868
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0xa

    if-eqz v25, :cond_1e

    .line 863
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 872
    :cond_1e
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 879
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->synchronizeShapes()Z

    move-result v10

    .line 882
    .local v10, "inRange":Z
    if-nez v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_boundaryListener:Lorg/jbox2d/dynamics/BoundaryListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lorg/jbox2d/dynamics/BoundaryListener;->violation(Lorg/jbox2d/dynamics/Body;)V

    .line 888
    :cond_1f
    iget-object v8, v4, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .restart local v8    # "cn":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_c
    if-eqz v8, :cond_1d

    .line 889
    iget-object v0, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x9

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 888
    iget-object v8, v8, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_c

    .line 896
    .end local v8    # "cn":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    .end local v10    # "inRange":Z
    :cond_20
    iget-object v0, v11, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v25, v0

    aget-object v7, v25, v9

    .line 897
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0xd

    move/from16 v0, v25

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 893
    add-int/lit8 v9, v9, 0x1

    goto :goto_b
.end method

.method public step(FI)V
    .locals 3
    .param p1, "dt"    # F
    .param p2, "iterations"    # I

    .prologue
    const/4 v2, 0x0

    .line 450
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    .line 452
    new-instance v0, Lorg/jbox2d/dynamics/TimeStep;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/TimeStep;-><init>()V

    .line 453
    .local v0, "step":Lorg/jbox2d/dynamics/TimeStep;
    iput p1, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 454
    iput p2, v0, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    .line 455
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 456
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    iput v1, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    .line 461
    :goto_0
    iget v1, p0, Lorg/jbox2d/dynamics/World;->m_inv_dt0:F

    mul-float/2addr v1, p1

    iput v1, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    .line 463
    iget-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_positionCorrection:Z

    iput-boolean v1, v0, Lorg/jbox2d/dynamics/TimeStep;->positionCorrection:Z

    .line 464
    iget-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_warmStarting:Z

    iput-boolean v1, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    .line 467
    iget-object v1, p0, Lorg/jbox2d/dynamics/World;->m_contactManager:Lorg/jbox2d/dynamics/ContactManager;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/ContactManager;->collide()V

    .line 470
    iget v1, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 471
    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/World;->solve(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 475
    :cond_0
    iget-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_continuousPhysics:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 476
    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/World;->solveTOI(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 480
    :cond_1
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/World;->drawDebugData()V

    .line 482
    iget v1, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    iput v1, p0, Lorg/jbox2d/dynamics/World;->m_inv_dt0:F

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jbox2d/dynamics/World;->m_lock:Z

    .line 485
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/World;->postStep(FI)V

    .line 486
    return-void

    .line 458
    :cond_2
    iput v2, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    goto :goto_0
.end method

.method public unregisterPostStep(Lorg/jbox2d/dynamics/Steppable;)V
    .locals 1
    .param p1, "s"    # Lorg/jbox2d/dynamics/Steppable;

    .prologue
    .line 512
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->postStepList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method public validate()V
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/jbox2d/dynamics/World;->m_broadPhase:Lorg/jbox2d/collision/BroadPhase;

    invoke-virtual {v0}, Lorg/jbox2d/collision/BroadPhase;->validate()V

    .line 1144
    return-void
.end method
