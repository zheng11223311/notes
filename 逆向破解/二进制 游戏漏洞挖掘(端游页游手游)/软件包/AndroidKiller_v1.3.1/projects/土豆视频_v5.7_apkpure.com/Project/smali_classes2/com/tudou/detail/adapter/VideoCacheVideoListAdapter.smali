.class public Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoCacheVideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownLoadManager:Lcom/tudou/service/download/DownloadManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelection:I

.field private mSeriesMode:Ljava/lang/String;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSelection:I

    .line 39
    sget-object v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "VideoCacheVideoListAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 43
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSeriesMode:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mDownLoadManager:Lcom/tudou/service/download/DownloadManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mDownLoadManager:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSeriesMode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->getVideo(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideo(I)Lcom/tudou/detail/vo/Video;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    sget-object v5, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView positio = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p2, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "root":Landroid/view/View;
    const-string v5, "number"

    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0300b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 81
    :goto_0
    move-object p2, v1

    .line 82
    new-instance v5, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;

    invoke-direct {v5, p0, v1}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;-><init>(Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;

    .line 86
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v5, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v4

    .line 87
    .local v4, "video":Lcom/tudou/detail/vo/Video;
    iput-object v4, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    .line 88
    iget-object v3, v4, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 89
    .local v3, "title":Ljava/lang/String;
    const-string v5, "number"

    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    :goto_1
    iget-object v6, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    iget-boolean v5, v4, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget v5, v4, Lcom/tudou/detail/vo/Video;->mLimit:I

    invoke-static {v5}, Lcom/tudou/detail/fragment/VideoCacheFragment;->isNotLimitCache(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 102
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_3
    iget v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSelection:I

    if-ne p1, v5, :cond_7

    .line 110
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0x66

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    const-string v5, "chinese"

    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0x66

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0x66

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :cond_1
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    const v6, 0x7f0201c5

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    :goto_4
    invoke-virtual {v0, v4}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->syncDownloadState(Lcom/tudou/detail/vo/Video;)V

    .line 126
    return-object p2

    .line 79
    .end local v0    # "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "video":Lcom/tudou/detail/vo/Video;
    .restart local v1    # "root":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0300b8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    .line 91
    .end local v1    # "root":Landroid/view/View;
    .restart local v0    # "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v4    # "video":Lcom/tudou/detail/vo/Video;
    :cond_3
    iget-wide v6, v4, Lcom/tudou/detail/vo/Video;->mDuration:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_4

    .line 92
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_5
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 94
    :cond_4
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    iget-wide v6, v4, Lcom/tudou/detail/vo/Video;->mDuration:D

    double-to-int v6, v6

    invoke-static {v6}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 100
    :cond_5
    const/16 v5, 0x8

    goto/16 :goto_2

    .line 104
    :cond_6
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0xd5

    const/16 v8, 0xd5

    const/16 v9, 0xd5

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 117
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_7
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0x67

    const/16 v8, 0x67

    const/16 v9, 0x67

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    const-string v5, "chinese"

    iget-object v6, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 119
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0x67

    const/16 v8, 0x67

    const/16 v9, 0x67

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0x67

    const/16 v8, 0x67

    const/16 v9, 0x67

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :cond_8
    iget-object v5, v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    const v6, 0x7f0201c4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->mSelection:I

    .line 131
    return-void
.end method
