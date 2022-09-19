.class public Lcom/tudou/adapter/TheShowRankItemLayout;
.super Landroid/widget/RelativeLayout;
.source "TheShowRankItemLayout.java"


# instance fields
.field public mAddIcon:Landroid/widget/ImageView;

.field public mAddScore:Landroid/widget/TextView;

.field public mGift:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mItemPic:Landroid/widget/ImageView;

.field public mPlayCount:Landroid/widget/TextView;

.field public mPlayerName:Landroid/widget/TextView;

.field public mPopularity:Landroid/widget/TextView;

.field public mRankPic:Landroid/widget/ImageView;

.field public mScore:Landroid/widget/TextView;

.field public mTheShowRankLayout:Landroid/view/View;

.field public mVideoName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/tudou/adapter/TheShowRankItemLayout;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tudou/adapter/TheShowRankItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v0, 0x7f0c082c

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mTheShowRankLayout:Landroid/view/View;

    .line 39
    const v0, 0x7f0c0229

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mItemPic:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0c0831

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mRankPic:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0c0834

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mScore:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0c0836

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0c0837

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c082e

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mVideoName:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c082f

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mPlayerName:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c0830

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mPlayCount:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0c0839

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0c0838

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankItemLayout;->mPopularity:Landroid/widget/TextView;

    .line 49
    return-void
.end method
