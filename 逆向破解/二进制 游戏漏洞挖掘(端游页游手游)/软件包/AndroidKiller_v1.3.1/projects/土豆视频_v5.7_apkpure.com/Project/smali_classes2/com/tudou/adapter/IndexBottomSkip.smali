.class public Lcom/tudou/adapter/IndexBottomSkip;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexBottomSkip.java"


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field public mTxtContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomSkip;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomSkip;->init()V

    .line 27
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "layout_inflater"

    .line 31
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomSkip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomSkip;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomSkip;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03017a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    const v1, 0x7f0c073a

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexBottomSkip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomSkip;->mTxtContent:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0c0415

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexBottomSkip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomSkip;->bgLayout:Landroid/view/View;

    .line 36
    return-void
.end method
