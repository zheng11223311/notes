.class public Lcom/tudou/adapter/SlideItemView;
.super Lcom/tudou/adapter/IndexItemType;
.source "SlideItemView.java"


# instance fields
.field public mAdRootView:Landroid/widget/RelativeLayout;

.field public mAdView:Landroid/widget/RelativeLayout;

.field public mCloseAdIcon:Landroid/view/View;

.field public mCloseAdView:Landroid/view/View;

.field public mPointContainer:Landroid/widget/LinearLayout;

.field public mSubTitle:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;

.field public mYoukuGallery:Lcom/youku/widget/YoukuGallery;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/tudou/adapter/SlideItemView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Lcom/tudou/adapter/SlideItemView;->init()V

    .line 39
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "layout_inflater"

    .line 43
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/SlideItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03018e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    const v1, 0x7f0c0289

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuGallery;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    .line 46
    const v1, 0x7f0c028c

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mPointContainer:Landroid/widget/LinearLayout;

    .line 47
    const v1, 0x7f0c00f2

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mTxtTitle:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0c028b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mSubTitle:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0c0749

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mAdRootView:Landroid/widget/RelativeLayout;

    .line 53
    const v1, 0x7f0c074a

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mAdView:Landroid/widget/RelativeLayout;

    .line 54
    const v1, 0x7f0c074b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mCloseAdView:Landroid/view/View;

    .line 55
    const v1, 0x7f0c074c

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/SlideItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/SlideItemView;->mCloseAdIcon:Landroid/view/View;

    .line 56
    return-void
.end method
