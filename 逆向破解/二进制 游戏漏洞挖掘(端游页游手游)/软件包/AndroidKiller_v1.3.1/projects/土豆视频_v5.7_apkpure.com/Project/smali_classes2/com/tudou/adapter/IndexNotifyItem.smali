.class public Lcom/tudou/adapter/IndexNotifyItem;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexNotifyItem.java"


# instance fields
.field public mClose:Landroid/view/View;

.field public mContent:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexNotifyItem;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexNotifyItem;->init()V

    .line 31
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "layout_inflater"

    .line 35
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexNotifyItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexNotifyItem;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iget-object v1, p0, Lcom/tudou/adapter/IndexNotifyItem;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03018d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v1, 0x7f0c02b9

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexNotifyItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexNotifyItem;->mRootView:Landroid/view/View;

    .line 38
    const v1, 0x7f0c0748

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexNotifyItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexNotifyItem;->mIcon:Landroid/widget/ImageView;

    .line 39
    const v1, 0x7f0c02bb

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexNotifyItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/IndexNotifyItem;->mContent:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f0c0747

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexNotifyItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexNotifyItem;->mClose:Landroid/view/View;

    .line 43
    return-void
.end method
