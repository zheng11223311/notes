.class public Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
.super Ljava/lang/Object;
.source "GoodsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Goods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;
    }
.end annotation


# static fields
.field public static final BUY_DOMAIN_TYPE_TAOBAO:Ljava/lang/String; = "taobao.com"

.field public static final BUY_DOMAIN_TYPE_TMALL:Ljava/lang/String; = "tmall.com"

.field public static final GOODS_TYPE_COMMODITY:Ljava/lang/String; = "goods.type.commodity"

.field public static final GOODS_TYPE_COMMODITYACTIVITIES:Ljava/lang/String; = "goods.type.commodityactivities"

.field public static final GOODS_TYPE_SHOP:Ljava/lang/String; = "goods.type.shop"


# instance fields
.field public buy_domain:Ljava/lang/String;

.field public buy_domain_img:Ljava/lang/String;

.field public buy_url:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public ec_name:Ljava/lang/String;

.field public id:I

.field public img:Ljava/lang/String;

.field public mClosed:Z

.field public market_price:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public show_times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->show_times:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->mClosed:Z

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget v0, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->id:I

    check-cast p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShouldBeShow(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->show_times:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;

    .line 43
    .local v2, "s":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;
    iget v3, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;->startTime:I

    mul-int/lit16 v3, v3, 0x3e8

    if-lt p1, v3, :cond_0

    iget v3, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;->endTime:I

    mul-int/lit16 v3, v3, 0x3e8

    if-gt p1, v3, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 48
    .end local v2    # "s":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods$show_times;
    :cond_1
    return v1
.end method

.method public setClosed(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->mClosed:Z

    .line 53
    return-void
.end method
