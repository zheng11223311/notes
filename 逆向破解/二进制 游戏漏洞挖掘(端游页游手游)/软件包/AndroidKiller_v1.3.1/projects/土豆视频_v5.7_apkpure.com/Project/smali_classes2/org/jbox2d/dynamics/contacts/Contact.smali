.class public abstract Lorg/jbox2d/dynamics/contacts/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final e_islandFlag:I = 0x4

.field public static final e_nonSolidFlag:I = 0x1

.field public static final e_slowFlag:I = 0x2

.field public static final e_toiFlag:I = 0x8

.field static s_initialized:Z

.field static s_registers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/dynamics/contacts/ContactRegister;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_flags:I

.field public m_friction:F

.field public m_manifoldCount:I

.field public m_next:Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

.field public m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_restitution:F

.field public m_shape1:Lorg/jbox2d/collision/Shape;

.field public m_shape2:Lorg/jbox2d/collision/Shape;

.field public m_toi:F

.field public m_world:Lorg/jbox2d/dynamics/World;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/Contact;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 107
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V
    .locals 3
    .param p1, "s1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "s2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>()V

    .line 113
    iput v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 115
    invoke-virtual {p1}, Lorg/jbox2d/collision/Shape;->isSensor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/jbox2d/collision/Shape;->isSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 119
    :cond_1
    iput-object p1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    .line 120
    iput-object p2, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    .line 122
    iput v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifoldCount:I

    .line 123
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifolds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    iget v0, v0, Lorg/jbox2d/collision/Shape;->m_friction:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    iget v1, v1, Lorg/jbox2d/collision/Shape;->m_friction:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    .line 126
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    iget v0, v0, Lorg/jbox2d/collision/Shape;->m_restitution:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    iget v1, v1, Lorg/jbox2d/collision/Shape;->m_restitution:F

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    .line 128
    iput-object v2, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 129
    iput-object v2, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 130
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 131
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 132
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 133
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 135
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 136
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->prev:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 137
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 138
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 139
    return-void
.end method

.method static addType(Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;Lorg/jbox2d/collision/ShapeType;Lorg/jbox2d/collision/ShapeType;)V
    .locals 3
    .param p0, "createFcn"    # Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;
    .param p1, "type1"    # Lorg/jbox2d/collision/ShapeType;
    .param p2, "type2"    # Lorg/jbox2d/collision/ShapeType;

    .prologue
    .line 165
    new-instance v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/ContactRegister;-><init>()V

    .line 166
    .local v0, "cr":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    iput-object p1, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->s1:Lorg/jbox2d/collision/ShapeType;

    .line 167
    iput-object p2, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->s2:Lorg/jbox2d/collision/ShapeType;

    .line 168
    iput-object p0, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->createFcn:Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;

    .line 169
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->primary:Z

    .line 170
    sget-object v2, Lorg/jbox2d/dynamics/contacts/Contact;->s_registers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    if-eq p1, p2, :cond_0

    .line 173
    new-instance v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/contacts/ContactRegister;-><init>()V

    .line 174
    .local v1, "cr2":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    iput-object p1, v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;->s2:Lorg/jbox2d/collision/ShapeType;

    .line 175
    iput-object p2, v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;->s1:Lorg/jbox2d/collision/ShapeType;

    .line 176
    iput-object p0, v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;->createFcn:Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jbox2d/dynamics/contacts/ContactRegister;->primary:Z

    .line 178
    sget-object v2, Lorg/jbox2d/dynamics/contacts/Contact;->s_registers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v1    # "cr2":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    :cond_0
    return-void
.end method

.method public static createContact(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 7
    .param p0, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p1, "shape2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 187
    sget-boolean v6, Lorg/jbox2d/dynamics/contacts/Contact;->s_initialized:Z

    if-nez v6, :cond_0

    .line 188
    invoke-static {}, Lorg/jbox2d/dynamics/contacts/Contact;->initializeRegisters()V

    .line 189
    const/4 v6, 0x1

    sput-boolean v6, Lorg/jbox2d/dynamics/contacts/Contact;->s_initialized:Z

    .line 192
    :cond_0
    iget-object v4, p0, Lorg/jbox2d/collision/Shape;->m_type:Lorg/jbox2d/collision/ShapeType;

    .line 193
    .local v4, "type1":Lorg/jbox2d/collision/ShapeType;
    iget-object v5, p1, Lorg/jbox2d/collision/Shape;->m_type:Lorg/jbox2d/collision/ShapeType;

    .line 199
    .local v5, "type2":Lorg/jbox2d/collision/ShapeType;
    invoke-static {v4, v5}, Lorg/jbox2d/dynamics/contacts/Contact;->getContactRegister(Lorg/jbox2d/collision/ShapeType;Lorg/jbox2d/collision/ShapeType;)Lorg/jbox2d/dynamics/contacts/ContactRegister;

    move-result-object v3

    .line 200
    .local v3, "register":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    if-eqz v3, :cond_3

    .line 201
    iget-boolean v6, v3, Lorg/jbox2d/dynamics/contacts/ContactRegister;->primary:Z

    if-eqz v6, :cond_2

    .line 202
    iget-object v6, v3, Lorg/jbox2d/dynamics/contacts/ContactRegister;->createFcn:Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;

    invoke-interface {v6, p0, p1}, Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;->create(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    .line 214
    :cond_1
    :goto_0
    return-object v0

    .line 205
    :cond_2
    iget-object v6, v3, Lorg/jbox2d/dynamics/contacts/ContactRegister;->createFcn:Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;

    invoke-interface {v6, p1, p0}, Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;->create(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    .line 206
    .local v0, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 207
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifolds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jbox2d/collision/Manifold;

    .line 208
    .local v2, "m":Lorg/jbox2d/collision/Manifold;
    iget-object v6, v2, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "c":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v1    # "i":I
    .end local v2    # "m":Lorg/jbox2d/collision/Manifold;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .locals 1
    .param p0, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 230
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/Contact;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/Contact;->s_initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 234
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 236
    :cond_1
    return-void
.end method

.method private static getContactRegister(Lorg/jbox2d/collision/ShapeType;Lorg/jbox2d/collision/ShapeType;)Lorg/jbox2d/dynamics/contacts/ContactRegister;
    .locals 3
    .param p0, "type1"    # Lorg/jbox2d/collision/ShapeType;
    .param p1, "type2"    # Lorg/jbox2d/collision/ShapeType;

    .prologue
    .line 220
    sget-object v1, Lorg/jbox2d/dynamics/contacts/Contact;->s_registers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 220
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;

    .line 221
    .local v0, "cr":Lorg/jbox2d/dynamics/contacts/ContactRegister;
    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->s1:Lorg/jbox2d/collision/ShapeType;

    if-ne v2, p0, :cond_0

    iget-object v2, v0, Lorg/jbox2d/dynamics/contacts/ContactRegister;->s2:Lorg/jbox2d/collision/ShapeType;

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method static initializeRegisters()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jbox2d/dynamics/contacts/Contact;->s_registers:Ljava/util/List;

    .line 155
    new-instance v0, Lorg/jbox2d/dynamics/contacts/CircleContact;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/CircleContact;-><init>()V

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    .line 156
    sget-object v2, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    .line 155
    invoke-static {v0, v1, v2}, Lorg/jbox2d/dynamics/contacts/Contact;->addType(Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;Lorg/jbox2d/collision/ShapeType;Lorg/jbox2d/collision/ShapeType;)V

    .line 157
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;-><init>()V

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    .line 158
    sget-object v2, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    .line 157
    invoke-static {v0, v1, v2}, Lorg/jbox2d/dynamics/contacts/Contact;->addType(Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;Lorg/jbox2d/collision/ShapeType;Lorg/jbox2d/collision/ShapeType;)V

    .line 159
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolyContact;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/PolyContact;-><init>()V

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/dynamics/contacts/Contact;->addType(Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;Lorg/jbox2d/collision/ShapeType;Lorg/jbox2d/collision/ShapeType;)V

    .line 161
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->clone()Lorg/jbox2d/dynamics/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/jbox2d/dynamics/contacts/Contact;
.end method

.method public abstract evaluate(Lorg/jbox2d/dynamics/ContactListener;)V
.end method

.method public getManifoldCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_manifoldCount:I

    return v0
.end method

.method public abstract getManifolds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/collision/Manifold;",
            ">;"
        }
    .end annotation
.end method

.method public getNext()Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    return-object v0
.end method

.method public getShape1()Lorg/jbox2d/collision/Shape;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    return-object v0
.end method

.method public getShape2()Lorg/jbox2d/collision/Shape;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    return-object v0
.end method

.method public isSolid()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lorg/jbox2d/dynamics/ContactListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v3

    .line 240
    .local v3, "oldCount":I
    invoke-virtual {p0, p1}, Lorg/jbox2d/dynamics/contacts/Contact;->evaluate(Lorg/jbox2d/dynamics/ContactListener;)V

    .line 241
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v2

    .line 243
    .local v2, "newCount":I
    iget-object v4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v4}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 244
    .local v0, "body1":Lorg/jbox2d/dynamics/Body;
    iget-object v4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v4}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 246
    .local v1, "body2":Lorg/jbox2d/dynamics/Body;
    if-nez v2, :cond_0

    if-lez v3, :cond_0

    .line 247
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 248
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 252
    :cond_0
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isBullet()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->isBullet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    :cond_1
    iget v4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_2
    iget v4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/jbox2d/dynamics/contacts/Contact;->m_flags:I

    goto :goto_0
.end method
