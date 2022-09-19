.class public Lcom/youku/widget/SelectnessTabRecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectnessTabRecyclerViewHolder.java"


# instance fields
.field public mImgMain:Landroid/widget/ImageView;

.field public mItemView:Landroid/view/View;

.field public mStripeTop:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mItemView:Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->init()V

    .line 23
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mTxtTitle:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mStripeTop:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0c0281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SelectnessTabRecyclerViewHolder;->mImgMain:Landroid/widget/ImageView;

    .line 29
    return-void
.end method
