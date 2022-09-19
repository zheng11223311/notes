.class public Lorg/jbox2d/collision/ContactID$Features;
.super Ljava/lang/Object;
.source "ContactID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/ContactID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Features"
.end annotation


# instance fields
.field public flip:I

.field public incidentEdge:I

.field public incidentVertex:I

.field public referenceEdge:I

.field final synthetic this$0:Lorg/jbox2d/collision/ContactID;


# direct methods
.method public constructor <init>(Lorg/jbox2d/collision/ContactID;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lorg/jbox2d/collision/ContactID$Features;->this$0:Lorg/jbox2d/collision/ContactID;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ContactID;Lorg/jbox2d/collision/ContactID$Features;)V
    .locals 1
    .param p2, "f"    # Lorg/jbox2d/collision/ContactID$Features;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jbox2d/collision/ContactID$Features;->this$0:Lorg/jbox2d/collision/ContactID;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget v0, p2, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 66
    iget v0, p2, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 67
    iget v0, p2, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 68
    iget v0, p2, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    return-void
.end method


# virtual methods
.method public isEqual(Lorg/jbox2d/collision/ContactID$Features;)Z
    .locals 2
    .param p1, "f"    # Lorg/jbox2d/collision/ContactID$Features;

    .prologue
    .line 79
    iget v0, p0, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    iget v1, p1, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    if-ne v0, v1, :cond_0

    .line 80
    iget v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    iget v1, p1, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    if-ne v0, v1, :cond_0

    .line 81
    iget v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    iget v1, p1, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    if-ne v0, v1, :cond_0

    .line 82
    iget v0, p0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    iget v1, p1, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 79
    goto :goto_0
.end method

.method public set(Lorg/jbox2d/collision/ContactID$Features;)V
    .locals 1
    .param p1, "f"    # Lorg/jbox2d/collision/ContactID$Features;

    .prologue
    .line 72
    iget v0, p1, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 73
    iget v0, p1, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 74
    iget v0, p1, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 75
    iget v0, p1, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    iput v0, p0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Features: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
