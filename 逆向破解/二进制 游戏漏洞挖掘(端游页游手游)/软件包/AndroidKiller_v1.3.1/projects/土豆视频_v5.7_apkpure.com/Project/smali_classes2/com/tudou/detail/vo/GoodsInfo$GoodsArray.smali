.class public Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;
.super Ljava/lang/Object;
.source "GoodsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/GoodsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoodsArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    }
.end annotation


# instance fields
.field public mCommodity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;",
            ">;"
        }
    .end annotation
.end field

.field public mCommodityActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;",
            ">;"
        }
    .end annotation
.end field

.field public mShop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getCommodityActivitiesCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodityActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodityActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommodityCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShopCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
