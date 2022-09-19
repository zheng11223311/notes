.class public Lcom/youku/adapter/CachedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CachedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/CachedListAdapter$OnSetEditListener;,
        Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

.field private downloadedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedList_show:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private editable:Z

.field private loader:Lcom/tudou/service/download/AsyncImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field public onSetEditListener:Lcom/youku/adapter/CachedListAdapter$OnSetEditListener;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const-string v0, "CacheListAdapter"

    iput-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->tag:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/youku/util/DeleteAbleItemList;->getInstance()Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/adapter/CachedListAdapter;->editable:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-static {}, Lcom/tudou/service/download/AsyncImageLoader;->getInstance()Lcom/tudou/service/download/AsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->loader:Lcom/tudou/service/download/AsyncImageLoader;

    .line 67
    return-void
.end method

.method private getItemDonwloadInfo(ILcom/tudou/service/download/DownloadInfo;)Lcom/tudou/service/download/DownloadInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "info":Lcom/tudou/service/download/DownloadInfo;
    check-cast p2, Lcom/tudou/service/download/DownloadInfo;

    .line 122
    .restart local p2    # "info":Lcom/tudou/service/download/DownloadInfo;
    return-object p2
.end method

.method private getSeriesCount(Lcom/tudou/service/download/DownloadInfo;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/service/download/DownloadInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v4, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 234
    .local v0, "count":I
    const/4 v3, 0x0

    .line 235
    .local v3, "j":I
    iget-object v6, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 236
    .local v1, "i":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "tempId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 239
    iget v6, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    if-nez v6, :cond_0

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":Lcom/tudou/service/download/DownloadInfo;
    .end local v5    # "tempId":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-object v4
.end method

.method private initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CachedListAdapter$ViewHolder;)Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/youku/adapter/CachedListAdapter$ViewHolder;

    .prologue
    .line 127
    new-instance p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;

    .end local p2    # "viewHolder":Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    invoke-direct {p2, p0}, Lcom/youku/adapter/CachedListAdapter$ViewHolder;-><init>(Lcom/youku/adapter/CachedListAdapter;)V

    .line 128
    .restart local p2    # "viewHolder":Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    const v0, 0x7f0c06d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c06d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f0c06d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 131
    iget-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 132
    const v0, 0x7f0c06d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f0c06cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheStatusImgLine:Landroid/widget/LinearLayout;

    .line 134
    const v0, 0x7f0c06d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0c06d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0c06d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheImageAlbum:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f0c06d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    return-object p2
.end method

.method private setView(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 8
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 148
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_1
    iget-boolean v0, p0, Lcom/youku/adapter/CachedListAdapter;->editable:Z

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheStatusImgLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0, p2}, Lcom/youku/util/DeleteAbleItemList;->containsItemSelect(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const v1, 0x7f0207fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 183
    :goto_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v0

    if-nez v0, :cond_9

    .line 184
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachedListAdapter;->showDeIcon(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 187
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheImageAlbum:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-boolean v0, p2, Lcom/tudou/service/download/DownloadInfo;->isplay:Z

    if-eqz v0, :cond_6

    .line 189
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_3
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->loader:Lcom/tudou/service/download/AsyncImageLoader;

    iget-object v1, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cache"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/service/download/AsyncImageLoader;->loadDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 221
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_b

    .line 222
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 160
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 161
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.subtitle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 164
    :cond_3
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 175
    :cond_4
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const v1, 0x7f0207ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 180
    :cond_5
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheStatusImgLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 192
    :cond_6
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    if-nez v0, :cond_7

    .line 193
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    iget v1, p2, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 196
    :cond_7
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, -0x3c

    if-le v0, v1, :cond_8

    .line 197
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 201
    :cond_8
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c2\u770b\u81f3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 207
    :cond_9
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    invoke-direct {p0, p2}, Lcom/youku/adapter/CachedListAdapter;->getSeriesCount(Lcom/tudou/service/download/DownloadInfo;)Ljava/util/ArrayList;

    move-result-object v7

    .line 209
    .local v7, "seriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->isAlbumOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 211
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    :goto_4
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheImageAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 213
    :cond_a
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 224
    .end local v7    # "seriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private showDeIcon(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 316
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachedListAdapter;->showHighEndIcon(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachedListAdapter;->showLowEndIcon(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private showHighEndIcon(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 330
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string v0, "tudou"

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 333
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 336
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-eq v4, v0, :cond_3

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 340
    :cond_3
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_4
    const-string v0, "youku"

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-eq v2, v0, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-eq v3, v0, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-ne v5, v0, :cond_6

    .line 346
    :cond_5
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 348
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-ne v4, v0, :cond_8

    .line 349
    :cond_7
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 351
    :cond_8
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showLowEndIcon(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 324
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "viewHolder":Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/youku/adapter/CachedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030161

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    invoke-direct {p0, p2, v1}, Lcom/youku/adapter/CachedListAdapter;->initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CachedListAdapter$ViewHolder;)Lcom/youku/adapter/CachedListAdapter$ViewHolder;

    move-result-object v1

    .line 114
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 115
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-direct {p0, p1, v0}, Lcom/youku/adapter/CachedListAdapter;->getItemDonwloadInfo(ILcom/tudou/service/download/DownloadInfo;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    .line 116
    invoke-direct {p0, v1, v0}, Lcom/youku/adapter/CachedListAdapter;->setView(Lcom/youku/adapter/CachedListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 117
    return-object p2

    .line 109
    .end local v0    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    check-cast v1, Lcom/youku/adapter/CachedListAdapter$ViewHolder;

    .line 110
    .restart local v1    # "viewHolder":Lcom/youku/adapter/CachedListAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 111
    invoke-direct {p0, p2, v1}, Lcom/youku/adapter/CachedListAdapter;->initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CachedListAdapter$ViewHolder;)Lcom/youku/adapter/CachedListAdapter$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/youku/adapter/CachedListAdapter;->editable:Z

    return v0
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "downloadedList_show":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local p2, "downloadedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CachedListAdapter;->downloadedList:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/youku/adapter/CachedListAdapter;->editable:Z

    .line 265
    return-void
.end method

.method public setOnSetEditListener(Lcom/youku/adapter/CachedListAdapter$OnSetEditListener;)V
    .locals 0
    .param p1, "onSetEditListener"    # Lcom/youku/adapter/CachedListAdapter$OnSetEditListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/youku/adapter/CachedListAdapter;->onSetEditListener:Lcom/youku/adapter/CachedListAdapter$OnSetEditListener;

    .line 367
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 254
    :cond_0
    return-void
.end method
