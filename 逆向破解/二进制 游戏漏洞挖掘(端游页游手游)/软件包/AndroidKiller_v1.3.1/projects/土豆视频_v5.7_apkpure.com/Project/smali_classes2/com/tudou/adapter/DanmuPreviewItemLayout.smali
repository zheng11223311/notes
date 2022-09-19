.class public Lcom/tudou/adapter/DanmuPreviewItemLayout;
.super Landroid/widget/RelativeLayout;
.source "DanmuPreviewItemLayout.java"


# instance fields
.field public mDanmu1:Landroid/widget/TextView;

.field public mDanmu2:Landroid/widget/TextView;

.field public mDanmu3:Landroid/widget/TextView;

.field public mDanmu4:Landroid/widget/TextView;

.field public mDanmu5:Landroid/widget/TextView;

.field public mDanmuCount:Landroid/widget/LinearLayout;

.field public mDanmuLayout:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mPlayCount:Landroid/widget/TextView;

.field public mPlayVideo:Landroid/view/View;

.field public mShare:Landroid/widget/ImageView;

.field public mThumbnail:Lcom/youku/widget/YoukuImageView;

.field public mVideoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301a7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    const v0, 0x7f0c07aa

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuLayout:Landroid/view/View;

    .line 46
    const v0, 0x7f0c07b8

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mVideoTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0c07bb

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mPlayCount:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c07ac

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/YoukuImageView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mThumbnail:Lcom/youku/widget/YoukuImageView;

    .line 49
    const v0, 0x7f0c07b4

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mPlayVideo:Landroid/view/View;

    .line 50
    const v0, 0x7f0c07b7

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mShare:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0c07b5

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmuCount:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f0c07ad

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu1:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0c07ae

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu2:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0c07af

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu3:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0c07b0

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu4:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c07b1

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DanmuPreviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/DanmuPreviewItemLayout;->mDanmu5:Landroid/widget/TextView;

    .line 57
    return-void
.end method
