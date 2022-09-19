.class public Lcom/tudou/detail/adapter/PlaylistAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;
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
    .line 23
    const-class v0, Lcom/tudou/detail/adapter/PlaylistAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/PlaylistAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSelection:I

    .line 32
    sget-object v0, Lcom/tudou/detail/adapter/PlaylistAdapter;->TAG:Ljava/lang/String;

    const-string v1, "PlaylistAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 36
    iget-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/PlaylistAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/PlaylistAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/tudou/detail/adapter/PlaylistAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v2}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/tudou/detail/adapter/PlaylistAdapter;->getVideo(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideo(I)Lcom/tudou/detail/vo/Video;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "root":Landroid/view/View;
    const-string v3, "number"

    iget-object v4, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    iget-object v3, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300ad

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    :goto_0
    move-object p2, v1

    .line 73
    new-instance v3, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;

    invoke-direct {v3, p0, v1}, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;-><init>(Lcom/tudou/detail/adapter/PlaylistAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;

    .line 78
    .local v0, "holder":Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;
    iget-object v3, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v3, p1}, Lcom/tudou/detail/vo/VideoList;->get(I)Lcom/tudou/detail/vo/Video;

    move-result-object v2

    .line 79
    .local v2, "video":Lcom/tudou/detail/vo/Video;
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    iget-boolean v3, v2, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    const-string v3, "number"

    iget-object v4, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    :goto_2
    iget v3, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSelection:I

    if-ne p1, v3, :cond_6

    .line 92
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const-string v3, "chinese"

    iget-object v4, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_1
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    const v4, 0x7f0201c5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    :goto_3
    return-object p2

    .line 70
    .end local v0    # "holder":Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;
    .end local v2    # "video":Lcom/tudou/detail/vo/Video;
    .restart local v1    # "root":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300aa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    .line 80
    .end local v1    # "root":Landroid/view/View;
    .restart local v0    # "holder":Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;
    .restart local v2    # "video":Lcom/tudou/detail/vo/Video;
    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    .line 83
    :cond_4
    iget-wide v4, v2, Lcom/tudou/detail/vo/Video;->mDuration:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_5

    .line 84
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_4
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u64ad\u653e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/tudou/detail/vo/Video;->mPlaytimes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 86
    :cond_5
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    iget-wide v4, v2, Lcom/tudou/detail/vo/Video;->mDuration:D

    double-to-int v4, v4

    invoke-static {v4}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 99
    :cond_6
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0x67

    const/16 v6, 0x67

    const/16 v7, 0x67

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    const-string v3, "chinese"

    iget-object v4, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 101
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0x67

    const/16 v6, 0x67

    const/16 v7, 0x67

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0x67

    const/16 v6, 0x67

    const/16 v7, 0x67

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :cond_7
    iget-object v3, v0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    const v4, 0x7f0201c4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/tudou/detail/adapter/PlaylistAdapter;->mSelection:I

    .line 111
    return-void
.end method
