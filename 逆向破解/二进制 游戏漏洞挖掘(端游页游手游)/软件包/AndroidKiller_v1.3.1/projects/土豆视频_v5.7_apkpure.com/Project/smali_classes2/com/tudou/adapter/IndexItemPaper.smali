.class public Lcom/tudou/adapter/IndexItemPaper;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemPaper.java"


# instance fields
.field public mImgMain:Landroid/widget/ImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsTopic:Z

.field public mPaperContent:Landroid/view/View;

.field public mSubTitle:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemPaper;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemPaper;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTopic"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean p2, p0, Lcom/tudou/adapter/IndexItemPaper;->mIsTopic:Z

    .line 31
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemPaper;->init()V

    .line 32
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    const-string v0, "layout_inflater"

    .line 41
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemPaper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iget-boolean v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mIsTopic:Z

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030186

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    :goto_0
    const v1, 0x7f0c0281

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemPaper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mImgMain:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0c00f2

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemPaper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mTxtTitle:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0c028b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemPaper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mSubTitle:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0c028a

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemPaper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mPaperContent:Landroid/view/View;

    .line 51
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemPaper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030185

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method
