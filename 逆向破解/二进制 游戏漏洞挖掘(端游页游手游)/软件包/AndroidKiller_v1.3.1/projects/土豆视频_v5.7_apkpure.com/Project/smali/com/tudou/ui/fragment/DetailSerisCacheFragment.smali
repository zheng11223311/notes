.class public Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
.super Lcom/tudou/ui/fragment/DetailBaseFragment;
.source "DetailSerisCacheFragment.java"


# static fields
.field private static final FAIL:I = 0xfa1

.field private static final SUCESS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "DetailSerisCacheFragment"

.field private static final TEXT_FLV:Ljava/lang/String; = "\u6807\u6e05"

.field private static final TEXT_HD:Ljava/lang/String; = "\u9ad8\u6e05"

.field private static final TEXT_HHD:Ljava/lang/String; = "\u8d85\u6e05"

.field public static cachetextselect:Ljava/lang/String; = null

.field public static formatselect:Ljava/lang/String; = null

.field public static langtextselect:Ljava/lang/String; = null

.field private static final sTitle:Ljava/lang/String; = "\u7f13\u5b58"


# instance fields
.field private HoriHeight:I

.field private albumid:Ljava/lang/String;

.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field private btn_cache_img:Landroid/widget/ImageView;

.field private btn_lang_img:Landroid/widget/ImageView;

.field private cache_text:Landroid/widget/TextView;

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field private form:I

.field private formatlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

.field private gridview:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private horiTop:Landroid/view/View;

.field private icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

.field private idownload:Lcom/tudou/service/download/DownloadManager;

.field private isRefresh:Z

.field private isShow:Z

.field private iscompleted:Z

.field private isformatPop:Z

.field public itemCode:Ljava/lang/String;

.field private lang_text:Landroid/widget/TextView;

.field listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

.field private listview:Landroid/widget/AbsListView;

.field private mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

.field private mFormatCheckView:Landroid/widget/ImageView;

.field private mFormatFlag:I

.field private mFormatlistbutton:Landroid/widget/TextView;

.field private mFromatlsitView:Landroid/view/View;

.field private mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

.field private mIsFilterpop:Z

.field private mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mcachepathpoupwindow:Landroid/widget/PopupWindow;

.field private mformatpoupwindow:Landroid/widget/PopupWindow;

.field private mlangpoupwindow:Landroid/widget/PopupWindow;

.field private noresult:Landroid/view/View;

.field public onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private pathKmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paths:[Ljava/lang/String;

.field private playlistCode:Ljava/lang/String;

.field private pz:I

.field private rl_cache:Landroid/view/View;

.field private rl_lang:Landroid/view/View;

.field private rll_format:Landroid/view/View;

.field private serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

.field protected serisview:Landroid/view/View;

.field public videoPosition:I

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->videoPosition:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pz:I

    .line 72
    new-instance v0, Lcom/youku/vo/DetailSeris;

    invoke-direct {v0}, Lcom/youku/vo/DetailSeris;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    .line 87
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mIsFilterpop:Z

    .line 88
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    .line 92
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->idownload:Lcom/tudou/service/download/DownloadManager;

    .line 98
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->iscompleted:Z

    .line 104
    iput v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->form:I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pathmap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pathKmap:Ljava/util/HashMap;

    .line 127
    const/16 v0, 0x20

    iput v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->HoriHeight:I

    .line 132
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isRefresh:Z

    .line 158
    new-instance v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 874
    new-instance v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$12;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1001
    new-instance v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->handler:Landroid/os/Handler;

    .line 1086
    new-instance v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->paths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->paths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getCachePath()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/adapter/DetailSerisCountAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setDown(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/youku/vo/DetailSeris;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->playlistCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->albumid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->noresult:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->idownload:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isNotLimitCache(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatlistbutton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_cache:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_lang:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->lang_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/ui/fragment/CacheFields;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Lcom/youku/vo/DetailSeris;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isAllNolimit(Lcom/youku/vo/DetailSeris;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rll_format:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Lcom/youku/vo/DetailSeris;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->addSerisVideo(Lcom/youku/vo/DetailSeris;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->inflaterData()V

    return-void
.end method

.method static synthetic access$2700(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->saveFormat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->cache_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatCheckView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pathmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->btn_cache_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->btn_lang_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->popUpFormatList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->popUpCacheList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->popUpLangList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    return-object v0
.end method

.method private addSerisVideo(Lcom/youku/vo/DetailSeris;)V
    .locals 3
    .param p1, "seriesList"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 1073
    if-nez p1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v0, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1079
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1080
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-boolean v1, p1, Lcom/youku/vo/DetailSeris;->day_radio:Z

    iput-boolean v1, v0, Lcom/youku/vo/DetailSeris;->day_radio:Z

    .line 1082
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getCacheLastFormat()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1437
    const-string/jumbo v2, "resolution_save"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1439
    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1440
    const/4 v1, 0x5

    .line 1449
    :cond_0
    :goto_0
    return v1

    .line 1441
    :cond_1
    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1443
    const-string/jumbo v2, "\u8d85\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    const/4 v1, 0x7

    goto :goto_0
.end method

.method private getCachePath()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 229
    const-string/jumbo v8, "test3"

    const-string v9, "getCachePath1 paths = "

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "dPath":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v4

    .line 236
    .local v4, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 237
    .local v7, "size":I
    new-array v6, v7, [Ljava/lang/String;

    .line 238
    .local v6, "paths":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 240
    .local v0, "countId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_0

    .line 242
    const/4 v6, 0x0

    .line 267
    .end local v6    # "paths":[Ljava/lang/String;
    :goto_1
    return-object v6

    .line 244
    .restart local v6    # "paths":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v5, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 246
    .local v5, "path":Ljava/lang/String;
    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 247
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v8, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    const-string/jumbo v8, "\u624b\u673a\u5b58\u50a8"

    aput-object v8, v6, v3

    .line 259
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pathmap:Ljava/util/HashMap;

    aget-object v9, v6, v3

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v8, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pathKmap:Ljava/util/HashMap;

    aget-object v9, v6, v3

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_2
    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD\u5361"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u5b58\u50a8"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 254
    :cond_3
    const-string v8, "SD\u5361\u5b58\u50a8"

    aput-object v8, v6, v3

    goto :goto_2

    .line 264
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 265
    .local v2, "download":Lcom/tudou/service/download/DownloadManager;
    iget-object v8, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->pathKmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->cachetextselect:Ljava/lang/String;

    .line 266
    const-string/jumbo v8, "test3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCachePath paths = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    const-string v0, "Cache_Format"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inflaterData()V
    .locals 5

    .prologue
    .line 298
    new-instance v1, Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/tudou/adapter/DetailSerisCountAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Landroid/support/v4/app/Fragment;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    .line 300
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    iget v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->HoriHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/youku/widget/DetailHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 301
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/widget/DetailHorizontalListView;->setrequestDisallowInterceptTouchEvent(Z)V

    .line 302
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    new-instance v2, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$6;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/DetailHorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 414
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    .line 416
    .local v0, "gv":Landroid/widget/GridView;
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 421
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    .line 419
    .local v0, "gv":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private isAllNolimit(Lcom/youku/vo/DetailSeris;)Z
    .locals 1
    .param p1, "serislist"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.method private isNotLimitCache(I)Z
    .locals 2
    .param p1, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 1389
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private popUpCacheList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1281
    iget-boolean v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    if-nez v4, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1284
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1286
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/DetailCachePathAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->paths:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/tudou/adapter/DetailCachePathAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1288
    .local v0, "adapter":Lcom/tudou/adapter/DetailCachePathAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1289
    new-instance v4, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$17;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1307
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_cache:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    .line 1309
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1310
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1312
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->btn_cache_img:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1318
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$18;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$18;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1327
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_cache:Landroid/view/View;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1328
    iput-boolean v8, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    .line 1333
    .end local v0    # "adapter":Lcom/tudou/adapter/DetailCachePathAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1331
    iput-boolean v7, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    goto :goto_0
.end method

.method private popUpFormatList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1227
    iget-boolean v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    if-nez v4, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1230
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1232
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/DetailFormatAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Lcom/tudou/adapter/DetailFormatAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1234
    .local v0, "adapter":Lcom/tudou/adapter/DetailFormatAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1235
    new-instance v4, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$15;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$15;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1252
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFromatlsitView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    .line 1254
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1255
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1257
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatCheckView:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1263
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$16;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$16;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1272
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFromatlsitView:Landroid/view/View;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1273
    iput-boolean v8, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    .line 1278
    .end local v0    # "adapter":Lcom/tudou/adapter/DetailFormatAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :goto_0
    return-void

    .line 1275
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1276
    iput-boolean v7, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    goto :goto_0
.end method

.method private declared-synchronized popUpLangList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1336
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z

    if-nez v4, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1339
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1341
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/DetailCacheLangAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v5}, Lcom/tudou/adapter/DetailCacheLangAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1343
    .local v0, "adapter":Lcom/tudou/adapter/DetailCacheLangAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1344
    new-instance v4, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$19;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1361
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_lang:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    .line 1363
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1364
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1366
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1370
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->btn_lang_img:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1371
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$20;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$20;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1380
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_lang:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1381
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    .end local v0    # "adapter":Lcom/tudou/adapter/DetailCacheLangAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :goto_0
    monitor-exit p0

    return-void

    .line 1383
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1384
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isformatPop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1336
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private saveFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 827
    const-string v0, "Cache_Format"

    invoke-static {v0, p1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method private setDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 809
    if-nez p1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 819
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->setDown()V

    goto :goto_0
.end method

.method private setFormatBtnText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatlistbutton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    sput-object p1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatselect:Ljava/lang/String;

    .line 515
    const-string/jumbo v0, "\u8d85\u6e05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    const-string v1, "7"

    iput-object v1, v0, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string/jumbo v0, "\u9ad8\u6e05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    const-string v1, "1"

    iput-object v1, v0, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_2
    const-string/jumbo v0, "\u6807\u6e05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    const-string v1, "5"

    iput-object v1, v0, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFormatList()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 443
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 445
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v3, :cond_1

    .line 447
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v4, :cond_3

    .line 450
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const-string/jumbo v1, "\u6807\u6e05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const-string/jumbo v1, "\u6807\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    const-string/jumbo v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_3
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v5, :cond_4

    .line 459
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const-string/jumbo v1, "\u8d85\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_4
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v2, :cond_5

    .line 463
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const-string/jumbo v1, "\u6807\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_5
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-eqz v1, :cond_0

    .line 467
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v6, :cond_0

    .line 469
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_6
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v3, :cond_8

    .line 480
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const-string/jumbo v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    .line 506
    :cond_7
    :goto_1
    sget-boolean v1, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rll_format:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    const-string v2, "1"

    iput-object v2, v1, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 482
    :cond_8
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v4, :cond_9

    .line 484
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const-string/jumbo v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1

    .line 487
    :cond_9
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v5, :cond_a

    .line 489
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string/jumbo v1, "\u8d85\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1

    .line 491
    :cond_a
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v2, :cond_b

    .line 493
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-string/jumbo v1, "\u6807\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :cond_b
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-eqz v1, :cond_7

    .line 497
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    if-ne v1, v6, :cond_7

    .line 499
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->formatlist:Ljava/util/ArrayList;

    const-string/jumbo v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    const-string/jumbo v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setHistoryBtnUnable(Lcom/youku/vo/VideoDetail;)V
    .locals 0
    .param p1, "videoDetail"    # Lcom/youku/vo/VideoDetail;

    .prologue
    .line 1196
    return-void
.end method


# virtual methods
.method public OnChangerVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->itemCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v0

    .line 1208
    .local v0, "urlinfo":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->itemCode:Ljava/lang/String;

    .line 1210
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1217
    .end local v0    # "urlinfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1213
    .restart local v0    # "urlinfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->updateUI()V

    goto :goto_0
.end method

.method public excueGetPlaylist(Ljava/lang/String;I)V
    .locals 1
    .param p1, "playlistCode"    # Ljava/lang/String;
    .param p2, "pg"    # I

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->showLoading()V

    .line 1161
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-static {v0}, Lcom/tudou/detail/DetailPlaylistShareData;->setCacheSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V

    .line 1162
    invoke-static {p1}, Lcom/tudou/detail/DetailPlaylistShareData;->getSeriesData(Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method public excueGetRecomment(Ljava/lang/String;I)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "pg"    # I

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->showLoading()V

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "iscompleted":I
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->iscompleted:Z

    if-eqz v1, :cond_0

    .line 1113
    const/4 v0, 0x1

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-static {v1}, Lcom/tudou/detail/DetailSeriesShareData;->setCacheSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V

    .line 1123
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tudou/detail/DetailSeriesShareData;->getSeriesData(Ljava/lang/String;II)V

    .line 1156
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    const-string/jumbo v0, "\u7f13\u5b58"

    return-object v0
.end method

.method public initData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 273
    const-string v0, "num"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->form:I

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string v0, "playlistCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->playlistCode:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->albumid:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->format_flag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 279
    iput v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    if-nez v0, :cond_2

    .line 284
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->iscompleted:Z

    .line 286
    :cond_2
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_3

    .line 287
    iput v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->albumid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isShow:Z

    goto :goto_0

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->format_flag:I

    iput v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatFlag:I

    goto :goto_1

    .line 292
    :cond_5
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isShow:Z

    goto :goto_0
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 835
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    .line 836
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    .line 837
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/DetailHorizontalListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    .line 839
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatlistbutton:Landroid/widget/TextView;

    .line 840
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFromatlsitView:Landroid/view/View;

    .line 841
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFormatCheckView:Landroid/widget/ImageView;

    .line 843
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rll_format:Landroid/view/View;

    .line 844
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->noresult:Landroid/view/View;

    .line 845
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->noresult:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->noresult:Landroid/view/View;

    const v2, 0x7f0c0423

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 847
    .local v0, "img":Landroid/view/View;
    new-instance v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_cache:Landroid/view/View;

    .line 864
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->cache_text:Landroid/widget/TextView;

    .line 865
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->btn_cache_img:Landroid/widget/ImageView;

    .line 867
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_lang:Landroid/view/View;

    .line 868
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->lang_text:Landroid/widget/TextView;

    .line 869
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->btn_lang_img:Landroid/widget/ImageView;

    .line 870
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c0129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->year:Landroid/widget/TextView;

    .line 871
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    const v2, 0x7f0c00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->horiTop:Landroid/view/View;

    .line 872
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/tudou/ui/fragment/DetailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    new-instance v0, Lcom/tudou/ui/fragment/CacheFields;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/CacheFields;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    .line 193
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->setFormatList()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mIsFilterpop:Z

    .line 195
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mFromatlsitView:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$2;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_cache:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$3;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_lang:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$4;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rl_cache:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const-string v0, "DetailSerisCacheFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;->start()V

    .line 226
    return-void
.end method

.method public onChangeUser(Lcom/youku/vo/NewVideoDetail;)V
    .locals 0
    .param p1, "newvideodetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 1224
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1456
    invoke-super {p0, p1}, Lcom/tudou/ui/fragment/DetailBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1457
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    .line 1460
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    .line 144
    const-string v1, "DetailSerisCacheFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->HoriHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->HoriHeight:I

    .line 146
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->initView()V

    .line 147
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->initLoading(Landroid/view/View;)V

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisview:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->onDestroy()V

    .line 186
    return-void
.end method

.method public onGofullScreen()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mlangpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 434
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "Youku"

    const-string v1, "DetailSerisCacheFragment onPause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-super {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->onPause()V

    .line 440
    return-void
.end method

.method public onSelected()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1398
    const-string v6, "DetailSerisCacheFragment"

    const-string v7, "onSelected"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string/jumbo v6, "\u8be6\u60c5\u9875\u7f13\u5b58tab\u9009\u4e2d"

    const-class v7, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u8be6\u60c5\u7f13\u5b58tab"

    invoke-static {v6, v7, v8}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-boolean v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isRefresh:Z

    if-nez v6, :cond_0

    .line 1402
    iput-boolean v9, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isRefresh:Z

    .line 1403
    iget-boolean v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->isShow:Z

    if-eqz v6, :cond_1

    .line 1404
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->albumid:Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->excueGetRecomment(Ljava/lang/String;I)V

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->playlistCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1407
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->playlistCode:Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->excueGetPlaylist(Ljava/lang/String;I)V

    goto :goto_0

    .line 1409
    :cond_2
    new-instance v0, Lcom/youku/vo/DetailSeris;

    invoke-direct {v0}, Lcom/youku/vo/DetailSeris;-><init>()V

    .line 1410
    .local v0, "detailseris":Lcom/youku/vo/DetailSeris;
    new-instance v4, Lcom/youku/vo/SeriesVideo;

    invoke-direct {v4}, Lcom/youku/vo/SeriesVideo;-><init>()V

    .line 1411
    .local v4, "video":Lcom/youku/vo/SeriesVideo;
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 1412
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 1413
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->limit:I

    iput v6, v4, Lcom/youku/vo/SeriesVideo;->limit:I

    .line 1414
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    .line 1416
    :try_start_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->duration:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/youku/vo/SeriesVideo;->duration:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v2, "movieItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SeriesVideo;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v5, Lcom/youku/vo/DetailSeris$YearData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v0}, Lcom/youku/vo/DetailSeris$YearData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 1423
    .local v5, "yearData":Lcom/youku/vo/DetailSeris$YearData;
    new-instance v1, Lcom/youku/vo/DetailSeris$MonthData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/youku/vo/DetailSeris$MonthData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 1424
    .local v1, "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    iget-object v6, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1425
    iget-object v6, v5, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    iget-object v6, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1428
    .local v3, "msg":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1429
    const/16 v6, 0xfa0

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1430
    iget-object v6, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1418
    .end local v1    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .end local v2    # "movieItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SeriesVideo;>;"
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onVideoinfogetFail()V
    .locals 0

    .prologue
    .line 1466
    return-void
.end method

.method public startCache(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "itemcode"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "tudouformat"    # I
    .param p5, "isfromTufou"    # Z
    .param p6, "showid"    # Ljava/lang/String;
    .param p7, "imgurl"    # Ljava/lang/String;
    .param p8, "page"    # I

    .prologue
    .line 528
    :try_start_0
    sget-object v4, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    .line 529
    .local v4, "fromtype":Lcom/tudou/android/Youku$FromType;
    if-eqz p5, :cond_0

    .line 530
    sget-object v4, Lcom/tudou/android/Youku$FromType;->Tudou:Lcom/tudou/android/Youku$FromType;

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFields;->language:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v2, v2, Lcom/tudou/ui/fragment/CacheFields;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 547
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v2, v2, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 549
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v3, v1, Lcom/tudou/ui/fragment/CacheFields;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$7;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$7;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 789
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 790
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 791
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    move/from16 v0, p8

    invoke-virtual {v1, v0, p3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SeriesVideo;

    .line 792
    .local v9, "video":Lcom/youku/vo/SeriesVideo;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 793
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 806
    .end local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    .end local v9    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_1
    :goto_1
    return-void

    .line 608
    .restart local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    :cond_2
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v3, v1, Lcom/tudou/ui/fragment/CacheFields;->language:Ljava/lang/String;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getVideoDownloadFormat()I

    move-result v5

    new-instance v8, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$8;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$8;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto :goto_0

    .line 804
    .end local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 666
    .restart local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v2, v2, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 668
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 726
    const-string v1, "DetailSerisCacheFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCacheFields.format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mCacheFields:Lcom/tudou/ui/fragment/CacheFields;

    iget-object v3, v3, Lcom/tudou/ui/fragment/CacheFields;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :cond_4
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getVideoDownloadFormat()I

    move-result v5

    new-instance v8, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$10;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$10;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto/16 :goto_0

    .line 794
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    move/from16 v0, p8

    invoke-virtual {v1, v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SeriesVideo;

    .line 796
    .restart local v9    # "video":Lcom/youku/vo/SeriesVideo;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 797
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 800
    .end local v9    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_6
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    move/from16 v0, p8

    invoke-virtual {v1, v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SeriesVideo;

    .line 801
    .restart local v9    # "video":Lcom/youku/vo/SeriesVideo;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 802
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 951
    const-string v1, "number"

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    iget-boolean v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->iscompleted:Z

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/DetailSerisCountAdapter;->getdefultItem(Z)I

    move-result v0

    .line 953
    .local v0, "page":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 954
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 955
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 956
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->setCurItemCode(Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->setCurPage(I)V

    .line 958
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 959
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_1

    .line 960
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 961
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->horiTop:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 992
    .end local v0    # "page":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    .line 993
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-boolean v1, v1, Lcom/youku/vo/DetailSeris;->day_radio:Z

    if-eqz v1, :cond_5

    .line 994
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->year:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->tag:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    :goto_1
    return-void

    .line 963
    .restart local v0    # "page":I
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v4}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 964
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/youku/widget/DetailHorizontalListView;->startSrcoolTo(Landroid/os/Handler;I)V

    goto :goto_0

    .line 967
    .end local v0    # "page":I
    :cond_2
    const-string v1, "chinese"

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 968
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 969
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 970
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setCurItemCode(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getdefultPage()I

    move-result v0

    .line 972
    .restart local v0    # "page":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 973
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setCurPage(I)V

    .line 974
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getCurPossion()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 975
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    .line 976
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->rll_format:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 977
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 978
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 979
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->horiTop:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 981
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v4}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 982
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/youku/widget/DetailHorizontalListView;->startSrcoolTo(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 986
    .end local v0    # "page":I
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 987
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listview:Landroid/widget/AbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 988
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    .line 989
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->horiTop:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 997
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
