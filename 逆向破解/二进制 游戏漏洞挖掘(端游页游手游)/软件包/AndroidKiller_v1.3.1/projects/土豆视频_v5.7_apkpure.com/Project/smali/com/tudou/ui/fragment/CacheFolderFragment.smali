.class public Lcom/tudou/ui/fragment/CacheFolderFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CacheFolderFragment.java"


# static fields
.field public static final DELETE_ITEMS_NOTIFI:I = 0x12f

.field protected static final REFRESH_CACHED_FOLDER_LIST:I = 0x1e

.field public static hasDelete:Z

.field private static isdestory:Z


# instance fields
.field private adapter:Lcom/youku/adapter/CacheFloderAdapter;

.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field btnEditListener:Landroid/view/View$OnClickListener;

.field private download:Lcom/tudou/service/download/DownloadManager;

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

.field private downloadingInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field getMoreCacheListener:Landroid/view/View$OnClickListener;

.field goPlayListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public isEdit:Z

.field private mBundle:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private moreCache:Landroid/widget/LinearLayout;

.field private moreCacheRel:Landroid/widget/RelativeLayout;

.field moreDismissListener:Landroid/view/View$OnClickListener;

.field onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

.field private positionList:Lcom/youku/util/DeleteCachingItemList;

.field private scrolledX:I

.field private shadow:Landroid/widget/RelativeLayout;

.field private showId:Ljava/lang/String;

.field private size:I

.field titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

.field v:Lcom/tudou/detail/fragment/VideoCacheFragment;

.field public videodetail:Lcom/youku/vo/NewVideoDetail;

.field private viewHolder:Lcom/youku/vo/CacheViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->hasDelete:Z

    .line 82
    sput-boolean v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isdestory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    .line 87
    invoke-static {}, Lcom/youku/util/DeleteCachingItemList;->getInstance()Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_Map:Ljava/util/HashMap;

    .line 118
    iput v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->size:I

    .line 125
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$1;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$2;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mHandler:Landroid/os/Handler;

    .line 391
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$7;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->getMoreCacheListener:Landroid/view/View$OnClickListener;

    .line 424
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$8;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->btnEditListener:Landroid/view/View$OnClickListener;

    .line 554
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$14;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->goPlayListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 626
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$15;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    .line 688
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$16;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$16;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreDismissListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->goMoreCacheFragment()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->initData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/CacheFolderFragment;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;
    .param p1, "x1"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->pullPushPosition(Lcom/tudou/service/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/CacheFolderFragment;Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;
    .param p1, "x1"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->hasFree(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/vo/CacheViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/CacheFolderFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->scrolledX:I

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/CacheFolderFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->scrolledX:I

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->showId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CacheFolderFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method private back()V
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setEditAble()V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private deleteSelected()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u4eb2\uff0c\u786e\u8ba4\u5220\u9664\u7f13\u5b58\u5b8c\u6210\u8bb0\u5f55\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/fragment/CacheFolderFragment$12;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$12;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/fragment/CacheFolderFragment$11;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$11;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/CacheFolderFragment$10;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$10;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 508
    return-void
.end method

.method private deleteSelectedItems()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->hasDelete:Z

    .line 452
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 453
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$9;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->start()V

    .line 480
    return-void
.end method

.method private goMoreCacheFragment()V
    .locals 5

    .prologue
    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "bundle.videodetail"

    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 318
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->isShow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->showMoreCacheOrNot(I)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 322
    .local v1, "fm":Landroid/app/FragmentManager;
    new-instance v2, Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {v2}, Lcom/tudou/detail/fragment/VideoCacheFragment;-><init>()V

    iput-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    .line 323
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheVisible(I)V

    .line 324
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    new-instance v3, Lcom/tudou/ui/fragment/CacheFolderFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$4;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v2, v3}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 331
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v2, v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setArguments(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c0497

    iget-object v4, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 333
    return-void
.end method

.method private hasFree(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "temp":[Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v2

    .line 671
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 673
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized initData()V
    .locals 5

    .prologue
    .line 523
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->size:I

    .line 524
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tudou/service/download/DownloadManager;->getDownloadedList(Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList:Ljava/util/ArrayList;

    .line 525
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 526
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 527
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 528
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "tempId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->showId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 523
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v2    # "tempId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 534
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 535
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 536
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 548
    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setTitle(Landroid/view/View;)V

    .line 337
    new-instance v0, Lcom/youku/vo/CacheViewHolder;

    invoke-direct {v0, p1}, Lcom/youku/vo/CacheViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    .line 338
    const v0, 0x7f0c0496

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->shadow:Landroid/widget/RelativeLayout;

    .line 339
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->shadow:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v0, 0x7f0c0497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCacheRel:Landroid/widget/RelativeLayout;

    .line 342
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mBundle:Landroid/os/Bundle;

    .line 343
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "showId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->showId:Ljava/lang/String;

    .line 344
    new-instance v0, Lcom/youku/adapter/CacheFloderAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/adapter/CacheFloderAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    .line 345
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->goPlayListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    new-instance v1, Lcom/tudou/ui/fragment/CacheFolderFragment$5;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$5;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 363
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setOnBtnListener(Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;)V

    .line 364
    const v0, 0x7f0c0495

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    .line 365
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->getMoreCacheListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    return-void
.end method

.method private pullPushPosition(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 604
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheFloderAdapter;->setPositionList(Lcom/youku/util/DeleteCachingItemList;)V

    .line 605
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CacheFloderAdapter;->notifyDataSetChanged()V

    .line 608
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/PageBottomDeleteLayout;->allOrNotAll(Lcom/youku/util/DeleteCachingItemList;Ljava/util/ArrayList;)V

    .line 609
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v1}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 511
    new-instance v0, Lcom/tudou/ui/fragment/CacheFolderFragment$13;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$13;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment$13;->start()V

    .line 520
    return-void
.end method

.method private registBroadCastReciver()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    return-void
.end method

.method private setTitle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 372
    new-instance v0, Lcom/youku/vo/CacheFoloderTitleHolder;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/youku/vo/CacheFoloderTitleHolder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    .line 373
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->btnEditListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/ui/fragment/CacheFolderFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$6;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    :cond_1
    return-void
.end method


# virtual methods
.method public excuegetVideoDetail(Ljava/lang/String;)V
    .locals 5
    .param p1, "video"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 246
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 310
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c0497

    iget-object v4, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 255
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->showMoreCacheOrNot(I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->videodetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->goMoreCacheFragment()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 267
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 268
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, v3}, Lcom/youku/http/TudouURLContainer;->getVideoNewDetailURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 269
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/CacheFolderFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$3;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCacheRel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x1

    .line 680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->back()V

    .line 613
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->hasDelete:Z

    .line 192
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->registBroadCastReciver()V

    .line 193
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->download:Lcom/tudou/service/download/DownloadManager;

    .line 194
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
    .line 198
    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->initView(Landroid/view/View;)V

    .line 201
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 226
    iput-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->mHandler:Landroid/os/Handler;

    .line 227
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isdestory:Z

    .line 228
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iput-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->showId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->showId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tudou/service/download/DownloadManager;->putAlbumOpenedInfo(Ljava/lang/String;Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isdestory:Z

    .line 208
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 209
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->scrolledX:I

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->scrolledX:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->refreshData()V

    .line 213
    return-void
.end method

.method public setEditAble()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 434
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    .line 435
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->titleHolder:Lcom/youku/vo/CacheFoloderTitleHolder;

    iget-boolean v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    invoke-virtual {v0, v2}, Lcom/youku/vo/CacheFoloderTitleHolder;->setEdit(Z)V

    .line 436
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 444
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0}, Lcom/youku/widget/PageBottomDeleteLayout;->initial()V

    .line 445
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheFloderAdapter;->setEdit(Z)V

    .line 446
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->positionList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheFloderAdapter;->setPositionList(Lcom/youku/util/DeleteCachingItemList;)V

    .line 447
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->adapter:Lcom/youku/adapter/CacheFloderAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CacheFloderAdapter;->notifyDataSetChanged()V

    .line 448
    return-void

    :cond_0
    move v0, v1

    .line 434
    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->viewHolder:Lcom/youku/vo/CacheViewHolder;

    iget-object v0, v0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCache:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public showMoreCacheOrNot(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->shadow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment;->moreCacheRel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 686
    return-void
.end method
