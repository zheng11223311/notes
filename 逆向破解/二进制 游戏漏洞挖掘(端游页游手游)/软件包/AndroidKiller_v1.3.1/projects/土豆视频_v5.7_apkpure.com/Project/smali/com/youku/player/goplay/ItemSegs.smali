.class public Lcom/youku/player/goplay/ItemSegs;
.super Ljava/lang/Object;
.source "ItemSegs.java"


# instance fields
.field private h265:Z

.field private mSegs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/youku/player/goplay/ItemSeg;)V
    .locals 1
    .param p1, "item"    # Lcom/youku/player/goplay/ItemSeg;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public get(I)Lcom/youku/player/goplay/ItemSeg;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/ItemSeg;

    goto :goto_0
.end method

.method public getSegs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    return-object v0
.end method

.method public h265()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/youku/player/goplay/ItemSegs;->h265:Z

    return v0
.end method

.method public setSegs(Ljava/util/List;Z)V
    .locals 0
    .param p2, "h265"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    iput-object p1, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    .line 18
    iput-boolean p2, p0, Lcom/youku/player/goplay/ItemSegs;->h265:Z

    .line 19
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSegs;->mSegs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
