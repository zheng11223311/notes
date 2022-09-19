.class public Lcom/youku/gamecenter/data/HomePageBoxInfo;
.super Ljava/lang/Object;
.source "HomePageBoxInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IGameHomeCardAble;


# instance fields
.field public card_image:Ljava/lang/String;

.field public card_type:I

.field public categoryId:Ljava/lang/String;

.field public display_num:I

.field public h5ActivitiesInfo:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

.field public h5_url:Ljava/lang/String;

.field public id:Ljava/lang/String;

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

.field public name:Ljava/lang/String;

.field public operation_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

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
    .line 36
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public getCardTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShowItems()Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/youku/gamecenter/data/HomePageBoxInfo;->isShowRow2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 55
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 58
    iget-object v1, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_type:I

    return v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public isShowRow2()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/gamecenter/data/HomePageBoxInfo;->display_num:I

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
