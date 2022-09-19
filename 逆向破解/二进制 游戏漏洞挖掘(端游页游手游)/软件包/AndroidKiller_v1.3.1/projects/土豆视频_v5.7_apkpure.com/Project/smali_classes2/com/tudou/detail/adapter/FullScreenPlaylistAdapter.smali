.class public Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;
.super Landroid/widget/BaseAdapter;
.source "FullScreenPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelection:I

.field private mSeriesMode:Ljava/lang/String;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSelection:I

    .line 48
    sget-object v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FullScreenPlaylistAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 52
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    .line 53
    return-void

    .line 52
    :cond_0
    const-string v0, "chinese"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;)Lcom/tudou/detail/vo/VideoList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v0

    .line 65
    .local v0, "count":I
    :goto_0
    sget-object v1, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemCount count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v0

    .line 64
    .end local v0    # "count":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->getVideo(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideo(I)Lcom/tudou/detail/vo/Video;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0xcc

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "root":Landroid/view/View;
    const-string v4, "number"

    iget-object v7, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0300d9

    invoke-virtual {v4, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    :goto_0
    move-object p2, v1

    .line 90
    new-instance v4, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;

    invoke-direct {v4, p0, v1}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;-><init>(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;

    .line 93
    .local v0, "holder":Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;
    iget-object v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v4, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v3

    .line 95
    .local v3, "video":Lcom/tudou/detail/vo/Video;
    new-instance v4, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;-><init>(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;Lcom/tudou/detail/vo/Video;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, v3, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 167
    .local v2, "title":Ljava/lang/String;
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v7, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    iget-boolean v4, v3, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v7, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    iget v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSelection:I

    if-ne p1, v4, :cond_4

    const/16 v4, 0x66

    invoke-static {v9, v9, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    const-string v4, "number"

    iget-object v7, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 197
    :cond_1
    :goto_3
    return-object p2

    .line 87
    .end local v0    # "holder":Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "video":Lcom/tudou/detail/vo/Video;
    .restart local v1    # "root":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0300d8

    invoke-virtual {v4, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .end local v1    # "root":Landroid/view/View;
    .restart local v0    # "holder":Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v3    # "video":Lcom/tudou/detail/vo/Video;
    :cond_3
    move v4, v6

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    const/16 v4, 0xc8

    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_2

    .line 172
    :cond_5
    iget-wide v8, v3, Lcom/tudou/detail/vo/Video;->mDuration:D

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-nez v4, :cond_7

    .line 173
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_4
    iget-object v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v4

    sget-object v7, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-eq v4, v7, :cond_6

    iget-object v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v4

    sget-object v7, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v4, v7, :cond_9

    .line 181
    :cond_6
    iget-object v4, v3, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 182
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 175
    :cond_7
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    iget-wide v8, v3, Lcom/tudou/detail/vo/Video;->mDuration:D

    double-to-int v7, v8

    invoke-static {v7}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 185
    :cond_8
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 187
    :cond_9
    iget-object v4, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v4

    sget-object v5, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v4, v5, :cond_1

    .line 188
    iget-object v4, v3, Lcom/tudou/detail/vo/Video;->mPublishDate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 194
    :cond_a
    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->mSelection:I

    .line 202
    return-void
.end method
