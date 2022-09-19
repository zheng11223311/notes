.class public Lcom/tudou/adapter/IndexSelectnessAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "IndexSelectnessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/tudou/adapter/IndexSelectnessCard;",
        ">;"
    }
.end annotation


# instance fields
.field private loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mActivity:Landroid/app/Activity;

.field private mCardInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;Lcom/youku/vo/SkipInfo;)V
    .locals 1
    .param p2, "aActivity"    # Landroid/app/Activity;
    .param p3, "aSkipInfo"    # Lcom/youku/vo/SkipInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/youku/vo/SkipInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "aCardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 32
    iput-object p1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p3, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/IndexSelectnessAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexSelectnessAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/IndexSelectnessAdapter;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/IndexSelectnessAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    iget v0, v0, Lcom/youku/vo/CardInfo;->cardType:I

    .line 48
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
    .line 22
    check-cast p1, Lcom/tudou/adapter/IndexSelectnessCard;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/adapter/IndexSelectnessAdapter;->onBindViewHolder(Lcom/tudou/adapter/IndexSelectnessCard;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tudou/adapter/IndexSelectnessCard;I)V
    .locals 4
    .param p1, "card"    # Lcom/tudou/adapter/IndexSelectnessCard;
    .param p2, "i"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    .line 75
    .local v0, "aInfo":Lcom/youku/vo/CardInfo;
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/IndexSelectnessAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->image_448_252:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectnessCard;->mImgMain:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 86
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->mStripeTop:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, v0, Lcom/youku/vo/CardInfo;->corner_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->corner_image:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_1
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tudou/adapter/IndexSelectnessAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/tudou/adapter/IndexSelectnessAdapter$1;-><init>(Lcom/tudou/adapter/IndexSelectnessAdapter;Lcom/youku/vo/CardInfo;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->corner_image:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->corner_image:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/adapter/IndexSelectnessCard;->corner_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 118
    :pswitch_1
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p1, Lcom/tudou/adapter/IndexSelectnessCard;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tudou/adapter/IndexSelectnessAdapter$2;

    invoke-direct {v2, p0}, Lcom/tudou/adapter/IndexSelectnessAdapter$2;-><init>(Lcom/tudou/adapter/IndexSelectnessAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 75
    nop

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
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/tudou/adapter/IndexSelectnessAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/adapter/IndexSelectnessCard;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/adapter/IndexSelectnessCard;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "cardType"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 69
    :goto_0
    new-instance v1, Lcom/tudou/adapter/IndexSelectnessCard;

    invoke-direct {v1, v0}, Lcom/tudou/adapter/IndexSelectnessCard;-><init>(Landroid/view/View;)V

    return-object v1

    .line 58
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030193

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    goto :goto_0

    .line 61
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030194

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setData(Ljava/util/List;Lcom/youku/vo/SkipInfo;)V
    .locals 0
    .param p2, "aSkipInfo"    # Lcom/youku/vo/SkipInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;",
            "Lcom/youku/vo/SkipInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "aCardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    iput-object p1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mCardInfos:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/tudou/adapter/IndexSelectnessAdapter;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 40
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexSelectnessAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method
