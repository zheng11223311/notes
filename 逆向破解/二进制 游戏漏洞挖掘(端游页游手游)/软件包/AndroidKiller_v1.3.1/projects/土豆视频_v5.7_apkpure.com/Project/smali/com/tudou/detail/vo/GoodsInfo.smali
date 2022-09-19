.class public Lcom/tudou/detail/vo/GoodsInfo;
.super Ljava/lang/Object;
.source "GoodsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;
    }
.end annotation


# instance fields
.field public error:I

.field public goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

.field public mVid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static isEmpty(Lcom/tudou/detail/vo/GoodsInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "empty":Z
    if-eqz p0, :cond_3

    .line 107
    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodityActivities:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodityActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_3

    .line 111
    :cond_2
    const/4 v0, 0x0

    .line 115
    :cond_3
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getShopCount()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstGoodsBeShow(I)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v2, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 83
    .local v0, "g":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    iget-boolean v2, v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->mClosed:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->isShouldBeShow(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    .end local v0    # "g":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 90
    .restart local v0    # "g":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    iget-boolean v2, v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->mClosed:Z

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->isShouldBeShow(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 97
    .end local v0    # "g":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
