.class public Lcom/tudou/adapter/HistoryItemLayout;
.super Landroid/widget/RelativeLayout;
.source "HistoryItemLayout.java"


# instance fields
.field public mDeleteIcon:Landroid/widget/ImageView;

.field public mDeviceType:Landroid/widget/ImageView;

.field public mDuration:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mItemPoster:Landroid/widget/ImageView;

.field public mPlayPoint:Landroid/widget/TextView;

.field public mPlayedDate:Landroid/widget/TextView;

.field public mSpaceArrow:Landroid/widget/ImageView;

.field public mThumbnail:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/tudou/adapter/HistoryItemLayout;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/tudou/adapter/HistoryItemLayout;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tudou/adapter/HistoryItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301b1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v0, 0x7f0c07d8

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mTitle:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0c0281

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mThumbnail:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0c07da

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mPlayPoint:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0c07db

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mPlayedDate:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0c07dc

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mSpaceArrow:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0c07c8

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDeleteIcon:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0c028d

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDuration:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c07d9

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/HistoryItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDeviceType:Landroid/widget/ImageView;

    .line 45
    return-void
.end method


# virtual methods
.method public changeState(ZLcom/youku/vo/HistoryVideo;)V
    .locals 3
    .param p1, "editable"    # Z
    .param p2, "item"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mSpaceArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-boolean v0, p2, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDeleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0207fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDeleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0207ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mSpaceArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/tudou/adapter/HistoryItemLayout;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
