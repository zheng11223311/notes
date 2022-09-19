.class public Lorg/jbox2d/dynamics/ContactManager;
.super Lorg/jbox2d/collision/PairCallback;
.source "ContactManager.java"


# instance fields
.field m_destroyImmediate:Z

.field m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

.field m_world:Lorg/jbox2d/dynamics/World;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jbox2d/collision/PairCallback;-><init>()V

    .line 54
    new-instance v0, Lorg/jbox2d/dynamics/contacts/NullContact;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/NullContact;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/ContactManager;->m_destroyImmediate:Z

    .line 56
    return-void
.end method


# virtual methods
.method public collide()V
    .locals 4

    .prologue
    .line 234
    iget-object v3, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v3, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .local v2, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    :goto_0
    if-nez v2, :cond_0

    .line 244
    return-void

    .line 235
    :cond_0
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 236
    .local v0, "body1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 237
    .local v1, "body2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    :goto_1
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getNext()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v2

    goto :goto_0

    .line 241
    :cond_1
    iget-object v3, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v3, v3, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    invoke-virtual {v2, v3}, Lorg/jbox2d/dynamics/contacts/Contact;->update(Lorg/jbox2d/dynamics/ContactListener;)V

    goto :goto_1
.end method

.method public destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .locals 19
    .param p1, "c"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 152
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v13

    .line 153
    .local v13, "shape1":Lorg/jbox2d/collision/Shape;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v14

    .line 156
    .local v14, "shape2":Lorg/jbox2d/collision/Shape;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v10

    .line 157
    .local v10, "manifoldCount":I
    if-lez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 159
    invoke-virtual {v13}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v2

    .line 160
    .local v2, "b1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v14}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v3

    .line 161
    .local v3, "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifolds()Ljava/util/List;

    move-result-object v11

    .line 162
    .local v11, "manifolds":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    new-instance v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;

    invoke-direct {v6}, Lorg/jbox2d/dynamics/contacts/ContactPoint;-><init>()V

    .line 163
    .local v6, "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape1:Lorg/jbox2d/collision/Shape;

    .line 164
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape2:Lorg/jbox2d/collision/Shape;

    .line 165
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->friction:F

    .line 166
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->restitution:F

    .line 167
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v10, :cond_a

    .line 186
    .end local v2    # "b1":Lorg/jbox2d/dynamics/Body;
    .end local v3    # "b2":Lorg/jbox2d/dynamics/Body;
    .end local v6    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .end local v7    # "i":I
    .end local v11    # "manifolds":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 187
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 190
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 191
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 194
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 198
    :cond_3
    invoke-virtual {v13}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    .line 199
    .local v4, "body1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v14}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    .line 202
    .local v5, "body2":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 203
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 206
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 207
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 210
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 211
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 215
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 216
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 219
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 220
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 223
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 224
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 228
    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/jbox2d/dynamics/contacts/Contact;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    .line 230
    return-void

    .line 169
    .end local v4    # "body1":Lorg/jbox2d/dynamics/Body;
    .end local v5    # "body2":Lorg/jbox2d/dynamics/Body;
    .restart local v2    # "b1":Lorg/jbox2d/dynamics/Body;
    .restart local v3    # "b2":Lorg/jbox2d/dynamics/Body;
    .restart local v6    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .restart local v7    # "i":I
    .restart local v11    # "manifolds":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    :cond_a
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jbox2d/collision/Manifold;

    .line 170
    .local v9, "manifold":Lorg/jbox2d/collision/Manifold;
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    iget-object v0, v9, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 171
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget v0, v9, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_b

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 173
    :cond_b
    iget-object v0, v9, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v17, v0

    aget-object v12, v17, v8

    .line 174
    .local v12, "mp":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 175
    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 176
    .local v15, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 177
    .local v16, "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 178
    iget v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 179
    new-instance v17, Lorg/jbox2d/collision/ContactID;

    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v17

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/World;->m_contactListener:Lorg/jbox2d/dynamics/ContactListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/jbox2d/dynamics/ContactListener;->remove(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    .line 171
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public pairAdded(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxyUserData1"    # Ljava/lang/Object;
    .param p2, "proxyUserData2"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 59
    move-object v3, p1

    check-cast v3, Lorg/jbox2d/collision/Shape;

    .local v3, "shape1":Lorg/jbox2d/collision/Shape;
    move-object v4, p2

    .line 60
    check-cast v4, Lorg/jbox2d/collision/Shape;

    .line 62
    .local v4, "shape2":Lorg/jbox2d/collision/Shape;
    invoke-virtual {v3}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 63
    .local v0, "body1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v4}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 65
    .local v1, "body2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    iget-object v2, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    .line 127
    :goto_0
    return-object v2

    .line 69
    :cond_0
    invoke-virtual {v3}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 70
    iget-object v2, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1, v0}, Lorg/jbox2d/dynamics/Body;->isConnected(Lorg/jbox2d/dynamics/Body;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    iget-object v2, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    goto :goto_0

    .line 77
    :cond_2
    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v5, v5, Lorg/jbox2d/dynamics/World;->m_contactFilter:Lorg/jbox2d/dynamics/ContactFilter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v5, v5, Lorg/jbox2d/dynamics/World;->m_contactFilter:Lorg/jbox2d/dynamics/ContactFilter;

    invoke-interface {v5, v3, v4}, Lorg/jbox2d/dynamics/ContactFilter;->shouldCollide(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 78
    iget-object v2, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {v3, v4}, Lorg/jbox2d/dynamics/contacts/Contact;->createContact(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v2

    .line 84
    .local v2, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    if-nez v2, :cond_4

    .line 85
    iget-object v2, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v4

    .line 91
    invoke-virtual {v3}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 92
    invoke-virtual {v4}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 95
    iput-object v7, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 96
    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v5, v5, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 97
    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v5, v5, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    if-eqz v5, :cond_5

    .line 98
    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget-object v5, v5, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v2, v5, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 100
    :cond_5
    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iput-object v2, v5, Lorg/jbox2d/dynamics/World;->m_contactList:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 105
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 106
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 108
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v7, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 109
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v6, v0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 110
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v5, :cond_6

    .line 111
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v6, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 113
    :cond_6
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 116
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 117
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 119
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v7, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 120
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v6, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 121
    iget-object v5, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    if-eqz v5, :cond_7

    .line 122
    iget-object v5, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iget-object v6, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v6, v5, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 124
    :cond_7
    iget-object v5, v2, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v5, v1, Lorg/jbox2d/dynamics/Body;->m_contactList:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 126
    iget-object v5, p0, Lorg/jbox2d/dynamics/ContactManager;->m_world:Lorg/jbox2d/dynamics/World;

    iget v6, v5, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jbox2d/dynamics/World;->m_contactCount:I

    goto/16 :goto_0
.end method

.method public pairRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "proxyUserData1"    # Ljava/lang/Object;
    .param p2, "proxyUserData2"    # Ljava/lang/Object;
    .param p3, "pairUserData"    # Ljava/lang/Object;

    .prologue
    .line 137
    if-nez p3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 141
    check-cast v0, Lorg/jbox2d/dynamics/contacts/Contact;

    .line 142
    .local v0, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    iget-object v1, p0, Lorg/jbox2d/dynamics/ContactManager;->m_nullContact:Lorg/jbox2d/dynamics/contacts/NullContact;

    if-eq v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/ContactManager;->destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V

    goto :goto_0
.end method
