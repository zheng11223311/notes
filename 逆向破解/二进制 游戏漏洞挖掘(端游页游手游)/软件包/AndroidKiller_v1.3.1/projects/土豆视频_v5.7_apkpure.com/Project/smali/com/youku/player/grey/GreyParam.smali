.class public Lcom/youku/player/grey/GreyParam;
.super Ljava/lang/Object;
.source "GreyParam.java"


# static fields
.field public static final FUN_HIT:I = 0x2

.field public static final FUN_NOTFOUND:I = -0x1

.field public static final FUN_OFF:I = 0x0

.field public static final FUN_ON:I = 0x1


# instance fields
.field deliverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hitSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hit_config_id:I

.field public hit_state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/youku/player/grey/GreyParam;->deliverMap:Ljava/util/Map;

    .line 18
    iput-object v1, p0, Lcom/youku/player/grey/GreyParam;->hitSet:Ljava/util/Set;

    .line 20
    iput v0, p0, Lcom/youku/player/grey/GreyParam;->hit_config_id:I

    .line 21
    iput v0, p0, Lcom/youku/player/grey/GreyParam;->hit_state:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/player/grey/GreyParam;->deliverMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youku/player/grey/GreyParam;->hitSet:Ljava/util/Set;

    .line 27
    return-void
.end method


# virtual methods
.method public addDeliver(II)V
    .locals 3
    .param p1, "feature_id"    # I
    .param p2, "state"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/player/grey/GreyParam;->deliverMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public addHit(I)V
    .locals 2
    .param p1, "feature_id"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/player/grey/GreyParam;->hitSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public isFeatureEnable(I)I
    .locals 4
    .param p1, "feature_id"    # I

    .prologue
    const/4 v3, 0x1

    .line 42
    iget-object v1, p0, Lcom/youku/player/grey/GreyParam;->deliverMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/youku/player/grey/GreyParam;->deliverMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    .local v0, "state":I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    .line 53
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/youku/player/grey/GreyParam;->hitSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iget v0, p0, Lcom/youku/player/grey/GreyParam;->hit_state:I

    .line 49
    .restart local v0    # "state":I
    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    .line 53
    .end local v0    # "state":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
