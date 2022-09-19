.class public Lcom/tudou/adapter/IndexSelectnessCard;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "IndexSelectnessCard.java"


# instance fields
.field public corner_image:Landroid/widget/ImageView;

.field public mImgMain:Landroid/widget/ImageView;

.field public mItemView:Landroid/view/View;

.field public mStripeTop:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mItemView:Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexSelectnessCard;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mImgMain:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mTxtTitle:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mItemView:Landroid/view/View;

    const v1, 0x7f0c028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mStripeTop:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexSelectnessCard;->corner_image:Landroid/widget/ImageView;

    .line 39
    return-void
.end method
