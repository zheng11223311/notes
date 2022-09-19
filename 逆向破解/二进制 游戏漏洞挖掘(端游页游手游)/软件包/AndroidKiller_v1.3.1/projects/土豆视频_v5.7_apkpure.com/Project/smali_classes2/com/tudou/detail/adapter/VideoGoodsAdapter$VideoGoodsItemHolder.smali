.class public Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/VideoGoodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoGoodsItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field public mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

.field mIcon:Landroid/widget/ImageView;

.field mTypeIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/VideoGoodsAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    .line 146
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 147
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->content:Landroid/view/View;

    .line 148
    const v0, 0x7f0c0322

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->title:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0c0320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mIcon:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0c0321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mTypeIcon:Landroid/widget/ImageView;

    .line 153
    return-void
.end method
