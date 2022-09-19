.class public Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FullscreenFragmentGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullscreenFragmentVideoGoodsItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field mBtnBuy:Landroid/widget/Button;

.field mDesc:Landroid/widget/TextView;

.field mEcName:Landroid/widget/TextView;

.field public mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

.field mIcon:Landroid/widget/ImageView;

.field mMarketPrice:Landroid/widget/TextView;

.field mPrice:Landroid/widget/TextView;

.field mTypeIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    .line 154
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 155
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->content:Landroid/view/View;

    .line 156
    const v0, 0x7f0c03d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->title:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0c03d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mIcon:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0c03da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mTypeIcon:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0c03db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mDesc:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0c03dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mPrice:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0c03dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mMarketPrice:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0c03de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mBtnBuy:Landroid/widget/Button;

    .line 163
    const v0, 0x7f0c03df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mEcName:Landroid/widget/TextView;

    .line 164
    return-void
.end method
