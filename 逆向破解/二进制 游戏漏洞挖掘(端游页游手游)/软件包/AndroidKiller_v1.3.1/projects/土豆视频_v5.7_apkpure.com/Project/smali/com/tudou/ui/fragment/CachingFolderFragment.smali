.class public Lcom/tudou/ui/fragment/CachingFolderFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CachingFolderFragment.java"


# static fields
.field public static final DELETE_ITEMS_NOTIFI:I = 0x12f

.field protected static final REFRESH_CACHED_FOLDER_LIST:I = 0x1e

.field public static final SET_DOWNLOADING_STATE:I = 0x3

.field public static hasDelete:Z

.field private static isdestory:Z


# instance fields
.field private adapter:Lcom/youku/adapter/CachingListAdapter;

.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field btnEditListener:Landroid/view/View$OnClickListener;

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

.field fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

.field getMoreCacheListener:Landroid/view/View$OnClickListener;

.field public isEdit:Z

.field lister:Lcom/tudou/service/download/OnChangeListener;

.field private lock:Z

.field private mHandler:Landroid/os/Handler;

.field private moreCache:Landroid/widget/LinearLayout;

.field private moreCacheRel:Landroid/widget/RelativeLayout;

.field moreDismissListener:Landroid/view/View$OnClickListener;

.field onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

.field private scrolledX:I

.field private shadow:Landroid/widget/RelativeLayout;

.field private showId:Ljava/lang/String;

.field private size:I

.field titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

.field public videodetail:Lcom/youku/vo/NewVideoDetail;

.field private viewHolder:Lcom/youku/vo/CacheViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->hasDelete:Z

    .line 82
    sput-boolean v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isdestory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    .line 87
    invoke-static {}, Lcom/youku/util/DeleteCachingItemList;->getInstance()Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    .line 109
    iput v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->size:I

    .line 116
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$1;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$2;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->mHandler:Landroid/os/Handler;

    .line 390
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$7;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->getMoreCacheListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$8;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->btnEditListener:Landroid/view/View$OnClickListener;

    .line 552
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$11;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    .line 590
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->lock:Z

    .line 591
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$12;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 687
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$16;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$16;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->lister:Lcom/tudou/service/download/OnChangeListener;

    .line 743
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$17;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreDismissListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->goMoreCacheFragment()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->initData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/CachingFolderFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->scrolledX:I

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/CachingFolderFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->scrolledX:I

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/CachingFolderFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->showId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CachingFolderFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    return-object v0
.end method

.method private back()V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->setEditAble()V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private deleteSelectedItems()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->hasDelete:Z

    .line 457
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 458
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$9;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->start()V

    .line 486
    return-void
.end method

.method private goMoreCacheFragment()V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->showMoreCacheOrNot(I)V

    .line 193
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.videodetail"

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 195
    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;-><init>()V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    .line 196
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheVisible(I)V

    .line 197
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    new-instance v2, Lcom/tudou/ui/fragment/CachingFolderFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$3;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-virtual {v1, v2}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 204
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c0497

    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 206
    return-void
.end method

.method private hasFree(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "temp":[Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v2

    .line 726
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 728
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized initData()V
    .locals 9

    .prologue
    .line 503
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    iput v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->size:I

    .line 504
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    .line 505
    .local v4, "manager":Lcom/tudou/service/download/DownloadManager;
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 506
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    .line 509
    :goto_0
    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadManager;->getDownloadingData()Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 510
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    if-nez v5, :cond_2

    .line 535
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 508
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    .end local v4    # "manager":Lcom/tudou/service/download/DownloadManager;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 513
    .restart local v4    # "manager":Lcom/tudou/service/download/DownloadManager;
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 514
    .local v3, "iter":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 515
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 518
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 519
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 521
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_4
    const/4 v7, 0x0

    sput-boolean v7, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 522
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 523
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 525
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 526
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "tempId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->showId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 528
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->size:I

    goto :goto_3

    .line 533
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v6    # "tempId":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 534
    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->setTitle(Landroid/view/View;)V

    .line 336
    const v1, 0x7f0c0496

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->shadow:Landroid/widget/RelativeLayout;

    .line 337
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->shadow:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v1, 0x7f0c0497

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCacheRel:Landroid/widget/RelativeLayout;

    .line 339
    new-instance v1, Lcom/youku/vo/CacheViewHolder;

    invoke-direct {v1, p1}, Lcom/youku/vo/CacheViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    .line 341
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "showId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->showId:Ljava/lang/String;

    .line 343
    new-instance v1, Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v3, v3, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/youku/adapter/CachingListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    .line 344
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/adapter/CachingListAdapter;->setInFolder(Z)V

    .line 345
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    new-instance v2, Lcom/tudou/ui/fragment/CachingFolderFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$5;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 362
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageBottomDeleteLayout;->setOnBtnListener(Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;)V

    .line 363
    const v1, 0x7f0c0495

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    .line 364
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->getMoreCacheListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/tudou/ui/fragment/CachingFolderFragment$10;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$10;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment$10;->start()V

    .line 499
    return-void
.end method

.method private registBroadCastReciver()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method

.method private setTitle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 371
    new-instance v0, Lcom/youku/vo/CacheFoloderTitleHolder;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/youku/vo/CacheFoloderTitleHolder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    .line 372
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->btnEditListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/ui/fragment/CachingFolderFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$6;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    :cond_1
    return-void
.end method


# virtual methods
.method public excuegetVideoDetail(Ljava/lang/String;)V
    .locals 5
    .param p1, "video"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 267
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 332
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c0497

    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 276
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->showMoreCacheOrNot(I)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->goMoreCacheFragment()V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 287
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 289
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, v3}, Lcom/youku/http/TudouURLContainer;->getVideoNewDetailURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 291
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/CachingFolderFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$4;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCacheRel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->back()V

    .line 539
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->hasDelete:Z

    .line 212
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->registBroadCastReciver()V

    .line 213
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    .line 214
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
    .line 218
    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->initView(Landroid/view/View;)V

    .line 221
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 246
    iput-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->mHandler:Landroid/os/Handler;

    .line 247
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isdestory:Z

    .line 248
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iput-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->lister:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->removeOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->lister:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->addOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 228
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isdestory:Z

    .line 229
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->scrolledX:I

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->scrolledX:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->refreshData()V

    .line 234
    return-void
.end method

.method public setEditAble()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 433
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    .line 434
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-boolean v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    invoke-virtual {v1, v3}, Lcom/youku/vo/CacheFoloderTitleHolder;->setEdit(Z)V

    .line 435
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-eqz v1, :cond_3

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadManager;->stopAllTask()V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v1, v2}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    .end local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v1}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 450
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v1}, Lcom/youku/widget/PageBottomDeleteLayout;->initial()V

    .line 451
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    iget-boolean v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    invoke-virtual {v1, v2}, Lcom/youku/adapter/CachingListAdapter;->setEdit(Z)V

    .line 452
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 453
    return-void

    :cond_1
    move v1, v2

    .line 433
    goto :goto_0

    .line 436
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadManager;->startNewTask()V

    .line 446
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v1, v1, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v1, v4}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setUpdate(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "infos":Lcom/tudou/service/download/DownloadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 712
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 713
    .restart local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 714
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v3, p1}, Lcom/youku/adapter/CachingListAdapter;->setUpdate(Lcom/tudou/service/download/DownloadInfo;)V

    .line 719
    return-void

    .line 711
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 658
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 659
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 660
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFolderFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/CachingFolderFragment$13;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 665
    const-string/jumbo v1, "\u5141\u8bb8"

    new-instance v2, Lcom/tudou/ui/fragment/CachingFolderFragment$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/fragment/CachingFolderFragment$14;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 674
    new-instance v1, Lcom/tudou/ui/fragment/CachingFolderFragment$15;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$15;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 683
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 684
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 685
    return-void
.end method

.method public showMoreCacheOrNot(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 739
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->shadow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment;->moreCacheRel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 741
    return-void
.end method
