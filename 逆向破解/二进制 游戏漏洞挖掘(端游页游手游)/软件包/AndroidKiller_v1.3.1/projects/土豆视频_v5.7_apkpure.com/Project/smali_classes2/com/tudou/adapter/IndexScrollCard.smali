.class public Lcom/tudou/adapter/IndexScrollCard;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "IndexScrollCard.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mItemView:Landroid/view/View;

.field public mTxtContent:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/IndexScrollCard;->mItemView:Landroid/view/View;

    .line 26
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexScrollCard;->init()V

    .line 27
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/adapter/IndexScrollCard;->mItemView:Landroid/view/View;

    const v1, 0x7f0c074e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexScrollCard;->mTxtTitle:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/tudou/adapter/IndexScrollCard;->mItemView:Landroid/view/View;

    const v1, 0x7f0c074f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexScrollCard;->mTxtContent:Landroid/widget/TextView;

    .line 34
    return-void
.end method
