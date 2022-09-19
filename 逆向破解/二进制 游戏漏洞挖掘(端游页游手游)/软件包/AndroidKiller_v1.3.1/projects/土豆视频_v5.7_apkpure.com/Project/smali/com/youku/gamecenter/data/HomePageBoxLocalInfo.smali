.class public Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;
.super Ljava/lang/Object;
.source "HomePageBoxLocalInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IGameHomeCardAble;


# instance fields
.field public card_title:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllItems()Ljava/util/List;
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
    .line 25
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public getCardTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "0"

    .line 59
    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCardTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "\u6211\u7684\u6e38\u620f"

    return-object v0
.end method

.method public getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 35
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    return v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
