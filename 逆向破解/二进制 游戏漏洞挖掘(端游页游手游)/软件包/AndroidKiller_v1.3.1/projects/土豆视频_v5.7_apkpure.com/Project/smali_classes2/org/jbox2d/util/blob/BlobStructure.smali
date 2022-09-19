.class public Lorg/jbox2d/util/blob/BlobStructure;
.super Ljava/lang/Object;
.source "BlobStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;,
        Lorg/jbox2d/util/blob/BlobStructure$Region;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$jbox2d$util$blob$BlobStructure$Region:[I


# instance fields
.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;",
            ">;"
        }
    .end annotation
.end field

.field connectionsD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;",
            ">;"
        }
    .end annotation
.end field

.field connectionsDR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;",
            ">;"
        }
    .end annotation
.end field

.field connectionsR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;",
            ">;"
        }
    .end annotation
.end field

.field connectionsUR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;",
            ">;"
        }
    .end annotation
.end field

.field currentDamping:F

.field currentFrequency:F

.field points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jbox2d/util/blob/BlobPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$org$jbox2d$util$blob$BlobStructure$Region()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lorg/jbox2d/util/blob/BlobStructure;->$SWITCH_TABLE$org$jbox2d$util$blob$BlobStructure$Region:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jbox2d/util/blob/BlobStructure$Region;->values()[Lorg/jbox2d/util/blob/BlobStructure$Region;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jbox2d/util/blob/BlobStructure$Region;->CENTER:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {v1}, Lorg/jbox2d/util/blob/BlobStructure$Region;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jbox2d/util/blob/BlobStructure$Region;->DOWN:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {v1}, Lorg/jbox2d/util/blob/BlobStructure$Region;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jbox2d/util/blob/BlobStructure$Region;->DOWN_RIGHT:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {v1}, Lorg/jbox2d/util/blob/BlobStructure$Region;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lorg/jbox2d/util/blob/BlobStructure$Region;->RIGHT:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {v1}, Lorg/jbox2d/util/blob/BlobStructure$Region;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lorg/jbox2d/util/blob/BlobStructure$Region;->UP_RIGHT:Lorg/jbox2d/util/blob/BlobStructure$Region;

    invoke-virtual {v1}, Lorg/jbox2d/util/blob/BlobStructure$Region;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lorg/jbox2d/util/blob/BlobStructure;->$SWITCH_TABLE$org$jbox2d$util$blob$BlobStructure$Region:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    .line 37
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->points:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->connections:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsR:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsDR:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsD:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsUR:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method private updateSprings()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lorg/jbox2d/util/blob/BlobStructure;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    iget-object v1, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    iget-object v1, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsDR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    iget-object v1, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 56
    iget-object v1, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsUR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 60
    return-void

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 41
    .local v0, "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 42
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    goto :goto_0

    .line 44
    .end local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 45
    .restart local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 46
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    goto :goto_1

    .line 48
    .end local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 49
    .restart local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 50
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    goto :goto_2

    .line 52
    .end local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 53
    .restart local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 54
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    goto :goto_3

    .line 56
    .end local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 57
    .restart local v0    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 58
    iget v2, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    iput v2, v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    goto :goto_4
.end method


# virtual methods
.method public addConnection(II)V
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 107
    iget-object v6, p0, Lorg/jbox2d/util/blob/BlobStructure;->connections:Ljava/util/ArrayList;

    new-instance v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    iget v4, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iget v5, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;-><init>(Lorg/jbox2d/util/blob/BlobStructure;IIFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addConnection(IILorg/jbox2d/util/blob/BlobStructure$Region;)V
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "r"    # Lorg/jbox2d/util/blob/BlobStructure$Region;

    .prologue
    .line 121
    invoke-static {}, Lorg/jbox2d/util/blob/BlobStructure;->$SWITCH_TABLE$org$jbox2d$util$blob$BlobStructure$Region()[I

    move-result-object v0

    invoke-virtual {p3}, Lorg/jbox2d/util/blob/BlobStructure$Region;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/jbox2d/util/blob/BlobStructure;->addConnection(II)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v6, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsR:Ljava/util/ArrayList;

    new-instance v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    iget v4, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iget v5, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;-><init>(Lorg/jbox2d/util/blob/BlobStructure;IIFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v6, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsDR:Ljava/util/ArrayList;

    new-instance v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    iget v4, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iget v5, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;-><init>(Lorg/jbox2d/util/blob/BlobStructure;IIFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v6, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsD:Ljava/util/ArrayList;

    new-instance v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    iget v4, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iget v5, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;-><init>(Lorg/jbox2d/util/blob/BlobStructure;IIFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v6, p0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsUR:Ljava/util/ArrayList;

    new-instance v0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    iget v4, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    iget v5, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;-><init>(Lorg/jbox2d/util/blob/BlobStructure;IIFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public addPoint(Lorg/jbox2d/util/blob/BlobPoint;)I
    .locals 3
    .param p1, "p"    # Lorg/jbox2d/util/blob/BlobPoint;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 91
    iget-object v0, p1, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p1, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 92
    iget-object v0, p1, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p1, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Points must be within (0,0)->(1,1) in a BlobStructure."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpringDamping()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    return v0
.end method

.method public getSpringFrequency()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    return v0
.end method

.method public setSpringDamping(F)V
    .locals 0
    .param p1, "damp"    # F

    .prologue
    .line 72
    iput p1, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentDamping:F

    .line 73
    invoke-direct {p0}, Lorg/jbox2d/util/blob/BlobStructure;->updateSprings()V

    .line 74
    return-void
.end method

.method public setSpringFrequency(F)V
    .locals 0
    .param p1, "freq"    # F

    .prologue
    .line 63
    iput p1, p0, Lorg/jbox2d/util/blob/BlobStructure;->currentFrequency:F

    .line 64
    invoke-direct {p0}, Lorg/jbox2d/util/blob/BlobStructure;->updateSprings()V

    .line 65
    return-void
.end method
