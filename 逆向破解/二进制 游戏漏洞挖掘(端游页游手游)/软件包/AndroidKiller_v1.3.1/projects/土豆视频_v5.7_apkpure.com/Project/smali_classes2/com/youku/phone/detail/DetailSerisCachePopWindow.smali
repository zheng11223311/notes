.class public Lcom/youku/phone/detail/DetailSerisCachePopWindow;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"


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

.field context:Landroid/content/Context;

.field private detailSeris:Lcom/youku/vo/DetailSeris;

.field dialog:Landroid/app/Dialog;

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

.field fragment:Landroid/support/v4/app/Fragment;

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

.field private mCacheFields:Lcom/youku/phone/detail/CacheFields;

.field private mFormatCheckView:Landroid/widget/ImageView;

.field private mFormatFlag:I

.field private mFormatlistbutton:Landroid/widget/TextView;

.field private mFromatlsitView:Landroid/view/View;

.field private mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

.field private mIsFilterpop:Z

.field protected mLoading:Lcom/youku/widget/Loading;

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

.field pw:Landroid/widget/PopupWindow;

.field private pz:I

.field private rl_cache:Landroid/view/View;

.field private rl_lang:Landroid/view/View;

.field private rll_format:Landroid/view/View;

.field private serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

.field protected serisview:Landroid/view/View;

.field public videoPosition:I

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basefragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "bunlde"    # Landroid/os/Bundle;
    .param p4, "height"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v7, -0x1

    iput v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->videoPosition:I

    .line 221
    const/4 v7, 0x1

    iput v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pz:I

    .line 223
    new-instance v7, Lcom/youku/vo/DetailSeris;

    invoke-direct {v7}, Lcom/youku/vo/DetailSeris;-><init>()V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    .line 231
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    .line 238
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mIsFilterpop:Z

    .line 239
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    .line 243
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->idownload:Lcom/tudou/service/download/DownloadManager;

    .line 249
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->iscompleted:Z

    .line 255
    const/4 v7, 0x0

    iput v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->form:I

    .line 264
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pathmap:Ljava/util/HashMap;

    .line 265
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pathKmap:Ljava/util/HashMap;

    .line 278
    const/16 v7, 0x28

    iput v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->HoriHeight:I

    .line 283
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isRefresh:Z

    .line 308
    new-instance v7, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    invoke-direct {v7, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 961
    new-instance v7, Lcom/youku/phone/detail/DetailSerisCachePopWindow$15;

    invoke-direct {v7, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$15;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1096
    new-instance v7, Lcom/youku/phone/detail/DetailSerisCachePopWindow$16;

    invoke-direct {v7, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$16;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    .line 1181
    new-instance v7, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;

    invoke-direct {v7, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 74
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03026a

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    .line 78
    new-instance v7, Landroid/app/Dialog;

    const v8, 0x7f0e0003

    invoke-direct {v7, p1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dialog:Landroid/app/Dialog;

    .line 79
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 88
    .local v5, "window":Landroid/view/Window;
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 p4, v7, 0x10

    .line 91
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const/high16 v8, 0x7f000000

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    const v7, 0x7f0e0005

    invoke-virtual {v5, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 96
    :goto_0
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v8, 0x7f0c0078

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput p4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v8, 0x7f0c0078

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$1;

    invoke-direct {v8, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$1;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->initView()V

    .line 106
    invoke-virtual {p0, p3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->initData(Landroid/os/Bundle;)V

    .line 107
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->initLoading(Landroid/view/View;)V

    .line 108
    new-instance v7, Lcom/youku/phone/detail/CacheFields;

    invoke-direct {v7}, Lcom/youku/phone/detail/CacheFields;-><init>()V

    iput-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    .line 109
    invoke-direct {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatList()V

    .line 110
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mIsFilterpop:Z

    .line 111
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFromatlsitView:Landroid/view/View;

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$2;

    invoke-direct {v8, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$2;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_cache:Landroid/view/View;

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$3;

    invoke-direct {v8, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$3;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_lang:Landroid/view/View;

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$4;

    invoke-direct {v8, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$4;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_cache:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const-string v7, "DetailSerisCacheFragment"

    const-string v8, "onActivityCreated"

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v7, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;

    invoke-direct {v7, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v7}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$5;->start()V

    .line 142
    iget-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isShow:Z

    if-eqz v7, :cond_1

    .line 143
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->albumid:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->excueGetRecomment(Ljava/lang/String;I)V

    .line 173
    :goto_1
    return-void

    .line 94
    :cond_0
    const v7, 0x7f0e0004

    invoke-virtual {v5, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->playlistCode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 146
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->playlistCode:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->excueGetPlaylist(Ljava/lang/String;I)V

    goto :goto_1

    .line 148
    :cond_2
    new-instance v0, Lcom/youku/vo/DetailSeris;

    invoke-direct {v0}, Lcom/youku/vo/DetailSeris;-><init>()V

    .line 149
    .local v0, "detailseris":Lcom/youku/vo/DetailSeris;
    new-instance v4, Lcom/youku/vo/SeriesVideo;

    invoke-direct {v4}, Lcom/youku/vo/SeriesVideo;-><init>()V

    .line 150
    .local v4, "video":Lcom/youku/vo/SeriesVideo;
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    iput-object v7, v4, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 151
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    iput-object v7, v4, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 152
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v7, v7, Lcom/youku/vo/NewVideoDetail$Detail;->limit:I

    iput v7, v4, Lcom/youku/vo/SeriesVideo;->limit:I

    .line 153
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    iput-object v7, v4, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    .line 154
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail$Detail;->total_vv:Ljava/lang/String;

    iput-object v7, v4, Lcom/youku/vo/SeriesVideo;->playtimes:Ljava/lang/String;

    .line 156
    :try_start_0
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v7, v7, Lcom/youku/vo/NewVideoDetail$Detail;->duration:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v4, Lcom/youku/vo/SeriesVideo;->duration:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, "movieItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SeriesVideo;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v6, Lcom/youku/vo/DetailSeris$YearData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v0}, Lcom/youku/vo/DetailSeris$YearData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 163
    .local v6, "yearData":Lcom/youku/vo/DetailSeris$YearData;
    new-instance v1, Lcom/youku/vo/DetailSeris$MonthData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/youku/vo/DetailSeris$MonthData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 164
    .local v1, "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    iget-object v7, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v7, v6, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v7, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 168
    .local v3, "msg":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    const/16 v7, 0xfa0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 170
    iget-object v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 158
    .end local v1    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .end local v2    # "movieItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SeriesVideo;>;"
    .end local v3    # "msg":Landroid/os/Message;
    .end local v6    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->popUpFormatList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/tudou/adapter/DetailSerisCountAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setDown(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/vo/DetailSeris;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->playlistCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->albumid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->noresult:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->idownload:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/youku/phone/detail/DetailSerisCachePopWindow;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isNotLimitCache(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatlistbutton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->popUpCacheList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_lang:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->lang_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Lcom/youku/phone/detail/CacheFields;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Lcom/youku/vo/DetailSeris;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isAllNolimit(Lcom/youku/vo/DetailSeris;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rll_format:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Lcom/youku/vo/DetailSeris;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->addSerisVideo(Lcom/youku/vo/DetailSeris;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->inflaterData()V

    return-void
.end method

.method static synthetic access$2700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setUGCData()V

    return-void
.end method

.method static synthetic access$2800(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->saveFormat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->popUpLangList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatCheckView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pathmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->btn_cache_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->btn_lang_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->paths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/phone/detail/DetailSerisCachePopWindow;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->paths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getCachePath()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_cache:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->cache_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    return-object v0
.end method

.method private addSerisVideo(Lcom/youku/vo/DetailSeris;)V
    .locals 3
    .param p1, "seriesList"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 1168
    if-nez p1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget-object v0, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1174
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1175
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-boolean v1, p1, Lcom/youku/vo/DetailSeris;->day_radio:Z

    iput-boolean v1, v0, Lcom/youku/vo/DetailSeris;->day_radio:Z

    .line 1177
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private clearstate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 340
    :cond_0
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 334
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SeriesVideo;

    iput-boolean v3, v2, Lcom/youku/vo/SeriesVideo;->checked:Z

    .line 337
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SeriesVideo;

    iput-boolean v3, v2, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCacheLastFormat()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1454
    const-string v2, "Cache_Format"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1456
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1457
    const/4 v1, 0x5

    .line 1466
    :cond_0
    :goto_0
    return v1

    .line 1458
    :cond_1
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1460
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1461
    const/4 v1, 0x7

    goto :goto_0
.end method

.method private getCachePath()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 343
    const-string v8, "test3"

    const-string v9, "getCachePath1 paths = "

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "dPath":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v4

    .line 350
    .local v4, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 351
    .local v7, "size":I
    new-array v6, v7, [Ljava/lang/String;

    .line 352
    .local v6, "paths":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 354
    .local v0, "countId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 355
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v5, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 357
    .local v5, "path":Ljava/lang/String;
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 358
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v8, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 359
    const-string v8, "\u624b\u673a\u5b58\u50a8"

    aput-object v8, v6, v3

    .line 370
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pathmap:Ljava/util/HashMap;

    aget-object v9, v6, v3

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v8, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pathKmap:Ljava/util/HashMap;

    aget-object v9, v6, v3

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD\u5361"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5b58\u50a8"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_2
    const-string v8, "SD\u5361\u5b58\u50a8"

    aput-object v8, v6, v3

    goto :goto_1

    .line 375
    .end local v5    # "path":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 376
    .local v2, "download":Lcom/tudou/service/download/DownloadManager;
    iget-object v8, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->pathKmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->cachetextselect:Ljava/lang/String;

    .line 377
    const-string v8, "test3"

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

    .line 378
    return-object v6
.end method

.method private getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    const-string v0, "Cache_Format"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inflaterData()V
    .locals 6

    .prologue
    .line 409
    new-instance v1, Lcom/tudou/adapter/DetailSerisCountAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tudou/adapter/DetailSerisCountAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/DetailSeris;Landroid/support/v4/app/Fragment;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    .line 411
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    iget v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->HoriHeight:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/widget/DetailHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 413
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/widget/DetailHorizontalListView;->setrequestDisallowInterceptTouchEvent(Z)V

    .line 414
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    new-instance v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$7;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/DetailHorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 432
    iget-boolean v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isShow:Z

    if-eqz v1, :cond_1

    .line 433
    new-instance v1, Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getActivity()Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/adapter/SeriesCacheGridAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    .line 435
    new-instance v1, Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getActivity()Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/adapter/SeriesCacheListAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 457
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    .line 458
    .local v0, "gv":Landroid/widget/GridView;
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->onitemclickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 464
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 439
    new-instance v1, Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getActivity()Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/adapter/SeriesCacheGridAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    .line 441
    new-instance v1, Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getActivity()Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/adapter/SeriesCacheListAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dismissLoading()V

    .line 446
    new-instance v1, Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getActivity()Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/adapter/SeriesCacheGridAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    .line 448
    new-instance v1, Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getActivity()Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/adapter/SeriesCacheListAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/DetailSeris;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    .line 450
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_lang:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->updateUI()V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    .line 461
    .local v0, "gv":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private isAllNolimit(Lcom/youku/vo/DetailSeris;)Z
    .locals 1
    .param p1, "serislist"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 1164
    const/4 v0, 0x0

    return v0
.end method

.method private isNotLimitCache(I)Z
    .locals 2
    .param p1, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 1446
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1449
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

    .line 1336
    iget-boolean v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    if-nez v4, :cond_1

    .line 1337
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1339
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1341
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/DetailCachePathAdapter;

    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->paths:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/tudou/adapter/DetailCachePathAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1343
    .local v0, "adapter":Lcom/tudou/adapter/DetailCachePathAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1344
    new-instance v4, Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$20;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1362
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_cache:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    .line 1364
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1365
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1367
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1371
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->btn_cache_img:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1373
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/youku/phone/detail/DetailSerisCachePopWindow$21;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$21;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1382
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_cache:Landroid/view/View;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1383
    iput-boolean v8, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    .line 1390
    .end local v0    # "adapter":Lcom/tudou/adapter/DetailCachePathAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    .line 1386
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1387
    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

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

    .line 1283
    iget-boolean v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    if-nez v4, :cond_0

    .line 1284
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1286
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1288
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/DetailFormatAdapter;

    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    invoke-direct {v0, v4, p1}, Lcom/tudou/adapter/DetailFormatAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1289
    .local v0, "adapter":Lcom/tudou/adapter/DetailFormatAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1290
    new-instance v4, Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$18;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1307
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFromatlsitView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    .line 1309
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1310
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1312
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatCheckView:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1318
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/youku/phone/detail/DetailSerisCachePopWindow$19;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$19;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1327
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFromatlsitView:Landroid/view/View;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1328
    iput-boolean v8, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    .line 1333
    .end local v0    # "adapter":Lcom/tudou/adapter/DetailFormatAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1331
    iput-boolean v7, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

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
    .line 1393
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z

    if-nez v4, :cond_0

    .line 1394
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1396
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1398
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/DetailCacheLangAdapter;

    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v5, v5, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v5}, Lcom/tudou/adapter/DetailCacheLangAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1400
    .local v0, "adapter":Lcom/tudou/adapter/DetailCacheLangAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1401
    new-instance v4, Lcom/youku/phone/detail/DetailSerisCachePopWindow$22;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$22;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1418
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_lang:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    .line 1420
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1421
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1423
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1427
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->btn_lang_img:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1428
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/youku/phone/detail/DetailSerisCachePopWindow$23;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$23;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1437
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_lang:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1438
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    .end local v0    # "adapter":Lcom/tudou/adapter/DetailCacheLangAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :goto_0
    monitor-exit p0

    return-void

    .line 1440
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1441
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isformatPop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1393
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private saveFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 894
    const-string v0, "Cache_Format"

    invoke-static {v0, p1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method private setDown(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 876
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 881
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 883
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->setDown()V

    goto :goto_0
.end method

.method private setFormatBtnText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatlistbutton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    sput-object p1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatselect:Ljava/lang/String;

    .line 559
    const-string v0, "\u8d85\u6e05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    const-string v1, "7"

    iput-object v1, v0, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const-string v0, "\u9ad8\u6e05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    const-string v1, "1"

    iput-object v1, v0, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    goto :goto_0

    .line 563
    :cond_2
    const-string v0, "\u6807\u6e05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    const-string v1, "5"

    iput-object v1, v0, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

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

    .line 487
    invoke-direct {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 489
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v3, :cond_1

    .line 491
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v4, :cond_3

    .line 494
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v1, "\u6807\u6e05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    const-string v1, "\u6807\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    const-string v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_3
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v5, :cond_4

    .line 503
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const-string v1, "\u8d85\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_4
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v2, :cond_5

    .line 507
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    const-string v1, "\u6807\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_5
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-eqz v1, :cond_0

    .line 511
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v6, :cond_0

    .line 513
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-direct {p0, v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_6
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v3, :cond_8

    .line 524
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const-string v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    .line 550
    :cond_7
    :goto_1
    sget-boolean v1, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rll_format:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    const-string v2, "1"

    iput-object v2, v1, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 526
    :cond_8
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v4, :cond_9

    .line 528
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    const-string v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_9
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v5, :cond_a

    .line 533
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v1, "\u8d85\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1

    .line 535
    :cond_a
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v2, :cond_b

    .line 537
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    const-string v1, "\u6807\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :cond_b
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-eqz v1, :cond_7

    .line 541
    iget v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    if-ne v1, v6, :cond_7

    .line 543
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->formatlist:Ljava/util/ArrayList;

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v1, "\u9ad8\u6e05"

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->setFormatBtnText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setHistoryBtnUnable(Lcom/youku/vo/VideoDetail;)V
    .locals 0
    .param p1, "videoDetail"    # Lcom/youku/vo/VideoDetail;

    .prologue
    .line 1258
    return-void
.end method

.method private setUGCData()V
    .locals 7

    .prologue
    .line 1209
    new-instance v4, Lcom/youku/vo/SeriesVideo;

    invoke-direct {v4}, Lcom/youku/vo/SeriesVideo;-><init>()V

    .line 1210
    .local v4, "video":Lcom/youku/vo/SeriesVideo;
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 1211
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 1213
    :try_start_0
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->duration:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/youku/vo/SeriesVideo;->duration:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_0
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->total_vv:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->playtimes:Ljava/lang/String;

    .line 1217
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    iput-object v6, v4, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    .line 1218
    new-instance v0, Lcom/youku/vo/DetailSeris;

    invoke-direct {v0}, Lcom/youku/vo/DetailSeris;-><init>()V

    .line 1219
    .local v0, "detailseris":Lcom/youku/vo/DetailSeris;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v2, "movieItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SeriesVideo;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    new-instance v5, Lcom/youku/vo/DetailSeris$YearData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v0}, Lcom/youku/vo/DetailSeris$YearData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 1222
    .local v5, "yearData":Lcom/youku/vo/DetailSeris$YearData;
    new-instance v1, Lcom/youku/vo/DetailSeris$MonthData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/youku/vo/DetailSeris$MonthData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 1223
    .local v1, "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    iget-object v6, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1224
    iget-object v6, v5, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    iget-object v6, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1227
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0xfa0

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1228
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1229
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 1230
    iget-object v6, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1232
    :cond_0
    return-void

    .line 1214
    .end local v0    # "detailseris":Lcom/youku/vo/DetailSeris;
    .end local v1    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .end local v2    # "movieItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SeriesVideo;>;"
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public OnChangerVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;

    .prologue
    .line 1478
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->itemCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1479
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 1480
    .local v0, "detail":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v1, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1481
    .local v1, "urlinfo":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz v1, :cond_0

    .line 1482
    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->itemCode:Ljava/lang/String;

    .line 1483
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1490
    .end local v0    # "detail":Lcom/tudou/ui/activity/DetailActivity;
    .end local v1    # "urlinfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 1486
    .restart local v0    # "detail":Lcom/tudou/ui/activity/DetailActivity;
    .restart local v1    # "urlinfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->updateUI()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 204
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissLoading()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 1514
    :cond_0
    return-void
.end method

.method public excueGetPlaylist(Ljava/lang/String;I)V
    .locals 1
    .param p1, "playlistCode"    # Ljava/lang/String;
    .param p2, "pg"    # I

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->showLoading()V

    .line 1252
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-static {v0}, Lcom/tudou/detail/DetailPlaylistShareData;->setCacheSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V

    .line 1253
    invoke-static {p1}, Lcom/tudou/detail/DetailPlaylistShareData;->getSeriesData(Ljava/lang/String;)V

    .line 1254
    return-void
.end method

.method public excueGetRecomment(Ljava/lang/String;I)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "pg"    # I

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->showLoading()V

    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "iscompleted":I
    iget-boolean v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->iscompleted:Z

    if-eqz v1, :cond_0

    .line 1241
    const/4 v0, 0x1

    .line 1244
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->icacheseriesshareData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-static {v1}, Lcom/tudou/detail/DetailSeriesShareData;->setCacheSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V

    .line 1245
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tudou/detail/DetailSeriesShareData;->getSeriesData(Ljava/lang/String;II)V

    .line 1247
    return-void
.end method

.method public getActivity()Lcom/tudou/ui/activity/DetailActivity;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    goto :goto_0
.end method

.method public initData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    if-eqz p1, :cond_0

    .line 383
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail;

    iput-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 384
    const-string v0, "num"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->form:I

    .line 385
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v0, "playlistCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->playlistCode:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->albumid:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->format_flag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 390
    iput v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    if-nez v0, :cond_2

    .line 395
    iput-boolean v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->iscompleted:Z

    .line 397
    :cond_2
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_3

    .line 398
    iput v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->albumid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    iput-boolean v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isShow:Z

    goto :goto_0

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mNewVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->format_flag:I

    iput v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatFlag:I

    goto :goto_1

    .line 403
    :cond_5
    iput-boolean v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->isShow:Z

    goto :goto_0
.end method

.method public initLoading(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1494
    const v0, 0x7f0c012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/Loading;

    iput-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    .line 1495
    return-void
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 902
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    .line 903
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    .line 904
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/DetailHorizontalListView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    .line 906
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatlistbutton:Landroid/widget/TextView;

    .line 907
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFromatlsitView:Landroid/view/View;

    .line 908
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mFormatCheckView:Landroid/widget/ImageView;

    .line 910
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rll_format:Landroid/view/View;

    .line 911
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->noresult:Landroid/view/View;

    .line 912
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->noresult:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0c16

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$12;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$12;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0c15

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/youku/phone/detail/DetailSerisCachePopWindow$13;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$13;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->noresult:Landroid/view/View;

    const v2, 0x7f0c0423

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 934
    .local v0, "img":Landroid/view/View;
    new-instance v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$14;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$14;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_cache:Landroid/view/View;

    .line 951
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->cache_text:Landroid/widget/TextView;

    .line 952
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->btn_cache_img:Landroid/widget/ImageView;

    .line 954
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rl_lang:Landroid/view/View;

    .line 955
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->lang_text:Landroid/widget/TextView;

    .line 956
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->btn_lang_img:Landroid/widget/ImageView;

    .line 957
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c0129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->year:Landroid/widget/TextView;

    .line 958
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisview:Landroid/view/View;

    const v2, 0x7f0c00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->horiTop:Landroid/view/View;

    .line 959
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    const/4 v0, 0x1

    .line 1508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    .line 1475
    :cond_0
    return-void
.end method

.method public onGofullScreen()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mcachepathpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mlangpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 484
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->clearstate()V

    .line 177
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 183
    :cond_1
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mLoading:Lcom/youku/widget/Loading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 1500
    :cond_0
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
    .line 572
    :try_start_0
    sget-object v4, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    .line 573
    .local v4, "fromtype":Lcom/tudou/android/Youku$FromType;
    if-eqz p5, :cond_0

    .line 574
    sget-object v4, Lcom/tudou/android/Youku$FromType;->Tudou:Lcom/tudou/android/Youku$FromType;

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v1, v1, Lcom/youku/phone/detail/CacheFields;->language:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v2, v2, Lcom/youku/phone/detail/CacheFields;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v1, v1, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v2, v2, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 593
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v3, v1, Lcom/youku/phone/detail/CacheFields;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v1, v1, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 853
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 854
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 855
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    move/from16 v0, p8

    invoke-virtual {v1, v0, p3}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SeriesVideo;

    .line 857
    .local v9, "video":Lcom/youku/vo/SeriesVideo;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 858
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 873
    .end local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    .end local v9    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_1
    :goto_1
    return-void

    .line 657
    .restart local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    :cond_2
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v3, v1, Lcom/youku/phone/detail/CacheFields;->language:Ljava/lang/String;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getVideoDownloadFormat()I

    move-result v5

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$9;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$9;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto :goto_0

    .line 871
    .end local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 720
    .restart local v4    # "fromtype":Lcom/tudou/android/Youku$FromType;
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v1, v1, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v2, v2, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 722
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v1, v1, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$10;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$10;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 785
    const-string v1, "DetailSerisCacheFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCacheFields.format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mCacheFields:Lcom/youku/phone/detail/CacheFields;

    iget-object v3, v3, Lcom/youku/phone/detail/CacheFields;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 787
    :cond_4
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getVideoDownloadFormat()I

    move-result v5

    new-instance v8, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;

    move/from16 v0, p8

    invoke-direct {v8, p0, p2, v0, p3}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$11;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;II)V

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto/16 :goto_0

    .line 859
    :cond_5
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    move/from16 v0, p8

    invoke-virtual {v1, v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SeriesVideo;

    .line 862
    .restart local v9    # "video":Lcom/youku/vo/SeriesVideo;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 863
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 866
    .end local v9    # "video":Lcom/youku/vo/SeriesVideo;
    :cond_6
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    move/from16 v0, p8

    invoke-virtual {v1, v0, p3}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getItemByPage(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SeriesVideo;

    .line 868
    .restart local v9    # "video":Lcom/youku/vo/SeriesVideo;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/youku/vo/SeriesVideo;->changeBgToDownloaded:Z

    .line 869
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

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

    .line 1046
    const-string v1, "number"

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1047
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    iget-boolean v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->iscompleted:Z

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/DetailSerisCountAdapter;->getdefultItem(Z)I

    move-result v0

    .line 1048
    .local v0, "page":I
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 1049
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1050
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1051
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->setCurItemCode(Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->setCurPage(I)V

    .line 1053
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridadapter:Lcom/tudou/adapter/SeriesCacheGridAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheGridAdapter;->notifyDataSetChanged()V

    .line 1054
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 1056
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->horiTop:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    .end local v0    # "page":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/DetailSerisCountAdapter;->notifyDataSetChanged()V

    .line 1088
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-boolean v1, v1, Lcom/youku/vo/DetailSeris;->day_radio:Z

    if-eqz v1, :cond_5

    .line 1089
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->year:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->tag:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    :goto_1
    return-void

    .line 1058
    .restart local v0    # "page":I
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v4}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 1059
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    if-eqz v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/youku/widget/DetailHorizontalListView;->startSrcoolTo(Landroid/os/Handler;I)V

    goto :goto_0

    .line 1062
    .end local v0    # "page":I
    :cond_2
    const-string v1, "chinese"

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v2, v2, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1063
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1064
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1065
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setCurItemCode(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getdefultPage()I

    move-result v0

    .line 1067
    .restart local v0    # "page":I
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->serisCountAdapter:Lcom/tudou/adapter/DetailSerisCountAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/DetailSerisCountAdapter;->setItem(I)V

    .line 1068
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/SeriesCacheListAdapter;->setCurPage(I)V

    .line 1069
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/SeriesCacheListAdapter;->getCurPossion()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1070
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    .line 1071
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->rll_format:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1072
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->detailSeris:Lcom/youku/vo/DetailSeris;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 1073
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 1074
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->horiTop:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1076
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v4}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 1077
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    iget-object v2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/youku/widget/DetailHorizontalListView;->startSrcoolTo(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1081
    .end local v0    # "page":I
    :cond_4
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1082
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listview:Landroid/widget/AbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1083
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->listadapter:Lcom/tudou/adapter/SeriesCacheListAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SeriesCacheListAdapter;->notifyDataSetChanged()V

    .line 1084
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->mHorizontalListView:Lcom/youku/widget/DetailHorizontalListView;

    invoke-virtual {v1, v3}, Lcom/youku/widget/DetailHorizontalListView;->setVisibility(I)V

    .line 1085
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->horiTop:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1092
    :cond_5
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
