.class public Lcom/tudou/adapter/IndexItemNormalTitle;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemNormalTitle.java"


# instance fields
.field public mImgTitle:Landroid/widget/ImageView;

.field public mImgTitleTag:Landroid/widget/ImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mLeftLayout:Landroid/view/View;

.field public mRightLaout:Landroid/view/View;

.field public mRootView:Landroid/view/View;

.field public mTitle:Landroid/widget/TextView;

.field public mTxtLable1:Landroid/widget/TextView;

.field public mTxtLable2:Landroid/widget/TextView;

.field public mTxtLable3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemNormalTitle;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemNormalTitle;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "layout_inflater"

    .line 42
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemNormalTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03018c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    const v1, 0x7f0c02b9

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mRootView:Landroid/view/View;

    .line 45
    const v1, 0x7f0c026e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mTitle:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0c0251

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mRightLaout:Landroid/view/View;

    .line 48
    const v1, 0x7f0c0732

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable1:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0c0733

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable2:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0c0734

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mTxtLable3:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0c0438

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mImgTitleTag:Landroid/widget/ImageView;

    .line 55
    const v1, 0x7f0c0746

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mImgTitle:Landroid/widget/ImageView;

    .line 56
    const v1, 0x7f0c0745

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemNormalTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemNormalTitle;->mLeftLayout:Landroid/view/View;

    .line 57
    return-void
.end method
