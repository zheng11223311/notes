.class public Lcom/youku/gamecenter/data/GameCenterVideoListInfo;
.super Ljava/lang/Object;
.source "GameCenterVideoListInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field private page_count:I

.field private videoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->videoInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToVideoInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameCenterVideoInfo;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->videoInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->videoInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->videoInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    :cond_0
    return-void
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->page_count:I

    return v0
.end method

.method public getVideoInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->videoInfos:Ljava/util/List;

    return-object v0
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "page_count"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->page_count:I

    .line 27
    return-void
.end method
