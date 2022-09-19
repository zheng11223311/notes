.class public Lcom/tudou/adapter/ChannelPosterAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelPosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ChannelPosterAdapter$Holder;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_SUCESS:Ljava/lang/String; = "com.tudou.IMAGE_SUCCESS"

.field public static final MSG_REFRESH:I = 0x1


# instance fields
.field handler:Landroid/os/Handler;

.field private mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mcid:Ljava/lang/String;

.field public receiver:Landroid/content/BroadcastReceiver;

.field private videoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Lcom/tudou/adapter/ChannelPosterAdapter$1;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/ChannelPosterAdapter$1;-><init>(Lcom/tudou/adapter/ChannelPosterAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->handler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/tudou/adapter/ChannelPosterAdapter$2;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/ChannelPosterAdapter$2;-><init>(Lcom/tudou/adapter/ChannelPosterAdapter;)V

    iput-object v0, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object p1, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 55
    iput-object p2, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->mcid:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private setUpReceiver()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.IMAGE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/ui/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->videoInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget v0, Lcom/tudou/android/Youku;->POSTER_CHANNELIMAGE_COUNT:I

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    sget v3, Lcom/tudou/android/Youku;->POSTER_CHANNELIMAGE_COUNT:I

    if-nez v3, :cond_0

    move-object v0, p2

    .line 100
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 83
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 84
    iget-object v3, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0302eb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    :cond_1
    new-instance v1, Lcom/tudou/adapter/ChannelPosterAdapter$Holder;

    invoke-direct {v1}, Lcom/tudou/adapter/ChannelPosterAdapter$Holder;-><init>()V

    .line 87
    .local v1, "holder":Lcom/tudou/adapter/ChannelPosterAdapter$Holder;
    const v3, 0x7f0c0289

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tudou/adapter/ChannelPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    .line 89
    iget-object v3, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/tudou/android/Youku;->POSTER_CHANNELIMAGE_COUNT:I

    rem-int v4, p1, v4

    if-le v3, v4, :cond_2

    .line 90
    iget-object v3, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->videoInfos:Ljava/util/ArrayList;

    sget v4, Lcom/tudou/android/Youku;->POSTER_CHANNELIMAGE_COUNT:I

    rem-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Poster;

    .line 92
    .local v2, "videoInfo":Lcom/youku/vo/Poster;
    iget-object v3, v2, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 93
    iget-object v3, v1, Lcom/tudou/adapter/ChannelPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/youku/vo/Poster;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v3, v1, Lcom/tudou/adapter/ChannelPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/youku/util/Util;->addPressState(Landroid/view/View;)V

    .end local v2    # "videoInfo":Lcom/youku/vo/Poster;
    :cond_2
    :goto_1
    move-object v0, p2

    .line 100
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 96
    .end local v0    # "convertView":Landroid/view/View;
    .restart local v2    # "videoInfo":Lcom/youku/vo/Poster;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v2, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    iget-object v5, v1, Lcom/tudou/adapter/ChannelPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/Poster;>;"
    iput-object p1, p0, Lcom/tudou/adapter/ChannelPosterAdapter;->videoInfos:Ljava/util/ArrayList;

    .line 60
    return-void
.end method
