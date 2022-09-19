.class public Lcom/tudou/ui/fragment/CachedFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CachedFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;
    }
.end annotation


# static fields
.field private static final GET_DOWNLOADED_DONE:I = 0x403

.field private static final tag:Ljava/lang/String; = "CachingFragment"


# instance fields
.field private cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

.field private deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

.field private download:Lcom/tudou/service/download/DownloadManager;

.field private downloadedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedList_Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;"
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

.field private isEdit:Z

.field private mHandler:Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;

.field onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

.field private onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

.field private viewHolder:Lcom/youku/vo/CacheViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Lcom/youku/util/DeleteAbleItemList;->getInstance()Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->isEdit:Z

    .line 91
    new-instance v0, Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;-><init>(Lcom/tudou/ui/fragment/CachedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->mHandler:Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;

    .line 305
    new-instance v0, Lcom/tudou/ui/fragment/CachedFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachedFragment$2;-><init>(Lcom/tudou/ui/fragment/CachedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/CachedFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CachedFragment;->initData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->mHandler:Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/CachedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachedFragment;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/CachedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/vo/CacheViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/adapter/CachedListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->download:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method private deleteSelectedItems()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/CacheActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tudou/ui/activity/CacheActivity;->hasDeleted:Z

    .line 343
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->showNoLimit(Landroid/content/Context;)V

    .line 344
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 345
    new-instance v0, Lcom/tudou/ui/fragment/CachedFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachedFragment$3;-><init>(Lcom/tudou/ui/fragment/CachedFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachedFragment$3;->start()V

    .line 381
    :cond_0
    return-void
.end method

.method private goInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|dlAlbum"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 292
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 303
    :goto_0
    return-void

    .line 298
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 299
    .restart local v1    # "mIntent":Landroid/content/Intent;
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 300
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goPlayer(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 243
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 219
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/CachedFragment;->goInner(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/CachedFragment;->hasFree(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    const-string v2, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u64ad\u653e\u7f13\u5b58\u89c6\u9891\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|downloadedVideoClick"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5b8c\u6210\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 231
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/CachedFragment;->refresh(Z)V

    .line 233
    const v2, 0x7f0d0126

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 236
    :cond_3
    iget v2, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, v1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    mul-int/lit16 v3, v3, 0x3e8

    const v4, 0xea60

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private hasFree(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "temp":[Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v2

    .line 388
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 390
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized initData(Z)V
    .locals 9
    .param p1, "updata"    # Z

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v6, p1}, Lcom/tudou/service/download/DownloadManager;->getDownloadedList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    .line 150
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 153
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "showId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "showId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 158
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .restart local v4    # "showId":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 160
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v0    # "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "showId":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    .line 169
    .local v5, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 170
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v6, 0x0

    sput-boolean v6, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 171
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 173
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v3    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_5
    const/4 v6, 0x0

    sput-boolean v6, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 176
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    if-eqz v6, :cond_6

    .line 178
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;->onFinish(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private onItemEditSelect(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 251
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 252
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3, v0}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 255
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 256
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/youku/util/DeleteAbleItemList;->removeItem(Lcom/tudou/service/download/DownloadInfo;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "j":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3, v0}, Lcom/youku/util/DeleteAbleItemList;->removeItem(Lcom/tudou/service/download/DownloadInfo;)V

    .line 274
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 275
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v3, v3, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v4, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v4}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 280
    :goto_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v3, v3, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v4, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/youku/widget/PageBottomDeleteLayout;->allOrNotAll(Lcom/youku/util/DeleteAbleItemList;Ljava/util/ArrayList;)V

    .line 281
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    invoke-virtual {v3}, Lcom/youku/adapter/CachedListAdapter;->notifyDataSetChanged()V

    .line 282
    return-void

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 263
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 264
    .restart local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 265
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 266
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    .line 264
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 270
    .end local v1    # "j":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_4
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3, v0}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_1

    .line 277
    :cond_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v3, v3, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method private onNoEeitSelect(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CachedFragment;->goPlayer(I)V

    .line 213
    return-void
.end method


# virtual methods
.method public isEdit()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->isEdit:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    const v1, 0x7f030101

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->download:Lcom/tudou/service/download/DownloadManager;

    .line 118
    new-instance v1, Lcom/youku/vo/CacheViewHolder;

    invoke-direct {v1, v0}, Lcom/youku/vo/CacheViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    .line 120
    new-instance v1, Lcom/youku/adapter/CachedListAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/adapter/CachedListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    .line 121
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "cache"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0, p3}, Lcom/tudou/ui/fragment/CachedFragment;->onItemEditSelect(I)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0, p3}, Lcom/tudou/ui/fragment/CachedFragment;->onNoEeitSelect(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/CachedFragment;->refresh(Z)V

    .line 130
    return-void
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "isshow"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->showNoLimitTouchModel(Landroid/content/Context;)V

    .line 138
    :cond_0
    new-instance v0, Lcom/tudou/ui/fragment/CachedFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachedFragment$1;-><init>(Lcom/tudou/ui/fragment/CachedFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachedFragment$1;->start()V

    .line 146
    return-void
.end method

.method public refreshAdapter()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedList_show:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/youku/adapter/CachedListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 189
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachedListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setEdit(Z)V
    .locals 2
    .param p1, "isEdit"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->clearQueue()V

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0}, Lcom/youku/widget/PageBottomDeleteLayout;->initial()V

    .line 78
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/CachedFragment;->isEdit:Z

    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/adapter/CachedListAdapter;->setEditable(Z)V

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->cacheAdapter:Lcom/youku/adapter/CachedListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachedListAdapter;->notifyDataSetChanged()V

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setOnBtnListener(Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnDataFinishListener(Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;)V
    .locals 0
    .param p1, "onDataFinishListener"    # Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachedFragment;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .line 67
    return-void
.end method
