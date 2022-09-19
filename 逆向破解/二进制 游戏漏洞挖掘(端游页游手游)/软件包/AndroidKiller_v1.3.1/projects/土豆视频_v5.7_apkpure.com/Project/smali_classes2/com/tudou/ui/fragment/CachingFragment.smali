.class public Lcom/tudou/ui/fragment/CachingFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CachingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;,
        Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;,
        Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;
    }
.end annotation


# static fields
.field private static final GET_DOWNLOADING_DONE:I = 0x6e

.field private static final MAKE_LOADING_DISMISS:I = 0x70

.field private static final SET_DOWNLOADING_STATE:I = 0x6f

.field private static final tag:Ljava/lang/String; = "CachingFragment"


# instance fields
.field public adapter:Lcom/youku/adapter/CachingListAdapter;

.field public allPauseClickListener:Landroid/view/View$OnClickListener;

.field public allStartClickListener:Landroid/view/View$OnClickListener;

.field private deleteList:Lcom/youku/util/DeleteCachingItemList;

.field private download:Lcom/tudou/service/download/DownloadManager;

.field private downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private downloadingInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingList_Map:Ljava/util/HashMap;
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

.field private downloadingList_show:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private infocount:I

.field private isEdit:Z

.field lister:Lcom/tudou/service/download/OnChangeListener;

.field private lock:Z

.field private mHandler:Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

.field private notPauseState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onAllFinish:Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;

.field onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

.field private onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

.field private onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

.field private viewHolder:Lcom/youku/vo/CacheViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    .line 71
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->isEdit:Z

    .line 77
    invoke-static {}, Lcom/youku/util/DeleteCachingItemList;->getInstance()Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->mHandler:Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    .line 287
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$2;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->allStartClickListener:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$4;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->allPauseClickListener:Landroid/view/View$OnClickListener;

    .line 391
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->lock:Z

    .line 392
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$6;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 590
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$16;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$16;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    .line 631
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$17;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->onAllFinish:Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;

    .line 652
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$18;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$18;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->lister:Lcom/tudou/service/download/OnChangeListener;

    .line 738
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFragment;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->mHandler:Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/vo/CacheViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/CachingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->lock:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/tudou/ui/fragment/CachingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/CachingFragment;->lock:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFragment;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/CachingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->infocount:I

    return v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFragment;->allStartThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/CachingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFragment;->isEnoughSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/CachingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CachingFragment;->goInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    return-object v0
.end method

.method private allStartThread()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "\u7f13\u5b58\u9875\u5168\u90e8\u5f00\u59cb\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u9875-\u5168\u90e8\u5f00\u59cb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFragment;->isEnoughSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const v0, 0x7f0d02be

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 329
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 321
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$3;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment$3;->start()V

    goto :goto_0
.end method

.method private deleteSelectedItems()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/CacheActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tudou/ui/activity/CacheActivity;->hasDeleted:Z

    .line 363
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->shownotauto(Landroid/content/Context;)V

    .line 364
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 365
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$5;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment$5;->start()V

    .line 389
    :cond_0
    return-void
.end method

.method private goInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 702
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|dlAlbum"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v2, "\u7f13\u5b58\u9875\u6b63\u5728\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 705
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 706
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 707
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/CachingFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 708
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 716
    :goto_0
    return-void

    .line 711
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 712
    .restart local v1    # "mIntent":Landroid/content/Intent;
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/CachingFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 713
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private declared-synchronized initData()V
    .locals 14

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 190
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v7

    .line 191
    .local v7, "manager":Lcom/tudou/service/download/DownloadManager;
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    if-nez v11, :cond_1

    .line 192
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    .line 195
    :goto_0
    invoke-virtual {v7}, Lcom/tudou/service/download/DownloadManager;->getDownloadingData()Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 196
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    if-nez v8, :cond_2

    .line 248
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 194
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v7    # "manager":Lcom/tudou/service/download/DownloadManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 199
    .restart local v7    # "manager":Lcom/tudou/service/download/DownloadManager;
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_2
    :try_start_2
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 200
    .local v6, "iter":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 201
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/service/download/DownloadInfo;

    .line 204
    .local v4, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 205
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_4
    const/4 v11, 0x0

    sput-boolean v11, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 208
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 209
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->infocount:I

    .line 211
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 214
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/service/download/DownloadInfo;

    .line 215
    .restart local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    iget-object v12, v4, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 216
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    iget-object v12, v4, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_6
    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, "showId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 220
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 221
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 223
    :cond_7
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 224
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 226
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 234
    .end local v0    # "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v9    # "showId":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->changeAllText()V

    .line 236
    iget-object v10, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    .line 237
    .local v10, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 238
    .local v5, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v5}, Lcom/tudou/service/download/DownloadManager;->getFolderInfo(Ljava/util/ArrayList;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 239
    .local v2, "fInfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 240
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 243
    .end local v2    # "fInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v5    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_b
    const/4 v11, 0x0

    sput-boolean v11, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 244
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 246
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    if-eqz v11, :cond_0

    .line 247
    iget-object v11, p0, Lcom/tudou/ui/fragment/CachingFragment;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    const/4 v12, 0x1

    iget v13, p0, Lcom/tudou/ui/fragment/CachingFragment;->infocount:I

    invoke-interface {v11, v12, v13}, Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;->onFinish(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private isEnoughSpace()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 746
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v3}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "savePath":Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v2

    .line 750
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 753
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private show2G3GDialogOpen(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 495
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 496
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string v1, "\u76ee\u524d\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u786e\u5b9a\u7f13\u5b58\u89c6\u9891 ?"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 497
    const-string v1, "\u786e\u5b9a\u7f13\u5b58"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/fragment/CachingFragment$7;-><init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 507
    const-string v1, "\u7a0d\u540e\u518d\u8bf4"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/CachingFragment$8;-><init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v1, Lcom/tudou/ui/fragment/CachingFragment$9;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CachingFragment$9;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 522
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 523
    return-void
.end method

.method private track(I)V
    .locals 3
    .param p1, "isNoti"    # I

    .prologue
    .line 647
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 648
    const-string v0, "\u901a\u77e5\u680f\u6b63\u5728\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-string v1, "\u901a\u77e5\u680f"

    const-string v2, "\u901a\u77e5\u680f-\u6b63\u5728\u7f13\u5b58"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    return-void
.end method


# virtual methods
.method public changeAllText()V
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "allpause":Z
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 722
    const/4 v0, 0x0

    .line 725
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    invoke-interface {v1, v0}, Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;->onChange(Z)V

    .line 727
    :cond_1
    return-void

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 724
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    new-instance v0, Lcom/youku/vo/CacheViewHolder;

    invoke-direct {v0, p1}, Lcom/youku/vo/CacheViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-void
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->isEdit:Z

    return v0
.end method

.method public loadingDismiss()V
    .locals 0

    .prologue
    .line 280
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 281
    return-void
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
    .line 143
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    .line 144
    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/CachingFragment;->initViewHolder(Landroid/view/View;)V

    .line 147
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->lister:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->removeOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->lister:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->addOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->refresh()V

    .line 161
    return-void
.end method

.method public pauseInfo(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->pauseDownload(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$1;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment$1;->start()V

    .line 182
    return-void
.end method

.method public refreshAdapter()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 252
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 254
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->outEditState()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    :goto_0
    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v3, v3, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/adapter/CachingListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    .line 264
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0, v5}, Lcom/youku/adapter/CachingListAdapter;->setInFolder(Z)V

    .line 265
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0, v5}, Lcom/youku/adapter/CachingListAdapter;->setEdit(Z)V

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/youku/adapter/CachingListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setEdit(Z)V
    .locals 2
    .param p1, "isEdit"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0}, Lcom/youku/widget/PageBottomDeleteLayout;->initial()V

    .line 92
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/CachingFragment;->isEdit:Z

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/adapter/CachingListAdapter;->setEdit(Z)V

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->stopAllTask()V

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setOnBtnListener(Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->startNewTask()V

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnDataFinishListener(Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;)V
    .locals 0
    .param p1, "onDataFinishListener"    # Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .line 113
    return-void
.end method

.method public setOnNotPauseInfoCountChangeListener(Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;)V
    .locals 0
    .param p1, "onNotPauseInfoCountChangeListener"    # Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment;->onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    .line 733
    return-void
.end method

.method public setUpdate(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 668
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 669
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 670
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->changeAllText()V

    .line 679
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 680
    .local v1, "infos":Lcom/tudou/service/download/DownloadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 681
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 682
    .restart local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 683
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 688
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 689
    .restart local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 690
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v3, p1}, Lcom/youku/adapter/CachingListAdapter;->setUpdate(Lcom/tudou/service/download/DownloadInfo;)V

    .line 695
    return-void

    .line 674
    .end local v0    # "i":I
    .end local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    .end local v2    # "n":I
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFragment;->notPauseState:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->changeAllText()V

    goto :goto_0

    .line 680
    .restart local v0    # "i":I
    .restart local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    .restart local v2    # "n":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 687
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public show2G3GDialog()V
    .locals 3

    .prologue
    .line 563
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 564
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 565
    const-string v1, "\u5141\u8bb8"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/CachingFragment$13;-><init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 572
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/CachingFragment$14;-><init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 577
    new-instance v1, Lcom/tudou/ui/fragment/CachingFragment$15;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CachingFragment$15;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 586
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 587
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 588
    return-void
.end method

.method public show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 530
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 532
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/CachingFragment$10;-><init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 537
    const-string v1, "\u5141\u8bb8"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/fragment/CachingFragment$11;-><init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 546
    new-instance v1, Lcom/tudou/ui/fragment/CachingFragment$12;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CachingFragment$12;-><init>(Lcom/tudou/ui/fragment/CachingFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 555
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 556
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 557
    return-void
.end method
