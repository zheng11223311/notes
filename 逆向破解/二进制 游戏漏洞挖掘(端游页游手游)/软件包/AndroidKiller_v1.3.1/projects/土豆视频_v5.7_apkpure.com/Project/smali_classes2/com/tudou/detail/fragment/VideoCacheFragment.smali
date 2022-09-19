.class public Lcom/tudou/detail/fragment/VideoCacheFragment;
.super Landroid/app/Fragment;
.source "VideoCacheFragment.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_CURRENT_VID:Ljava/lang/String; = "bundle.current.vid"

.field public static final BUNDLE_VIDEODETAIL:Ljava/lang/String; = "bundle.videodetail"

.field public static final MSG_GET_VIDEOLIST_FAIL:I = 0x2

.field public static final MSG_GET_VIDEOLIST_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static final TEXT_FLV:Ljava/lang/String; = "\u6807\u6e05"

.field static final TEXT_HD:Ljava/lang/String; = "\u9ad8\u6e05"

.field static final TEXT_HHD:Ljava/lang/String; = "\u8d85\u6e05"


# instance fields
.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnCacheManager:Landroid/widget/TextView;

.field private mBtnCacheManagerVisible:I

.field private mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

.field private mCurFormat:Ljava/lang/String;

.field private mDiskProgressBar:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

.field private mErrorView:Lcom/youku/widget/HintView;

.field private mFormatFlag:I

.field private mFormatNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatSpinner:Landroid/widget/Spinner;

.field private mFormatSpinnerArrow:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field private mLanSpinner:Landroid/widget/Spinner;

.field private mLanSpinnerArrow:Landroid/view/View;

.field private mLoading:Landroid/view/View;

.field mOnChangeListener:Lcom/tudou/service/download/OnChangeListener;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mPlayListGrid:Landroid/widget/GridView;

.field private mTitleLayout:Landroid/view/View;

.field private mVid:Ljava/lang/String;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;

.field private mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatNames:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManagerVisible:I

    .line 106
    new-instance v0, Lcom/tudou/detail/fragment/VideoCacheFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mHandler:Landroid/os/Handler;

    .line 437
    new-instance v0, Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$9;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mOnChangeListener:Lcom/tudou/service/download/OnChangeListener;

    .line 754
    new-instance v0, Lcom/tudou/detail/fragment/VideoCacheFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$12;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/detail/vo/VideoList;)Lcom/tudou/detail/vo/VideoList;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;
    .param p1, "x1"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/detail/vo/VideoList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;
    .param p1, "x1"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->updateUIForLanguageSpinner(Lcom/tudou/detail/vo/VideoList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mDiskProgressBar:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/fragment/VideoCacheFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/detail/fragment/VideoCacheFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/youku/vo/NewVideoDetail;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;
    .param p1, "x1"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getPlaylist(Lcom/youku/vo/NewVideoDetail;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/fragment/CacheParams;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/detail/fragment/VideoCacheFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/detail/fragment/VideoCacheFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCacheFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoList;->getLanguages()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoList;->getLanguages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 519
    .local v2, "lanSize":I
    if-lez v2, :cond_1

    .line 520
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoList;->getLanguages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/Video$Language;

    .line 521
    .local v1, "info":Lcom/tudou/detail/vo/Video$Language;
    iget-object v3, v1, Lcom/tudou/detail/vo/Video$Language;->mLang:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, v1, Lcom/tudou/detail/vo/Video$Language;->mLangCode:Ljava/lang/String;

    .line 527
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tudou/detail/vo/Video$Language;
    .end local v2    # "lanSize":I
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getPlaylist(Lcom/youku/vo/NewVideoDetail;)Z
    .locals 13
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v12, 0x1

    .line 683
    const/4 v9, 0x0

    invoke-virtual {p0, v12, v9}, Lcom/tudou/detail/fragment/VideoCacheFragment;->showLoading(ZZ)V

    .line 684
    const/4 v2, 0x0

    .line 685
    .local v2, "id":Ljava/lang/String;
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v6

    .line 686
    .local v6, "type":Lcom/tudou/android/Youku$VideoType;
    sget-object v9, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v9, v6, :cond_2

    .line 687
    iget-object v9, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v9, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 691
    :cond_0
    :goto_0
    sget-object v9, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPlaylist id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v4, 0x0

    .line 693
    .local v4, "success":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 694
    const-class v9, Lcom/youku/network/IHttpRequest;

    invoke-static {v9, v12}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 695
    .local v5, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v7, 0x0

    .line 696
    .local v7, "url":Ljava/lang/String;
    sget-object v9, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v9, v6, :cond_3

    .line 697
    iget-object v9, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v9, v9, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    invoke-static {v2, v12, v9}, Lcom/youku/http/TudouURLContainer;->getVideoListURLV4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 702
    :cond_1
    :goto_1
    :try_start_0
    new-instance v1, Lcom/youku/network/HttpIntent;

    const/4 v9, 0x1

    invoke-direct {v1, v7, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 703
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v9, Lcom/tudou/detail/fragment/VideoCacheFragment$11;

    invoke-direct {v9, p0, v6}, Lcom/tudou/detail/fragment/VideoCacheFragment$11;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/android/Youku$VideoType;)V

    invoke-interface {v5, v1, v9}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v1    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v7    # "url":Ljava/lang/String;
    :goto_2
    return v4

    .line 688
    .end local v4    # "success":Z
    :cond_2
    sget-object v9, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v9, v6, :cond_0

    .line 689
    iget-object v9, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v9, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    goto :goto_0

    .line 698
    .restart local v4    # "success":Z
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v9, v6, :cond_1

    .line 699
    invoke-static {v2}, Lcom/youku/http/TudouURLContainer;->getVideoListUGCURLV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v10, "loadAndBindPlaylist"

    invoke-static {v9, v10, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 731
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v7    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/tudou/detail/vo/VideoList;->createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v8

    .line 732
    .local v8, "videoList":Lcom/tudou/detail/vo/VideoList;
    iget-object v9, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v9, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 733
    .local v3, "msg":Landroid/os/Message;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v9

    if-lez v9, :cond_5

    .line 734
    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    :goto_3
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 736
    :cond_5
    const/4 v9, 0x2

    iput v9, v3, Landroid/os/Message;->what:I

    goto :goto_3
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    .line 553
    const-string v0, "bundle.videodetail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 554
    const-string v0, "bundle.current.vid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVid:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->format_flag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    .line 558
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    goto :goto_0

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->format_flag:I

    goto :goto_1
.end method

.method private initFormat()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 603
    new-instance v2, Lcom/tudou/detail/fragment/CacheParams;

    invoke-direct {v2}, Lcom/tudou/detail/fragment/CacheParams;-><init>()V

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v1, "sFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "resolution_save"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "mPersFormat":Ljava/lang/String;
    sget-object v2, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFormat mPersFormat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFormatFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 608
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v6, :cond_1

    .line 609
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_0
    :goto_0
    return-object v1

    .line 610
    :cond_1
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v7, :cond_3

    .line 611
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    const-string v2, "\u6807\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 615
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "5"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0

    .line 617
    :cond_2
    const-string v2, "\u9ad8\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 618
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "1"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0

    .line 620
    :cond_3
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v8, :cond_4

    .line 621
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v2, "\u8d85\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 623
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "7"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_4
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v5, :cond_5

    .line 625
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v2, "\u6807\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 627
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "5"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0

    .line 628
    :cond_5
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-eqz v2, :cond_0

    .line 630
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v9, :cond_0

    .line 631
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 635
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 636
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "7"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0

    .line 637
    :cond_6
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 638
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "1"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 639
    :cond_7
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "5"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 647
    :cond_8
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v6, :cond_a

    .line 648
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v2, "\u9ad8\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 650
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "1"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    .line 675
    :cond_9
    :goto_1
    sget-boolean v2, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v2, :cond_0

    .line 676
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 677
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "1"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 651
    :cond_a
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v7, :cond_b

    .line 652
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    const-string v2, "\u9ad8\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 655
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "1"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_1

    .line 656
    :cond_b
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v8, :cond_c

    .line 657
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v2, "\u8d85\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 659
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "7"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_1

    .line 660
    :cond_c
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v5, :cond_d

    .line 661
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    const-string v2, "\u6807\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 663
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "5"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_1

    .line 664
    :cond_d
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-eqz v2, :cond_9

    .line 666
    iget v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatFlag:I

    if-ne v2, v9, :cond_9

    .line 667
    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    const-string v2, "\u9ad8\u6e05"

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    .line 671
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    const-string v3, "1"

    iput-object v3, v2, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isNotLimitCache(I)Z
    .locals 2
    .param p0, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 744
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registBroadCastReciver()V
    .locals 3

    .prologue
    .line 763
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 764
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    return-void
.end method

.method private setCurrentFormat(Ljava/lang/String;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 540
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;

    .line 542
    .local v0, "adapter":Lcom/tudou/detail/adapter/SpinnerArrayAdapter;
    invoke-virtual {v0}, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 543
    invoke-virtual {v0, p1}, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;->getCurrentIndex(Ljava/lang/String;)I

    move-result v1

    .line 544
    .local v1, "index":I
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 549
    .end local v0    # "adapter":Lcom/tudou/detail/adapter/SpinnerArrayAdapter;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method private unRegistBroadCastReceiver()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 773
    :cond_0
    return-void
.end method

.method private updateUIForLanguageSpinner(Lcom/tudou/detail/vo/VideoList;)V
    .locals 8
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 498
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoList;->getLanguages()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 499
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoList;->getLanguages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 500
    .local v3, "lanSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v4, "tLans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 502
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoList;->getLanguages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video$Language;

    .line 503
    .local v2, "info":Lcom/tudou/detail/vo/Video$Language;
    iget-object v5, v2, Lcom/tudou/detail/vo/Video$Language;->mLang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    .end local v2    # "info":Lcom/tudou/detail/vo/Video$Language;
    :cond_0
    new-instance v0, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0300e4

    invoke-direct {v0, v5, v6, v4}, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 506
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 507
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 508
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinnerArrow:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 514
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lanSize":I
    .end local v4    # "tLans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 510
    .restart local v3    # "lanSize":I
    .restart local v4    # "tLans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 511
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinnerArrow:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateUIFormatSpinner(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 531
    .local p1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0300e4

    invoke-direct {v0, v1, v2, p1}, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 532
    .local v0, "adapter":Lcom/tudou/detail/adapter/SpinnerArrayAdapter;
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 533
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCurFormat:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setCurrentFormat(Ljava/lang/String;)V

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 423
    sget-object v1, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->initData(Landroid/os/Bundle;)V

    .line 425
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->initFormat()Ljava/util/ArrayList;

    move-result-object v0

    .line 426
    .local v0, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->updateUIFormatSpinner(Ljava/util/ArrayList;)V

    .line 427
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getPlaylist(Lcom/youku/vo/NewVideoDetail;)Z

    .line 428
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 281
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 285
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->registBroadCastReciver()V

    .line 288
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 405
    sget-object v2, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-object v0

    .line 409
    :cond_1
    if-ne p3, v6, :cond_0

    .line 410
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 411
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 412
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 413
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 414
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 411
    goto :goto_1

    .line 412
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    sget-object v1, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 591
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 593
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->unRegistBroadCastReceiver()V

    .line 594
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 585
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 587
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 598
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 600
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 574
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 485
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$10;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$10;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->syncAllDownloadState()V

    .line 495
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 432
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 434
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mOnChangeListener:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->addOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 435
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 578
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 580
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mOnChangeListener:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->removeOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 581
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 300
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const v0, 0x7f0c0392

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinnerArrow:Landroid/view/View;

    .line 303
    const v0, 0x7f0c0394

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinnerArrow:Landroid/view/View;

    .line 304
    const v0, 0x7f0c0399

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mDiskProgressBar:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    .line 305
    const v0, 0x7f0c039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManager:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0c0391

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    .line 307
    const v0, 0x7f0c0393

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinner:Landroid/widget/Spinner;

    .line 308
    const v0, 0x7f0c0397

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    .line 309
    const v0, 0x7f0c0396

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLoading:Landroid/view/View;

    .line 310
    const v0, 0x7f0c0398

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mErrorView:Lcom/youku/widget/HintView;

    .line 311
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mErrorView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$4;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManager:Landroid/widget/TextView;

    iget v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManagerVisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManager:Landroid/widget/TextView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$5;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$5;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mFormatSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$6;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 358
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLanSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$7;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$7;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 373
    const v0, 0x7f0c0390

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mTitleLayout:Landroid/view/View;

    .line 374
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$8;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$8;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-void
.end method

.method public setBtnCacheManagerText()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, "count":I
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v5, :cond_0

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    .local v0, "begin":J
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v6}, Lcom/tudou/detail/vo/VideoList;->getVideoIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadings(Ljava/util/List;)I

    move-result v2

    .line 393
    sget-object v5, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDownloadings takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms. count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v0    # "begin":J
    :cond_0
    const-string v3, "\u67e5\u770b\u7f13\u5b58"

    .line 396
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 397
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 399
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-static {v10, v10, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 400
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManager:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setBtnCacheVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManager:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManager:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iput p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mBtnCacheManagerVisible:I

    goto :goto_0
.end method

.method public setCurrentVid(Ljava/lang/String;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVid:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/vo/VideoList;->getIndexByVideoId(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "index":I
    sget-object v1, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentVid vid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->setSelection(I)V

    .line 145
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-virtual {v1}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;->notifyDataSetChanged()V

    .line 146
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 149
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 136
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 260
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mErrorView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    if-eqz p2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mErrorView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 269
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mErrorView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startCacheInternal(Lcom/tudou/detail/vo/Video;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "v"    # Lcom/tudou/detail/vo/Video;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v0, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v.miid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   v.mAlbumName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tudou/detail/vo/Video;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/detail/vo/Video;->mTitlePlay:Ljava/lang/String;

    iget-object v3, p1, Lcom/tudou/detail/vo/Video;->mTitleDL:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/detail/vo/Video;->mTItleDLSub:Ljava/lang/String;

    iget-object v5, p1, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadFormat()I

    move-result v6

    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p1, Lcom/tudou/detail/vo/Video;->mVideoCode:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "tudou"

    :goto_2
    iget-boolean v9, p1, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v9, v9, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v9, v9, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    const/16 v10, 0x16

    if-ne v9, v10, :cond_4

    :cond_0
    const-string v9, ""

    :goto_3
    iget-object v10, p1, Lcom/tudou/detail/vo/Video;->mBigImg:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p1, Lcom/tudou/detail/vo/Video;->w_img:Ljava/lang/String;

    :goto_4
    iget-boolean v11, p1, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    new-instance v12, Lcom/tudou/detail/fragment/VideoCacheFragment$3;

    invoke-direct {v12, p0, p1}, Lcom/tudou/detail/fragment/VideoCacheFragment$3;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/detail/vo/Video;)V

    invoke-virtual/range {v0 .. v12}, Lcom/tudou/service/download/DownloadManager;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;)V

    .line 251
    return-void

    .line 219
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_2
    move-object/from16 v7, p3

    goto :goto_1

    :cond_3
    const-string v8, "youku"

    goto :goto_2

    :cond_4
    iget v9, p1, Lcom/tudou/detail/vo/Video;->mAlbumId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    iget-object v10, p1, Lcom/tudou/detail/vo/Video;->mBigImg:Ljava/lang/String;

    goto :goto_4
.end method

.method public startCacheVideo(Lcom/tudou/detail/vo/Video;)V
    .locals 2
    .param p1, "v"    # Lcom/tudou/detail/vo/Video;

    .prologue
    .line 184
    iget-object v0, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "\u89c6\u9891\u4fe1\u606f\u4e0d\u5b8c\u6574,\u65e0\u6cd5\u7f13\u5b58\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget v0, p1, Lcom/tudou/detail/vo/Video;->mLimit:I

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->isNotLimitCache(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/tudou/detail/vo/Video;->mVideoCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const-string v0, "\u8be5\u89c6\u9891\u6682\u65f6\u4e0d\u652f\u6301\u5728\u60a8\u7684\u8bbe\u5907\u4e0a\u7f13\u5b58\u54e6"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    iget-object v0, v0, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mCacheParams:Lcom/tudou/detail/fragment/CacheParams;

    iget-object v1, v1, Lcom/tudou/detail/fragment/CacheParams;->language:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->startCacheInternal(Lcom/tudou/detail/vo/Video;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncAllDownloadState()V
    .locals 7

    .prologue
    .line 470
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    if-eqz v4, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheManagerText()V

    .line 472
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 473
    .local v0, "count":I
    sget-object v4, Lcom/tudou/detail/fragment/VideoCacheFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncAllDownloadState count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 475
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 476
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;

    .line 477
    .local v1, "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    invoke-virtual {v1, v4}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->syncDownloadState(Lcom/tudou/detail/vo/Video;)V

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "count":I
    .end local v1    # "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public updateUI(Lcom/tudou/detail/vo/VideoList;)V
    .locals 2
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string v0, "number"

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 158
    :goto_0
    new-instance v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/VideoList;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    .line 159
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mVideoListAdapter:Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoCacheFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment;->mPlayListGrid:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method
