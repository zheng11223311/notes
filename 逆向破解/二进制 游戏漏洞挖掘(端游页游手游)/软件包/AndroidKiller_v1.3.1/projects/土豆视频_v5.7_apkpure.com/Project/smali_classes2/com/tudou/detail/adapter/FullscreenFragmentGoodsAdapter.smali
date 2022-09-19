.class public Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FullscreenFragmentGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVerticalFullscreen:Z

.field private mContext:Landroid/content/Context;

.field private mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/GoodsInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/tudou/detail/vo/GoodsInfo;
    .param p3, "isVerticalFullscreen"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    sget-object v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FullscreenFragmentGoodsAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 43
    iput-boolean p3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->isVerticalFullscreen:Z

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->isVerticalFullscreen:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->getGoodsCount()I

    move-result v0

    return v0
.end method

.method public getGoodsCount()I
    .locals 3

    .prologue
    .line 62
    sget-object v1, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v0

    :goto_1
    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 62
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300cf

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "root":Landroid/view/View;
    move-object p2, v1

    .line 71
    new-instance v3, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    invoke-direct {v3, p0, p2}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    .line 75
    .local v0, "holder":Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;
    const/4 v2, 0x0

    .line 76
    .local v2, "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 77
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mCommodity:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    check-cast v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 82
    .restart local v2    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    :cond_1
    :goto_0
    iput-object v2, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .line 83
    if-eqz v2, :cond_3

    .line 84
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mDesc:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mPrice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->price:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mMarketPrice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->market_price:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mEcName:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->ec_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mTypeIcon:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mIcon:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mBtnBuy:Landroid/widget/Button;

    new-instance v4, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_domain_img:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->img:Ljava/lang/String;

    new-instance v5, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$2;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;)V

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 125
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->img:Ljava/lang/String;

    new-instance v5, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;)V

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 138
    :cond_3
    return-object p2

    .line 78
    :cond_4
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v3

    iget-object v4, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v4, v4, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getShopCount()I

    move-result v4

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->getCommodityCount()I

    move-result v3

    sub-int/2addr p1, v3

    .line 80
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->goods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray;->mShop:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    check-cast v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    .restart local v2    # "tGoodsDetail":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    goto/16 :goto_0
.end method
