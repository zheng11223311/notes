.class public Lorg/jbox2d/collision/ContactID;
.super Ljava/lang/Object;
.source "ContactID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/ContactID$Features;
    }
.end annotation


# instance fields
.field public features:Lorg/jbox2d/collision/ContactID$Features;

.field public key:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/ContactID;->key:I

    .line 106
    new-instance v0, Lorg/jbox2d/collision/ContactID$Features;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/ContactID$Features;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v0, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ContactID;)V
    .locals 2
    .param p1, "c"    # Lorg/jbox2d/collision/ContactID;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iget v0, p1, Lorg/jbox2d/collision/ContactID;->key:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID;->key:I

    .line 111
    new-instance v0, Lorg/jbox2d/collision/ContactID$Features;

    iget-object v1, p1, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/collision/ContactID$Features;-><init>(Lorg/jbox2d/collision/ContactID;Lorg/jbox2d/collision/ContactID$Features;)V

    iput-object v0, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    .line 112
    return-void
.end method


# virtual methods
.method public isEqual(Lorg/jbox2d/collision/ContactID;)Z
    .locals 2
    .param p1, "cid"    # Lorg/jbox2d/collision/ContactID;

    .prologue
    .line 93
    iget-object v0, p1, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iget-object v1, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/ContactID$Features;->isEqual(Lorg/jbox2d/collision/ContactID$Features;)Z

    move-result v0

    return v0
.end method

.method public zero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lorg/jbox2d/collision/ContactID;->key:I

    .line 98
    iget-object v0, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iput v1, v0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    .line 99
    iget-object v0, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iput v1, v0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 100
    iget-object v0, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iput v1, v0, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 101
    iget-object v0, p0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iput v1, v0, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 102
    return-void
.end method
