.class public Lcom/tudou/adapter/IndexItemTopicTitle;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemTopicTitle.java"


# instance fields
.field public mImgNet:Landroid/widget/ImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mRootView:Landroid/view/View;

.field public mSubTitle:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemTopicTitle;->init()V

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
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemTopicTitle;->init()V

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
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemTopicTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemTopicTitle;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemTopicTitle;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03019a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v1, 0x7f0c02b9

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemTopicTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemTopicTitle;->mRootView:Landroid/view/View;

    .line 40
    const v1, 0x7f0c026e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemTopicTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemTopicTitle;->mTitle:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0c028b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemTopicTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemTopicTitle;->mSubTitle:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0c0757

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemTopicTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemTopicTitle;->mImgNet:Landroid/widget/ImageView;

    .line 45
    return-void
.end method
