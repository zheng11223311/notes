.class public Lcom/tudou/detail/adapter/VideoGoodsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VideoGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    sget-object v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "HorizonPlaylistAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/VideoGoodsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 127
    move-object v0, p3

    check-cast v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    .line 128
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    iget-object v1, v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->content:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 119
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "root":Landroid/view/View;
    new-instance v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    invoke-direct {v0, p0, v1}, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;-><init>(Lcom/tudou/detail/adapter/VideoGoodsAdapter;Landroid/view/View;)V

    .line 121
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    invoke-virtual {p0, v0, p2}, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;I)V

    .line 122
    iget-object v2, v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->content:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 132
    move-object v0, p2

    check-cast v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    .line 133
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    iget-object v1, v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->content:Landroid/view/View;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 37
    check-cast p1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    const/4 v1, 0x0

    .line 60
    .local v1, "tType":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    check-cast v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 62
    .restart local v0    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    const-string v1, "goods.type.commodity"

    .line 71
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    iput-object v0, p1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 73
    const-string v2, "taobao.com"

    iget-object v3, v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mTypeIcon:Landroid/widget/ImageView;

    const v3, 0x7f0203dd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :goto_1
    iget-object v2, p1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->img:Ljava/lang/String;

    new-instance v4, Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;-><init>(Lcom/tudou/detail/adapter/VideoGoodsAdapter;Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 94
    iget-object v2, p1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->content:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;-><init>(Lcom/tudou/detail/adapter/VideoGoodsAdapter;Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_1
    return-void

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getShopCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v2

    sub-int/2addr p2, v2

    .line 65
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    check-cast v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 66
    .restart local v0    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    const-string v1, "goods.type.shop"

    goto :goto_0

    .line 76
    :cond_3
    iget-object v2, p1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mTypeIcon:Landroid/widget/ImageView;

    const v3, 0x7f0203df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 52
    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "root":Landroid/view/View;
    new-instance v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    invoke-direct {v0, p0, v1}, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;-><init>(Lcom/tudou/detail/adapter/VideoGoodsAdapter;Landroid/view/View;)V

    .line 54
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
    return-object v0
.end method
