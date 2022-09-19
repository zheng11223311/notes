.class public Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectnessTabRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/youku/widget/SelectnessTabRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCardsInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "mCardsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardsInfo;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    iget v0, v0, Lcom/youku/vo/CardsInfo;->cardType:I

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 19
    check-cast p1, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->onBindViewHolder(Lcom/youku/widget/SelectnessTabRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/youku/widget/SelectnessTabRecyclerViewHolder;I)V
    .locals 4
    .param p1, "card"    # Lcom/youku/widget/SelectnessTabRecyclerViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 56
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mImgMain:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 60
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mStripeTop:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/tudou/adapter/SelectnessTabRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/SelectnessTabRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/SelectnessTabRecyclerViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "cardType"    # I

    .prologue
    const/4 v3, 0x0

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    new-instance v1, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 42
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030193

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030194

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
