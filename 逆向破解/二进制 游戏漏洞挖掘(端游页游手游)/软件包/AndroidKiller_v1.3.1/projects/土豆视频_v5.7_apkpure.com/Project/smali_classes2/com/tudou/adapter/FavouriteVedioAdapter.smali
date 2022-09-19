.class public Lcom/tudou/adapter/FavouriteVedioAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavouriteVedioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public flag:Z

.field public isEdit:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMyFavouriteVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->flag:Z

    .line 31
    iput-object p2, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method private fillData2View(Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;Lcom/youku/vo/FavouriteVideo;)V
    .locals 6
    .param p1, "holder"    # Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/vo/FavouriteVideo;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 77
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->itemPoster:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/youku/vo/FavouriteVideo;->picUrl_16_9:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->itemPoster:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 79
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget v1, p2, Lcom/youku/vo/FavouriteVideo;->totalTime:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime3(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->channelname:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->channelname:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u9891\u9053\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/vo/FavouriteVideo;->ownerNickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    iget-boolean v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-boolean v0, p2, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0207ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_1
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->playedItemTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/FavouriteVideo;->title_new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->channelname:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0207fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initViewHolder(Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const v0, 0x7f0c07d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->itemPoster:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0c07d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->playedItemTitle:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0c07c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0c028d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0c07d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;->channelname:Landroid/widget/TextView;

    .line 114
    return-void
.end method


# virtual methods
.method public clearSelected()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMyFavouriteCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    if-nez p2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0301af

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;-><init>()V

    .line 63
    .local v1, "viewHolder":Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;
    invoke-direct {p0, v1, p2}, Lcom/tudou/adapter/FavouriteVedioAdapter;->initViewHolder(Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;Landroid/view/View;)V

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/FavouriteVideo;

    .line 71
    .local v0, "mCurrentFavouriteVideo":Lcom/youku/vo/FavouriteVideo;
    invoke-direct {p0, v1, v0}, Lcom/tudou/adapter/FavouriteVedioAdapter;->fillData2View(Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;Lcom/youku/vo/FavouriteVideo;)V

    .line 73
    .end local v0    # "mCurrentFavouriteVideo":Lcom/youku/vo/FavouriteVideo;
    :cond_0
    return-object p2

    .line 66
    .end local v1    # "viewHolder":Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/tudou/adapter/FavouriteVedioAdapter$ViewHolder;
    goto :goto_0
.end method

.method public removeSelectedItem(Lcom/youku/vo/FavouriteVideo;)V
    .locals 1
    .param p1, "item"    # Lcom/youku/vo/FavouriteVideo;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public removeSelectedItem(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    iget-object v0, p0, Lcom/tudou/adapter/FavouriteVedioAdapter;->mMyFavouriteVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 126
    return-void
.end method
