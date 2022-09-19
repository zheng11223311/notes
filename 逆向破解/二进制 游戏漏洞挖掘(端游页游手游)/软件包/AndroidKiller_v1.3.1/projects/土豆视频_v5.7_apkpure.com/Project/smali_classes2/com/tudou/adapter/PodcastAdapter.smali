.class public Lcom/tudou/adapter/PodcastAdapter;
.super Landroid/widget/BaseAdapter;
.source "PodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final BRIEF_MODE:I = 0x0

.field public static final PLAYLIST_MODE:I = 0x2

.field public static final VIDEO_MODE:I = 0x1


# instance fields
.field public aboutMyself:Ljava/lang/String;

.field public clicklistener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private info:Lcom/youku/vo/UploadVideoinfo;

.field public istime:Z

.field private mPlaylists:Lcom/youku/vo/Playlists;

.field private mode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/UploadVideoinfo;Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/youku/vo/Playlists;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "info"    # Lcom/youku/vo/UploadVideoinfo;
    .param p4, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p5, "playlists"    # Lcom/youku/vo/Playlists;
    .param p6, "clicklistener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/adapter/PodcastAdapter;->istime:Z

    .line 45
    iput-object p1, p0, Lcom/tudou/adapter/PodcastAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/tudou/adapter/PodcastAdapter;->handler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/tudou/adapter/PodcastAdapter;->info:Lcom/youku/vo/UploadVideoinfo;

    .line 48
    iput-object p4, p0, Lcom/tudou/adapter/PodcastAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 49
    iput-object p5, p0, Lcom/tudou/adapter/PodcastAdapter;->mPlaylists:Lcom/youku/vo/Playlists;

    .line 50
    iput-object p6, p0, Lcom/tudou/adapter/PodcastAdapter;->clicklistener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/PodcastAdapter$ViewHolder;Landroid/view/View;I)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p3}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 139
    :pswitch_0
    const v0, 0x7f0c0805

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    goto :goto_0

    .line 142
    :pswitch_1
    const v0, 0x7f0c0281

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0c0283

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0c028d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0c07bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->title_2line:Landroid/widget/TextView;

    goto :goto_0

    .line 151
    :pswitch_2
    const v0, 0x7f0c00f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0c00f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0c07d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0c07d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->title_2line:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0c0806

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->playlist_item_count:Landroid/widget/TextView;

    goto :goto_0

    .line 158
    :pswitch_3
    const v0, 0x7f0c0591

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->byclick:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0c0590

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->bytime:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setViewHolderData(Lcom/tudou/adapter/PodcastAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "viewholder"    # Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
    .param p2, "pos"    # I

    .prologue
    const v6, 0x7f020371

    const v5, -0x8b00

    const v4, -0x99999a

    .line 166
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/PodcastAdapter;->aboutMyself:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v2, p0, Lcom/tudou/adapter/PodcastAdapter;->info:Lcom/youku/vo/UploadVideoinfo;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UploadVideoinfo$Info;

    .line 174
    .local v1, "tmp":Lcom/youku/vo/UploadVideoinfo$Info;
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v2, p0, Lcom/tudou/adapter/PodcastAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, v1, Lcom/youku/vo/UploadVideoinfo$Info;->bigPicUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 177
    :try_start_0
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/youku/vo/UploadVideoinfo$Info;->totalTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->title_2line:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/vo/UploadVideoinfo$Info;->playTimes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/youku/vo/UploadVideoinfo$Info;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    .end local v1    # "tmp":Lcom/youku/vo/UploadVideoinfo$Info;
    :pswitch_2
    iget-object v2, p0, Lcom/tudou/adapter/PodcastAdapter;->mPlaylists:Lcom/youku/vo/Playlists;

    iget-object v2, v2, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v2, v2, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/Playlists$PlaylistData$ListData;

    .line 189
    .local v0, "listdata":Lcom/youku/vo/Playlists$PlaylistData$ListData;
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v2, p0, Lcom/tudou/adapter/PodcastAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, v0, Lcom/youku/vo/Playlists$PlaylistData$ListData;->coverPicUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 191
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/Playlists$PlaylistData$ListData;->playTimes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->title_2line:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f4\u65b0\u4e8e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/Playlists$PlaylistData$ListData;->updateDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/Playlists$PlaylistData$ListData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->playlist_item_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/Playlists$PlaylistData$ListData;->itemsCount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 197
    .end local v0    # "listdata":Lcom/youku/vo/Playlists$PlaylistData$ListData;
    :pswitch_3
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->byclick:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/PodcastAdapter;->clicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->bytime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/PodcastAdapter;->clicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-boolean v2, p0, Lcom/tudou/adapter/PodcastAdapter;->istime:Z

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->byclick:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->bytime:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 203
    :cond_0
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->bytime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v2, p1, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;->byclick:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 179
    .restart local v1    # "tmp":Lcom/youku/vo/UploadVideoinfo$Info;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public changeMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    .line 75
    invoke-virtual {p0}, Lcom/tudou/adapter/PodcastAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    iget v1, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    if-ne v1, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/tudou/adapter/PodcastAdapter;->info:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget v0, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 60
    iget-object v0, p0, Lcom/tudou/adapter/PodcastAdapter;->mPlaylists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tudou/adapter/PodcastAdapter;->info:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x3

    .line 94
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    if-nez p2, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    new-instance v0, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/PodcastAdapter;)V

    .line 127
    .local v0, "viewholder":Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
    invoke-direct {p0, v0, p2, p1}, Lcom/tudou/adapter/PodcastAdapter;->initViewHolder(Lcom/tudou/adapter/PodcastAdapter$ViewHolder;Landroid/view/View;I)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/tudou/adapter/PodcastAdapter;->setViewHolderData(Lcom/tudou/adapter/PodcastAdapter$ViewHolder;I)V

    .line 133
    return-object p2

    .line 109
    .end local v0    # "viewholder":Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/adapter/PodcastAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b9

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/tudou/adapter/PodcastAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030209

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/tudou/adapter/PodcastAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301ba

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v1, p0, Lcom/tudou/adapter/PodcastAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030247

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/PodcastAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/PodcastAdapter$ViewHolder;
    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x4

    return v0
.end method

.method public getisClick()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/tudou/adapter/PodcastAdapter;->istime:Z

    return v0
.end method

.method public setByClick(Z)V
    .locals 0
    .param p1, "istime"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/tudou/adapter/PodcastAdapter;->istime:Z

    .line 214
    invoke-virtual {p0}, Lcom/tudou/adapter/PodcastAdapter;->notifyDataSetChanged()V

    .line 215
    return-void
.end method

.method public setSelf(Ljava/lang/String;)V
    .locals 1
    .param p1, "aboutMyself"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tudou/adapter/PodcastAdapter;->aboutMyself:Ljava/lang/String;

    .line 68
    iget v0, p0, Lcom/tudou/adapter/PodcastAdapter;->mode:I

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/tudou/adapter/PodcastAdapter;->notifyDataSetChanged()V

    .line 71
    :cond_0
    return-void
.end method
