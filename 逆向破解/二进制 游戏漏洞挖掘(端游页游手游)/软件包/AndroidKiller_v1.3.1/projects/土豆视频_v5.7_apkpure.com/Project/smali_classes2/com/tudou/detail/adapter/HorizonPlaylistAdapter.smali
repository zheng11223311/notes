.class public Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HorizonPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelection:I

.field private mSeriesMode:Ljava/lang/String;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSelection:I

    .line 40
    sget-object v0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->TAG:Ljava/lang/String;

    const-string v1, "HorizonPlaylistAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 44
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v0

    return v0
.end method

.method public getVideo(I)Lcom/tudou/detail/vo/Video;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 25
    check-cast p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;
    .param p2, "positon"    # I

    .prologue
    const/16 v3, 0x8

    const/16 v10, 0x66

    const/4 v2, 0x0

    const/16 v9, 0xff

    const/16 v8, 0x67

    .line 62
    iget-object v1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1, p2}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    .line 63
    .local v0, "video":Lcom/tudou/detail/vo/Video;
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v4, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    iget-boolean v1, v0, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    const-string v1, "number"

    iget-object v4, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    :goto_1
    iget v1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSelection:I

    if-ne p2, v1, :cond_5

    .line 81
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->title:Landroid/widget/TextView;

    invoke-static {v9, v9, v10, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    const-string v1, "chinese"

    iget-object v3, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    invoke-static {v9, v9, v10, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->duration:Landroid/widget/TextView;

    invoke-static {v9, v9, v10, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :cond_0
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->content:Landroid/view/View;

    const v2, 0x7f0201c5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    :goto_2
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->content:Landroid/view/View;

    new-instance v2, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$1;-><init>(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void

    :cond_1
    move v1, v3

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    iget-wide v4, v0, Lcom/tudou/detail/vo/Video;->mDuration:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_3

    .line 68
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_3
    iget-object v1, v0, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->duration:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/tudou/detail/vo/Video;->mDuration:D

    double-to-int v3, v4

    invoke-static {v3}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 77
    :cond_4
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 88
    :cond_5
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->title:Landroid/widget/TextView;

    invoke-static {v9, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    const-string v1, "chinese"

    iget-object v2, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    invoke-static {v9, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->duration:Landroid/widget/TextView;

    invoke-static {v9, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :cond_6
    iget-object v1, p1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->content:Landroid/view/View;

    const v2, 0x7f0201c4

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "root":Landroid/view/View;
    const-string v1, "number"

    iget-object v2, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ac

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    :goto_0
    new-instance v1, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;

    invoke-direct {v1, p0, v0}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;-><init>(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;Landroid/view/View;)V

    return-object v1

    .line 111
    :cond_0
    const-string v1, "chinese"

    iget-object v2, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ab

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

    .line 37
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->mSelection:I

    .line 121
    return-void
.end method
