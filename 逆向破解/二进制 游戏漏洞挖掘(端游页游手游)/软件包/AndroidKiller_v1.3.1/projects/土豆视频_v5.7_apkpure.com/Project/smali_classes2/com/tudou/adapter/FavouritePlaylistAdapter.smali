.class public Lcom/tudou/adapter/FavouritePlaylistAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavouritePlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public flag:Z

.field public isEdit:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMyFavouritePlaylists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouritePlaylist;",
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
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->flag:Z

    .line 39
    iput-object p1, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method private fillData2View(Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;Lcom/youku/vo/FavouritePlaylist;)V
    .locals 3
    .param p1, "holder"    # Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
    .param p2, "item"    # Lcom/youku/vo/FavouritePlaylist;

    .prologue
    .line 84
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->itemPoster:Landroid/widget/ImageView;

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/MyFavoriteActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/youku/vo/FavouritePlaylist;->coverPicUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->itemPoster:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 87
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/FavouritePlaylist;->itemsCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->updates:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u4e8e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/vo/FavouritePlaylist;->updateDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->playTimes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/vo/FavouritePlaylist;->playTimes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-boolean v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-boolean v0, p2, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0207ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_0
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->playedItemTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/FavouritePlaylist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0207fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initViewHolder(Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 117
    const v0, 0x7f0c07d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->itemPoster:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0c07d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->playedItemTitle:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0c07c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->deleteIcon:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0c028d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0c07d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->playTimes:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0c07d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;->updates:Landroid/widget/TextView;

    .line 123
    return-void
.end method


# virtual methods
.method public clearSelected()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouritePlaylist;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 55
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
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMyFavouriteCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

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
    .line 67
    if-nez p2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0301ae

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;-><init>()V

    .line 70
    .local v1, "viewHolder":Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
    invoke-direct {p0, v1, p2}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->initViewHolder(Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;Landroid/view/View;)V

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 76
    iget-object v2, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/FavouritePlaylist;

    .line 77
    .local v0, "mCurrentFavouritePlaylist":Lcom/youku/vo/FavouritePlaylist;
    invoke-direct {p0, v1, v0}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->fillData2View(Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;Lcom/youku/vo/FavouritePlaylist;)V

    .line 79
    .end local v0    # "mCurrentFavouritePlaylist":Lcom/youku/vo/FavouritePlaylist;
    :cond_0
    return-object p2

    .line 73
    .end local v1    # "viewHolder":Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
    goto :goto_0
.end method

.method public removeSelectedItem(Lcom/youku/vo/FavouritePlaylist;)V
    .locals 1
    .param p1, "item"    # Lcom/youku/vo/FavouritePlaylist;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public removeSelectedItem(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    iget-object v0, p0, Lcom/tudou/adapter/FavouritePlaylistAdapter;->mMyFavouritePlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 135
    return-void
.end method
