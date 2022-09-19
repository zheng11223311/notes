.class public Lcom/youku/gamecenter/data/GameListInfo;
.super Ljava/lang/Object;
.source "GameListInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field private allRankGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private page_count:I

.field private pg:Ljava/lang/String;

.field public promotion_apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pz:I

.field public request_id:Ljava/lang/String;

.field public sort_type:Ljava/lang/String;

.field public tag_games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tag_id:Ljava/lang/String;

.field public tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->tag_games:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public AddRankGames(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 1
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public addToGameRankInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "gameRankInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :cond_0
    return-void
.end method

.method public getGameList()Ljava/util/List;
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
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    return-object v0
.end method

.method public getGameRankInfos(I)Ljava/util/List;
    .locals 1
    .param p1, "tab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->allRankGames:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->page_count:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->pz:I

    return v0
.end method

.method public getPromotion_apps()Ljava/util/List;
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
    .line 27
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    return-object v0
.end method

.method public hasTagCard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameListInfo;->tag_games:Ljava/util/List;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameListInfo;->tag_games:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pg"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/gamecenter/data/GameListInfo;->pg:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "page_count"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/youku/gamecenter/data/GameListInfo;->page_count:I

    .line 51
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pz"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/youku/gamecenter/data/GameListInfo;->pz:I

    .line 67
    return-void
.end method
