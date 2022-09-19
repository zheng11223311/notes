.class public Lcom/tudou/adapter/IndexItemHotTitle;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemHotTitle.java"


# instance fields
.field public mImgRigt:Landroid/widget/ImageView;

.field public mImgTitleTag:Landroid/widget/ImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mLayoutView:Landroid/view/View;

.field public mRightLaout:Landroid/view/View;

.field public mTitle:Landroid/widget/TextView;

.field public mTxtRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemHotTitle;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemHotTitle;->init()V

    .line 32
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 35
    const-string v0, "layout_inflater"

    .line 36
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemHotTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03017f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v1, 0x7f0c026e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHotTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mTitle:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0c0251

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHotTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mRightLaout:Landroid/view/View;

    .line 40
    const v1, 0x7f0c073e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHotTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mImgRigt:Landroid/widget/ImageView;

    .line 41
    const v1, 0x7f0c052d

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHotTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mTxtRight:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0c073d

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHotTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mLayoutView:Landroid/view/View;

    .line 43
    const v1, 0x7f0c0438

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHotTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHotTitle;->mImgTitleTag:Landroid/widget/ImageView;

    .line 44
    return-void
.end method
