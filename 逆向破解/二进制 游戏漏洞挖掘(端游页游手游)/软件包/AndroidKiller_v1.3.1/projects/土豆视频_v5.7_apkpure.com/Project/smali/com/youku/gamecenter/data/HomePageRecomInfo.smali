.class public Lcom/youku/gamecenter/data/HomePageRecomInfo;
.super Ljava/lang/Object;
.source "HomePageRecomInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IGameHomeCardAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public getAllItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "templist":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v0
.end method

.method public getCardTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getRec_word()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, ""

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->rec_word:Ljava/lang/String;

    goto :goto_0
.end method

.method public getShowItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    return v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method
