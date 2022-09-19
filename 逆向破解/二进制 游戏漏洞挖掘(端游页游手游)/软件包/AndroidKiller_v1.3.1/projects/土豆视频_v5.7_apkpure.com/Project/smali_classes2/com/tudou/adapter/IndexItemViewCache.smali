.class public Lcom/tudou/adapter/IndexItemViewCache;
.super Ljava/lang/Object;
.source "IndexItemViewCache.java"


# instance fields
.field public alias:Landroid/widget/TextView;

.field public corner_image:Landroid/widget/ImageView;

.field public mBokeLayout:Landroid/view/View;

.field public mOwnerNickname:Landroid/widget/TextView;

.field public mUserPic:Landroid/widget/ImageView;

.field public stripe_right:Landroid/widget/TextView;

.field public stripe_top:Landroid/widget/TextView;

.field public thumbnail:Landroid/widget/ImageView;

.field public title_1line:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemViewCache;->initView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tudou/adapter/IndexItemViewCache;->view:Landroid/view/View;

    .line 28
    const v0, 0x7f0c0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->thumbnail:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f0c028d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->stripe_top:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0c0742

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->stripe_right:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0c0283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->title_1line:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0c0288

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->alias:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0c0417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0c0436

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->mUserPic:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0c0740

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->mOwnerNickname:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0c073f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemViewCache;->mBokeLayout:Landroid/view/View;

    .line 37
    return-void
.end method
