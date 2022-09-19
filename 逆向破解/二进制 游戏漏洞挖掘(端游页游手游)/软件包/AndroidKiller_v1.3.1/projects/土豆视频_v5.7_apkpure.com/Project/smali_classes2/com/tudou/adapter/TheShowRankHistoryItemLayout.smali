.class public Lcom/tudou/adapter/TheShowRankHistoryItemLayout;
.super Landroid/widget/RelativeLayout;
.source "TheShowRankHistoryItemLayout.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mLeft:Landroid/view/View;

.field public mLeftDescription:Landroid/widget/TextView;

.field public mLeftNum:Landroid/widget/TextView;

.field public mLeftPic:Landroid/widget/ImageView;

.field public mLeftPlayer:Landroid/widget/TextView;

.field public mRight:Landroid/view/View;

.field public mRightDescription:Landroid/widget/TextView;

.field public mRightNum:Landroid/widget/TextView;

.field public mRightPic:Landroid/widget/ImageView;

.field public mRightPlayer:Landroid/widget/TextView;

.field public mTheShowRankHistoryLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v0, 0x7f0c082c

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mTheShowRankHistoryLayout:Landroid/view/View;

    .line 39
    const v0, 0x7f0c0745

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeft:Landroid/view/View;

    .line 40
    const v0, 0x7f0c0251

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRight:Landroid/view/View;

    .line 41
    const v0, 0x7f0c084c

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftPic:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0c0852

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightPic:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0c084e

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftPlayer:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c0854

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightPlayer:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c084f

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftDescription:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c0855

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightDescription:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0c0850

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftNum:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c0856

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightNum:Landroid/widget/TextView;

    .line 49
    return-void
.end method
