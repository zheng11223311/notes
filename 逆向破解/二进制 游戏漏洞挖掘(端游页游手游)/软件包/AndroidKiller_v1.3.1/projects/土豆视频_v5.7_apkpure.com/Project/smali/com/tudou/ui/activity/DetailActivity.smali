.class public Lcom/tudou/ui/activity/DetailActivity;
.super Lcom/youku/player/base/YoukuBasePlayerActivity;
.source "DetailActivity.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    }
.end annotation


# static fields
.field public static final CACHLING_LIST_REQUEST_CODE:I = 0x1fd

.field public static final CLICK_INTERVAL:Ljava/lang/String; = "click.interval"

.field public static final INTENT_EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final INTENT_EXTRA_ALBUM_ID:Ljava/lang/String; = "intent.extra.album.id"

.field public static final INTENT_EXTRA_CHAT_ROOMID:Ljava/lang/String; = "intent.extra.chat.roomid"

.field public static final INTENT_EXTRA_FORCE_BACK_TO_HOME:Ljava/lang/String; = "intent.extra.force.back.to.home"

.field public static final INTENT_EXTRA_FORCE_REPLAY:Ljava/lang/String; = "intent.extra.force.replay"

.field public static final INTENT_EXTRA_FROM_CHAT:Ljava/lang/String; = "intent.extra.from.chat"

.field public static final INTENT_EXTRA_FROM_CHAT_DETAIL:Ljava/lang/String; = "intent.extra.from.chat.detail"

.field public static final INTENT_EXTRA_FROM_DANMU:Ljava/lang/String; = "extra.from.danmu"

.field public static final INTENT_EXTRA_FROM_KEY:Ljava/lang/String; = "from"

.field public static final INTENT_EXTRA_FROM_SHORTCUT:Ljava/lang/String; = "Tudou Luncher"

.field public static final INTENT_EXTRA_ISFROMLOCAL:Ljava/lang/String; = "isFromLocal"

.field public static final INTENT_EXTRA_ISFROMLOCALVIDEO:Ljava/lang/String; = "isfromLocalVideo"

.field public static final INTENT_EXTRA_OPEN_CHAT:Ljava/lang/String; = "intent.extra.open.chat"

.field public static final INTENT_EXTRA_PLAYLISTCODE:Ljava/lang/String; = "playlistCode"

.field public static final INTENT_EXTRA_POINT:Ljava/lang/String; = "point"

.field public static final INTENT_EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final INTENT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_EXTRA_VIDEOBRIEF:Ljava/lang/String; = "vidoebrief"

.field public static final INTENT_EXTRA_VIDEO_ID:Ljava/lang/String; = "video_id"

.field public static final INTENT_EXTRA_VIDEO_STAGE:Ljava/lang/String; = "video_stage"

.field public static final INTENT_EXTRA_action:Ljava/lang/String; = "intent.extra.action"

.field public static final INTENT_EXTRA_videoPath:Ljava/lang/String; = "videoPath"

.field public static final REQUEST_CODE_PODCAST:I = 0x3e9

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_EXCEPTION:Ljava/lang/String;

.field public static mScreenBrightCur:I

.field public static mScreenBrightPre:I

.field public static mScreenModePre:I


# instance fields
.field private NewUri:Ljava/lang/String;

.field public SETTING_ALLOW_PLAY_ON_3G:Z

.field private action:Ljava/lang/String;

.field public detailHandler:Landroid/os/Handler;

.field private fullscreen:Z

.field private id:Ljava/lang/String;

.field private isAllow3GPlay:Z

.field private isAutoPlay:Z

.field public isFromKuWo:Z

.field public isFromLocal:Z

.field private isFromLocalVideo:Z

.field local:Ljava/lang/String;

.field private localVideoUrl:Ljava/lang/String;

.field public mAlbumIdUseToLoadInfo:Ljava/lang/String;

.field private mAtteBackVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mBtnBack:Landroid/widget/ImageView;

.field private mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

.field private mErrorView:Lcom/youku/widget/HintView;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHasVideoList:Z

.field private mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

.field private mIntentVid:Ljava/lang/String;

.field private mIsAttention:Z

.field public mIsBackToHome:Z

.field public mIsChangingQuality:Z

.field public mIsError:Z

.field private mIsFetchingData:Z

.field public mIsFromDanmu:Z

.field public mIsFromShortcut:Z

.field private mIsNeedUpdateNextVideo:Z

.field private mIsNeedUpdateNextVideoWithFeature:Z

.field private mIsNeedUpdateNextVideoWithRecommend:Z

.field private mIsVideoRecordUpdating:Z

.field private mLanguage:Ljava/lang/String;

.field private mLoading:Landroid/view/View;

.field private mModel:Lcom/tudou/detail/DetailModel;

.field private mNeedUpdateAttention:Z

.field private mNetState:I

.field private mNextVideoGetted:Z

.field private mNotifyDialog:Lcom/youku/widget/TudouDialog;

.field private mOnVideoChangeNeedsLoad:Z

.field mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

.field public mPaused:Z

.field mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

.field private mScreenshotMusic:I

.field mShareDialog:Lcom/tudou/ui/activity/BindActivity;

.field public mSliderPointNeedChecked:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

.field public mToBeCheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/SliderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUPlusClingCancle:Landroid/view/View;

.field private mUPlusClingEnter:Landroid/view/View;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

.field private mVideoId:Ljava/lang/String;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;

.field private mVideoRecommend:Lcom/youku/vo/DetailRecomment;

.field private mVideoState:Lcom/tudou/detail/vo/VideoState;

.field private mVideoViewParent:Landroid/widget/LinearLayout;

.field private mVotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

.field mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

.field private mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field multiLanID:Ljava/lang/String;

.field private networkReceiver:Landroid/content/BroadcastReceiver;

.field news:Ljava/lang/String;

.field noRightID:Ljava/lang/String;

.field normalID:Ljava/lang/String;

.field public playlistCode:Ljava/lang/String;

.field public point:I

.field private resultIntent:Landroid/content/Intent;

.field showid:Ljava/lang/String;

.field tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

.field testAPI:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field tv16_9:Ljava/lang/String;

.field tvID:Ljava/lang/String;

.field private type:Lcom/tudou/android/Youku$Type;

.field videoStage:I

.field public vidoebrief:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 169
    const-class v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    .line 1338
    sput v2, Lcom/tudou/ui/activity/DetailActivity;->mScreenModePre:I

    .line 1339
    sput v2, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightPre:I

    .line 1341
    sput v2, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;-><init>()V

    .line 203
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    .line 216
    iput v1, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    .line 217
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    .line 218
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromDanmu:Z

    .line 219
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromShortcut:Z

    .line 220
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsBackToHome:Z

    .line 225
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    .line 226
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    .line 228
    iput v1, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    .line 231
    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->isAutoPlay:Z

    .line 232
    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->isAllow3GPlay:Z

    .line 254
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    .line 259
    iput v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mNetState:I

    .line 273
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mOnVideoChangeNeedsLoad:Z

    .line 754
    const-string v0, "a83f3346a61011e19013"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->noRightID:Ljava/lang/String;

    .line 755
    const-string v0, "XNDg5NDY3MjEy"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->tvID:Ljava/lang/String;

    .line 756
    const-string v0, "XNTIwODgzNzM2"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->normalID:Ljava/lang/String;

    .line 757
    const-string v0, "XMjI3MDE5NDgw"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->multiLanID:Ljava/lang/String;

    .line 758
    const-string v0, "XNTI3OTg3Nzg0"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->news:Ljava/lang/String;

    .line 759
    const-string v0, "XNDg1NTk4NzY4"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->local:Ljava/lang/String;

    .line 760
    const-string v0, "42cbcb6a353e11e296ac"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->showid:Ljava/lang/String;

    .line 761
    const-string v0, "XNTQxNTE1ODIw"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->tv16_9:Ljava/lang/String;

    .line 762
    const-string v0, "XNDk0MzkyNTI0"

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->testAPI:Ljava/lang/String;

    .line 764
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->fullscreen:Z

    .line 1055
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mLanguage:Ljava/lang/String;

    .line 1818
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->detailHandler:Landroid/os/Handler;

    .line 1969
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsVideoRecordUpdating:Z

    .line 2097
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$14;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailActivity$14;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 2339
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsAttention:Z

    .line 2340
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mNeedUpdateAttention:Z

    .line 2341
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mAtteBackVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 2343
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFetchingData:Z

    .line 2345
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mNextVideoGetted:Z

    .line 2346
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithFeature:Z

    .line 2347
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    .line 2348
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideo:Z

    .line 2667
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsChangingQuality:Z

    .line 2999
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSliderPointNeedChecked:Z

    .line 3000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    .line 3632
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mIntentVid:Ljava/lang/String;

    .line 3710
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/DetailModel;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct/range {p0 .. p6}, Lcom/tudou/ui/activity/DetailActivity;->updateVideoRecordInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/tudou/ui/activity/DetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsVideoRecordUpdating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/activity/DetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mNetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/tudou/ui/activity/DetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mNetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/tudou/ui/activity/DetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->isLocalPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/detail/fragment/ImagePreviewFragment;)Lcom/tudou/detail/fragment/ImagePreviewFragment;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/widget/DetailSubPanel;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/widget/DetailContentPanel;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/vo/VideoInfo;)Lcom/youku/player/module/VideoHistoryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Lcom/youku/vo/VideoInfo;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/DetailActivity;->toVideoHistoryInfo(Lcom/youku/vo/VideoInfo;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/activity/DetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/player/module/VideoCacheInfo;)Lcom/tudou/service/download/DownloadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Lcom/youku/player/module/VideoCacheInfo;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/DetailActivity;->toDownloadInfo(Lcom/youku/player/module/VideoCacheInfo;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;)Lcom/youku/player/module/VideoCacheInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/DetailActivity;->downloadtoCacheInfo(Lcom/tudou/service/download/DownloadInfo;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->action:Ljava/lang/String;

    return-object p1
.end method

.method private checkCacheWhenResume()V
    .locals 4

    .prologue
    .line 2017
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2018
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getLimit()I

    move-result v1

    .line 2021
    .local v1, "limit":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2022
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->cannotDownload()V

    .line 2032
    .end local v1    # "limit":I
    :cond_0
    :goto_0
    return-void

    .line 2024
    .restart local v1    # "limit":I
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->enableDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2029
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 897
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->vidoebrief:Ljava/lang/String;

    .line 898
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->action:Ljava/lang/String;

    .line 901
    iput v1, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    .line 902
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    .line 904
    iput v1, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    .line 905
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 906
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    .line 907
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 908
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 909
    return-void
.end method

.method private clearVideoTips()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->clearVideoTips()V

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearVideoTips()V

    .line 1026
    :cond_1
    return-void
.end method

.method private dismissCling(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cling"    # Landroid/view/View;
    .param p2, "clingKey"    # Ljava/lang/String;
    .param p3, "user"    # Z

    .prologue
    const/16 v1, 0x8

    .line 3824
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3825
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3826
    if-eqz p3, :cond_0

    .line 3827
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 3830
    :cond_0
    return-void
.end method

.method private doLayout()V
    .locals 2

    .prologue
    .line 1735
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 1752
    :goto_0
    return-void

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->onSmallscreen()V

    .line 1745
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1746
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoViewParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 1748
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoViewParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method private downloadtoCacheInfo(Lcom/tudou/service/download/DownloadInfo;)Lcom/youku/player/module/VideoCacheInfo;
    .locals 4
    .param p1, "downloadInfo"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 707
    :goto_0
    return-object v0

    .line 674
    :cond_0
    new-instance v0, Lcom/youku/player/module/VideoCacheInfo;

    invoke-direct {v0}, Lcom/youku/player/module/VideoCacheInfo;-><init>()V

    .line 675
    .local v0, "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->title:Ljava/lang/String;

    .line 681
    :goto_1
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->videoid:Ljava/lang/String;

    .line 682
    iget v1, p1, Lcom/tudou/service/download/DownloadInfo;->format:I

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->format:I

    .line 683
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    .line 684
    iget v1, p1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->playTime:I

    .line 685
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getQualityType()I

    move-result v1

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->quality:I

    .line 686
    iget-wide v2, p1, Lcom/tudou/service/download/DownloadInfo;->lastPlayTime:J

    iput-wide v2, v0, Lcom/youku/player/module/VideoCacheInfo;->lastPlayTime:J

    .line 687
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    .line 688
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->showname:Ljava/lang/String;

    .line 689
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->register_num:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->registerNum:Ljava/lang/String;

    .line 690
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->license_num:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->licenseNum:Ljava/lang/String;

    .line 691
    iget v1, p1, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    .line 692
    iget v1, p1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    .line 693
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/youku/player/module/VideoCacheInfo;->progress:D

    .line 694
    iget-wide v2, p1, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    iput-wide v2, v0, Lcom/youku/player/module/VideoCacheInfo;->lastUpdateTime:J

    .line 695
    iget v1, p1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->segCount:I

    .line 696
    iget v1, p1, Lcom/tudou/service/download/DownloadInfo;->segId:I

    iput v1, v0, Lcom/youku/player/module/VideoCacheInfo;->segId:I

    .line 698
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->segUrl:Ljava/lang/String;

    .line 699
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->segsSize:[J

    .line 700
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->segsUrl:[Ljava/lang/String;

    .line 701
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->segsSeconds:[I

    .line 702
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    .line 703
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    .line 704
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->episodemode:Ljava/lang/String;

    .line 705
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->media_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->mMediaType:Ljava/lang/String;

    .line 706
    iget-boolean v1, p1, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    iput-boolean v1, v0, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    goto/16 :goto_0

    .line 678
    :cond_1
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoCacheInfo;->title:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1461
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1462
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    .local v2, "proj":[Ljava/lang/String;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1466
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1467
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1472
    :goto_0
    return-object v3

    .line 1469
    :cond_0
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1471
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1472
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getIntentData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1367
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1368
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1369
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isFromLocal"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    .line 1370
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "video_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1371
    .local v2, "tidString":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    .line 1372
    const-string v3, "intent.extra.action"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->action:Ljava/lang/String;

    .line 1373
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "video_stage"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    .line 1374
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isfromLocalVideo"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    .line 1375
    iget-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    if-eqz v3, :cond_0

    .line 1376
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "videoPath"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    .line 1379
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "point"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    .line 1380
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "playlistCode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 1381
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent.extra.album.id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    .line 1382
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/Youku$Type;

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 1383
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "vidoebrief"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->vidoebrief:Ljava/lang/String;

    .line 1384
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra.from.danmu"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromDanmu:Z

    .line 1385
    iget-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsBackToHome:Z

    if-nez v3, :cond_1

    .line 1386
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent.extra.force.back.to.home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsBackToHome:Z

    .line 1388
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "tFrom":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1390
    const-string v3, "Tudou Luncher"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromShortcut:Z

    .line 1392
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1393
    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1394
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    sget-object v3, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    if-ne v3, v4, :cond_3

    .line 1395
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    .line 1397
    :cond_3
    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    if-ne v3, v4, :cond_4

    .line 1398
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mIntentVid:Ljava/lang/String;

    .line 1402
    :cond_4
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData isFromLocalVideo  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData localVideoUrl  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData title       = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData point  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData isFromLocal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData tidString   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData action      = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData videoStage  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData playlistCode  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData mAlbumIdUseToLoadInfo  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData type  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData videoBrief = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->vidoebrief:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData id  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData mIntentVid  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIntentVid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData mIsFromDanmu  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromDanmu:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentData mIsFromShortcut  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromShortcut:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .end local v1    # "tFrom":Ljava/lang/String;
    .end local v2    # "tidString":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->startFromLocal(Landroid/content/Intent;)Z

    .line 1422
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1423
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_6

    .line 1425
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1427
    :cond_6
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1428
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    .line 1432
    :cond_7
    return-void
.end method

.method private goPlayVideo()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1486
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v10, "goPlayVideo"

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v9, v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1487
    iget-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    if-eqz v9, :cond_5

    .line 1489
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 1493
    .local v2, "download":Lcom/tudou/service/download/DownloadManager;
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v5

    .line 1494
    .local v5, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-static {v5, v14}, Lcom/tudou/service/download/DownloadUtils;->makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V

    .line 1495
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->disableOrientation()V

    .line 1496
    if-nez v5, :cond_2

    .line 1497
    const-string/jumbo v9, "\u672c\u5730\u89c6\u9891\u6570\u636e\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->finish()V

    goto :goto_0

    .line 1501
    :cond_2
    const-string/jumbo v9, "test1"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "info.savePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " point = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v1, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v9, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1504
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v9, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v9, :cond_4

    const-string v9, "/youku.m3u8"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1505
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1506
    iget-boolean v9, v5, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1507
    iget v9, v5, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1508
    iget v9, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 1509
    iget v9, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    mul-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1511
    :cond_3
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 1504
    :cond_4
    const-string v9, "/1.3gp"

    goto :goto_1

    .line 1521
    .end local v1    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v2    # "download":Lcom/tudou/service/download/DownloadManager;
    .end local v5    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_5
    iget-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1523
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1524
    .local v4, "i":Landroid/content/Intent;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1525
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1526
    .local v0, "b":Landroid/os/Bundle;
    const-string v9, "cooperateName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1527
    .local v6, "kuwo":Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v9, "kuwo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1528
    iput-boolean v14, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    .line 1529
    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 1530
    .local v7, "kuwourl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->disableOrientation()V

    .line 1532
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 1533
    .restart local v1    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v9, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1534
    invoke-virtual {v1, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1535
    const-string/jumbo v9, "title"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1536
    iget v9, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1537
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 1543
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v6    # "kuwo":Ljava/lang/String;
    .end local v7    # "kuwourl":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "localvideo---getPoint=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " localVideoUrl = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1547
    const v9, 0x7f0d02ee

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(I)V

    .line 1548
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->finish()V

    goto/16 :goto_0

    .line 1551
    :cond_7
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 1552
    .restart local v1    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v9, Lcom/youku/player/base/PlayType;->LOCAL_USER_FILE:Lcom/youku/player/base/PlayType;

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1553
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1554
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1555
    iget v9, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v1, v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1556
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 1559
    .end local v1    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_8
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1562
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1563
    iget-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->isAllow3GPlay:Z

    if-nez v9, :cond_9

    .line 1564
    iput-boolean v14, p0, Lcom/tudou/ui/activity/DetailActivity;->is3GPause:Z

    .line 1565
    const v9, 0x7f0d00d6

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(I)V

    .line 1566
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v9, :cond_0

    .line 1567
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v9}, Lcom/youku/phone/detail/plugin/PluginSmall;->set3GTips()V

    goto/16 :goto_0

    .line 1572
    :cond_9
    iget-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->isAutoPlay:Z

    if-nez v9, :cond_a

    .line 1573
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->fullscreen:Z

    if-nez v9, :cond_0

    .line 1574
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v9, v12}, Lcom/youku/phone/detail/plugin/PluginSmall;->setAutoPlay(Z)V

    goto/16 :goto_0

    .line 1578
    :cond_a
    const/4 v8, 0x0

    .line 1579
    .local v8, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget v9, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    if-lez v9, :cond_b

    .line 1583
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    .line 1584
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v9, v8}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 1586
    :cond_b
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    sget-object v10, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v9, v10, :cond_e

    .line 1587
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Youku.advertPreStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " advertPauseStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v9, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1591
    :cond_c
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdExt(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertMiddleStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdMid(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdPause(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setVideoStage(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouAlbum(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    .line 1599
    :goto_2
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v9, v8}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 1596
    :cond_d
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    goto :goto_2

    .line 1601
    :cond_e
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1602
    sget-object v9, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1603
    :cond_f
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "goPlayVideo().playVideoAdvext.id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " point = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdExt(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertMiddleStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdMid(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdPause(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    .line 1628
    :goto_3
    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v9, v8}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 1607
    :cond_10
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "goPlayVideo().playVideo.id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " point = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    goto :goto_3

    .line 1613
    :cond_11
    sget-object v9, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-object v9, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1614
    :cond_12
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "goPlayVideo playVideoAdvext point = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdExt(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertMiddleStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdMid(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdPause(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setVideoStage(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouAlbum(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    goto/16 :goto_3

    .line 1622
    :cond_13
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "goPlayVideo playTudouVideo point = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    new-instance v9, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    goto/16 :goto_3
.end method

.method private initCling(II)Lcom/tudou/detail/widget/Cling;
    .locals 3
    .param p1, "clingId"    # I
    .param p2, "delay"    # I

    .prologue
    .line 3810
    invoke-virtual {p0, p1}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3812
    .local v1, "vCling":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 3813
    check-cast v1, Landroid/view/ViewStub;

    .end local v1    # "vCling":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/Cling;

    .line 3817
    .local v0, "cling":Lcom/tudou/detail/widget/Cling;
    :goto_0
    if-eqz v0, :cond_0

    .line 3818
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/Cling;->setVisibility(I)V

    .line 3820
    :cond_0
    return-object v0

    .end local v0    # "cling":Lcom/tudou/detail/widget/Cling;
    .restart local v1    # "vCling":Landroid/view/View;
    :cond_1
    move-object v0, v1

    .line 3815
    check-cast v0, Lcom/tudou/detail/widget/Cling;

    .restart local v0    # "cling":Lcom/tudou/detail/widget/Cling;
    goto :goto_0
.end method

.method private initPlayer()V
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer 1"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v0, Lcom/youku/http/TudouURLContainer;->OFFICIAL_PLAY_HOST:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/util/URLContainer;->TUDOU_DOMAIN:Ljava/lang/String;

    .line 462
    const-string v0, "http://api.mobile.youku.com/openapi-wireless/"

    sput-object v0, Lcom/youku/player/util/URLContainer;->YOUKU_WIRELESS_DOMAIN:Ljava/lang/String;

    .line 463
    const-string v0, "http://api.mobile.youku.com/layout/"

    sput-object v0, Lcom/youku/player/util/URLContainer;->YOUKU_WIRELESS_LAYOUT_DOMAIN:Ljava/lang/String;

    .line 464
    const-string v0, "http://a.play.api.3g.youku.com"

    sput-object v0, Lcom/youku/player/util/URLContainer;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 466
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailActivity$5;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setIUserInfo(Lcom/youku/player/apiservice/IUserInfo;)V

    .line 498
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer 2"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailActivity$6;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setIVideoHistoryInfo(Lcom/youku/player/apiservice/IVideoHistoryInfo;)V

    .line 554
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer 3"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailActivity$7;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setILanguageCode(Lcom/youku/player/apiservice/ILanguageCode;)V

    .line 568
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer 4"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailActivity$8;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setICacheInfo(Lcom/youku/player/apiservice/ICacheInfo;)V

    .line 616
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer 5"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailActivity$9;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    sput-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

    .line 636
    return-void
.end method

.method private isLocalPlay()Z
    .locals 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVerticalFullScreen()Z
    .locals 1

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    const/4 v0, 0x1

    .line 3121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private on3gStartPlay()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2392
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "on3gStartPlay"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2394
    iget-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isAllow3GPlay:Z

    if-nez v1, :cond_1

    .line 2395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->is3GPause:Z

    .line 2396
    const v1, 0x7f0d00d6

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    if-eqz v1, :cond_0

    .line 2407
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    .line 2408
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2409
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeriesItemClick4 albumID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 2411
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0

    .line 2416
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_4

    .line 2417
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2418
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeriesItemClick5 playlistCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 2421
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 2424
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2426
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 2427
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 2432
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_4
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeriesItemClick6 id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 2434
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0
.end method

.method private saveinfo()V
    .locals 20

    .prologue
    .line 2282
    invoke-static {}, Lcom/youku/phone/detail/DetailUtil;->havePortScreen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2283
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 2284
    .local v14, "display":Landroid/view/Display;
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2285
    .local v15, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v14, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2286
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 2287
    .local v17, "frame":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2288
    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 2289
    .local v1, "left":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 2290
    .local v18, "right":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2291
    .local v13, "bottom":I
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 2292
    .local v2, "top":I
    iget v5, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2293
    .local v5, "port_height":I
    iget v6, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2294
    .local v6, "port_width":I
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2295
    .local v19, "sdk_version":I
    const/16 v3, 0xb

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 2297
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/youku/phone/detail/DetailUtil;->writePortScreen(IIIIII)V

    .line 2299
    .end local v1    # "left":I
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v2

    move v11, v6

    move v12, v5

    invoke-static/range {v7 .. v12}, Lcom/youku/phone/detail/DetailUtil;->writeLandScreen(IIIIII)V

    .line 2337
    .end local v2    # "top":I
    .end local v5    # "port_height":I
    .end local v6    # "port_width":I
    .end local v13    # "bottom":I
    .end local v14    # "display":Landroid/view/Display;
    .end local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v17    # "frame":Landroid/graphics/Rect;
    .end local v18    # "right":I
    .end local v19    # "sdk_version":I
    :cond_0
    :goto_0
    return-void

    .line 2301
    .restart local v1    # "left":I
    .restart local v2    # "top":I
    .restart local v5    # "port_height":I
    .restart local v6    # "port_width":I
    .restart local v13    # "bottom":I
    .restart local v14    # "display":Landroid/view/Display;
    .restart local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v17    # "frame":Landroid/graphics/Rect;
    .restart local v18    # "right":I
    .restart local v19    # "sdk_version":I
    :cond_1
    const/16 v3, 0xb

    move/from16 v0, v19

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    .line 2302
    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    sub-int v4, v5, v13

    invoke-static/range {v1 .. v6}, Lcom/youku/phone/detail/DetailUtil;->writePortScreen(IIIIII)V

    .line 2304
    .end local v1    # "left":I
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-int v10, v5, v13

    move v8, v2

    move v11, v6

    move v12, v5

    invoke-static/range {v7 .. v12}, Lcom/youku/phone/detail/DetailUtil;->writeLandScreen(IIIIII)V

    goto :goto_0

    .line 2306
    .restart local v1    # "left":I
    :cond_3
    const/16 v3, 0xc

    move/from16 v0, v19

    if-le v0, v3, :cond_4

    const/16 v3, 0x11

    move/from16 v0, v19

    if-ge v0, v3, :cond_4

    .line 2311
    move/from16 v0, v19

    invoke-static {v0, v14}, Lcom/youku/phone/detail/DetailUtil;->getRealHeight(ILandroid/view/Display;)I

    move-result v5

    .line 2312
    const/4 v1, 0x0

    const/4 v3, 0x0

    sub-int v4, v5, v13

    invoke-static/range {v1 .. v6}, Lcom/youku/phone/detail/DetailUtil;->writePortScreen(IIIIII)V

    .line 2315
    .end local v1    # "left":I
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-int v10, v5, v13

    move v8, v2

    move v11, v6

    move v12, v5

    invoke-static/range {v7 .. v12}, Lcom/youku/phone/detail/DetailUtil;->writeLandScreen(IIIIII)V

    goto :goto_0

    .line 2318
    .restart local v1    # "left":I
    :cond_4
    const/16 v3, 0x10

    move/from16 v0, v19

    if-le v0, v3, :cond_0

    .line 2321
    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2323
    .local v16, "displayMetrics2":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2325
    move-object/from16 v0, v16

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2326
    move-object/from16 v0, v16

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2327
    if-nez v2, :cond_5

    invoke-static {}, Lcom/tudou/android/Youku;->getstatHeight()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2328
    invoke-static {}, Lcom/tudou/android/Youku;->getstatHeight()I

    move-result v2

    .line 2330
    :cond_5
    sub-int v3, v6, v18

    sub-int v4, v5, v13

    invoke-static/range {v1 .. v6}, Lcom/youku/phone/detail/DetailUtil;->writePortScreen(IIIIII)V

    .line 2333
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-int v10, v5, v13

    move v8, v2

    move v11, v6

    move v12, v5

    invoke-static/range {v7 .. v12}, Lcom/youku/phone/detail/DetailUtil;->writeLandScreen(IIIIII)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 371
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 372
    const v0, 0x7f0c011e

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mBtnBack:Landroid/widget/ImageView;

    .line 373
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mBtnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/DetailActivity$1;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v0, 0x7f0c011b

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mLoading:Landroid/view/View;

    .line 380
    const v0, 0x7f0c011c

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mErrorView:Lcom/youku/widget/HintView;

    .line 381
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mErrorView:Lcom/youku/widget/HintView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 382
    const v0, 0x7f0c0108

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoViewParent:Landroid/widget/LinearLayout;

    .line 383
    const v0, 0x7f0c010a

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/DetailContentPanel;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    .line 384
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mErrorView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/DetailActivity$2;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/DetailActivity$3;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->setCallbacks(Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;)V

    .line 413
    const v0, 0x7f0c011d

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/DetailSubPanel;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    .line 414
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/DetailActivity$4;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/DetailSubPanel;->setCallbacks(Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;)V

    .line 451
    return-void
.end method

.method private startFromLocal(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1435
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "startFromLocal"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    if-nez p1, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return v2

    .line 1438
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1439
    .local v1, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startFromLocal uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    if-eqz v1, :cond_0

    .line 1442
    const/4 v0, 0x0

    .line 1443
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tudou/ui/activity/DetailActivity;->getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1445
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1446
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1448
    :try_start_0
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    .line 1450
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    .line 1451
    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->localVideoUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1452
    goto :goto_0

    .line 1453
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private toDownloadInfo(Lcom/youku/player/module/VideoCacheInfo;)Lcom/tudou/service/download/DownloadInfo;
    .locals 4
    .param p1, "videoCacheInfo"    # Lcom/youku/player/module/VideoCacheInfo;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    const/4 v0, 0x0

    .line 736
    :goto_0
    return-object v0

    .line 713
    :cond_0
    new-instance v0, Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {v0}, Lcom/tudou/service/download/DownloadInfo;-><init>()V

    .line 714
    .local v0, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 715
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->videoid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 716
    iget v1, p1, Lcom/youku/player/module/VideoCacheInfo;->format:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->format:I

    .line 717
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    .line 718
    iget v1, p1, Lcom/youku/player/module/VideoCacheInfo;->playTime:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    .line 719
    iget-wide v2, p1, Lcom/youku/player/module/VideoCacheInfo;->lastPlayTime:J

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->lastPlayTime:J

    .line 720
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 721
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->showname:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 722
    iget v1, p1, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    .line 723
    iget v1, p1, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    .line 724
    iget-wide v2, p1, Lcom/youku/player/module/VideoCacheInfo;->progress:D

    invoke-virtual {v0, v2, v3}, Lcom/tudou/service/download/DownloadInfo;->setProgress(D)V

    .line 725
    iget-wide v2, p1, Lcom/youku/player/module/VideoCacheInfo;->lastUpdateTime:J

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    .line 726
    iget v1, p1, Lcom/youku/player/module/VideoCacheInfo;->segCount:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 727
    iget v1, p1, Lcom/youku/player/module/VideoCacheInfo;->segId:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    .line 729
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->segUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->segUrl:Ljava/lang/String;

    .line 730
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->segsSize:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    .line 731
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->segsUrl:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    .line 732
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->segsSeconds:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    .line 733
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 734
    iget-object v1, p1, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 735
    iget-boolean v1, p1, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    iput-boolean v1, v0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    goto :goto_0
.end method

.method private toVideoHistoryInfo(Lcom/youku/vo/VideoInfo;)Lcom/youku/player/module/VideoHistoryInfo;
    .locals 4
    .param p1, "video"    # Lcom/youku/vo/VideoInfo;

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    const/4 v0, 0x0

    .line 751
    :goto_0
    return-object v0

    .line 742
    :cond_0
    new-instance v0, Lcom/youku/player/module/VideoHistoryInfo;

    invoke-direct {v0}, Lcom/youku/player/module/VideoHistoryInfo;-><init>()V

    .line 743
    .local v0, "mVideoHistoryInfo":Lcom/youku/player/module/VideoHistoryInfo;
    iget-object v1, p1, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->duration:I

    .line 744
    iget v1, p1, Lcom/youku/vo/VideoInfo;->isStage:I

    iput v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->isStage:I

    .line 745
    iget-wide v2, p1, Lcom/youku/vo/VideoInfo;->lastPlayTime:J

    iput-wide v2, v0, Lcom/youku/player/module/VideoHistoryInfo;->lastPlayTime:J

    .line 746
    iget v1, p1, Lcom/youku/vo/VideoInfo;->playTime:I

    iput v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    .line 747
    iget-object v1, p1, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->showid:Ljava/lang/String;

    .line 748
    iget v1, p1, Lcom/youku/vo/VideoInfo;->stage:I

    iput v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->stage:I

    .line 749
    iget-object v1, p1, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->title:Ljava/lang/String;

    .line 750
    iget-object v1, p1, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/player/module/VideoHistoryInfo;->vid:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateSub()V
    .locals 6

    .prologue
    .line 2035
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v4, :cond_1

    .line 2038
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2040
    const/4 v1, 0x1

    .line 2041
    .local v1, "type":I
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v4, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 2051
    .local v0, "id":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2053
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    .local v2, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v4

    new-instance v5, Lcom/tudou/ui/activity/DetailActivity$13;

    invoke-direct {v5, p0}, Lcom/tudou/ui/activity/DetailActivity$13;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-interface {v4, p0, v3, v2, v5}, Lcom/tudou/service/attention/IAttention;->isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 2085
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "type":I
    .end local v2    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 2043
    :cond_2
    const/4 v1, 0x2

    .line 2044
    .restart local v1    # "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2045
    .restart local v0    # "id":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2046
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->disableSubbtn()V

    .line 2047
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->disableSub()V

    goto :goto_0
.end method

.method private updateVideoRecordInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "img"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "videotitle"    # Ljava/lang/String;
    .param p5, "shareUrl"    # Ljava/lang/String;
    .param p6, "shareType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1928
    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsVideoRecordUpdating:Z

    .line 1929
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->setVisibility(I)V

    .line 1930
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    invoke-virtual {v0, v2, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->showLoading(ZZ)V

    .line 1931
    iget-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    new-instance v0, Lcom/tudou/ui/activity/DetailActivity$12;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p6

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/activity/DetailActivity$12;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, p4, v0}, Lcom/tudou/detail/DetailModel;->updateVideoRecordAsyn(Ljava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;)V

    .line 1959
    return-void
.end method


# virtual methods
.method public animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 3657
    const v5, 0x7f040058

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 3658
    return-void
.end method

.method public animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start"    # Ljava/lang/Runnable;
    .param p3, "repeat"    # Ljava/lang/Runnable;
    .param p4, "end"    # Ljava/lang/Runnable;
    .param p5, "animId"    # I

    .prologue
    .line 3661
    invoke-static {p0, p5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 3662
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 3663
    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$20;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/tudou/ui/activity/DetailActivity$20;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3686
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3687
    return-void
.end method

.method public animateClickFeedbackScale(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 3645
    const v1, 0x7f04005a

    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 3646
    .local v0, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 3647
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    new-instance v2, Lcom/tudou/ui/activity/DetailActivity$19;

    invoke-direct {v2, p0, p2}, Lcom/tudou/ui/activity/DetailActivity$19;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3653
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3654
    return-void
.end method

.method public checkAndRestore3GPlay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1962
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndRestore3GPlay SETTING_ALLOW_PLAY_ON_3G = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    if-eqz v0, :cond_0

    .line 1964
    const-string v0, "allowONline3G"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1965
    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    .line 1967
    :cond_0
    return-void
.end method

.method public checkSliderItem(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V
    .locals 6
    .param p1, "type"    # Lcom/tudou/detail/vo/SliderInfo$SliderType;

    .prologue
    .line 2964
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSliderItem mSliderPointNeedChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mSliderPointNeedChecked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2997
    :cond_0
    :goto_0
    return-void

    .line 2968
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/SliderInfo;

    .line 2969
    .local v1, "slider":Lcom/tudou/detail/vo/SliderInfo;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne p1, v3, :cond_2

    .line 2970
    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    sget-object v4, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v3, v4, :cond_4

    .line 2971
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    .line 2972
    .local v2, "tVideoPoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 2973
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkSliderItem SliderPoint has Points."

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v3, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->addSliderItem(Lcom/tudou/detail/vo/SliderInfo;)V

    .line 2978
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mSliderPointNeedChecked:Z

    goto :goto_0

    .line 2976
    :cond_3
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkSliderItem SliderPoint has no Points."

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2979
    .end local v2    # "tVideoPoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_4
    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    sget-object v4, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v3, v4, :cond_6

    .line 2980
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 2981
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkSliderItem SliderFeature has Features."

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v3, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->addSliderItem(Lcom/tudou/detail/vo/SliderInfo;)V

    goto :goto_0

    .line 2984
    :cond_5
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkSliderItem SliderFeature has no Features."

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2986
    :cond_6
    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    sget-object v4, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v3, v4, :cond_0

    .line 2987
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2988
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkSliderItem Slidervote has votes."

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v3, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->addSliderItem(Lcom/tudou/detail/vo/SliderInfo;)V

    goto/16 :goto_0

    .line 2991
    :cond_7
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkSliderItem Slidervote has no votes."

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public clearPayPage()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->clearPayPage()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearPayPage()V

    .line 654
    :cond_1
    return-void
.end method

.method public disableOrientation()V
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->disableListener()V

    .line 1478
    :cond_0
    return-void
.end method

.method public disableSub()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 2549
    const v2, 0x7f0c02ff

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/SwitchButton;

    .line 2550
    .local v1, "subscriptionBtn":Lcom/tudou/detail/widget/SwitchButton;
    if-eqz v1, :cond_0

    .line 2551
    invoke-virtual {v1, v3}, Lcom/tudou/detail/widget/SwitchButton;->setAlpha(F)V

    .line 2553
    :cond_0
    const v2, 0x7f0c0300

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2554
    .local v0, "mHintSubscription":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 2555
    const-string v2, "#FF46AEE3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2556
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2558
    :cond_1
    return-void
.end method

.method public dismissImgFragment()V
    .locals 2

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    if-eqz v0, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 3439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .line 3441
    :cond_0
    return-void
.end method

.method public dismissScreenshotCling(Z)V
    .locals 3
    .param p1, "user"    # Z

    .prologue
    .line 3798
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "dismissScreenshotCling"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    const v1, 0x7f0c0b8c

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3800
    .local v0, "Cling":Landroid/view/View;
    const-string v1, "detail.cling.screenshot.show"

    invoke-direct {p0, v0, v1, p1}, Lcom/tudou/ui/activity/DetailActivity;->dismissCling(Landroid/view/View;Ljava/lang/String;Z)V

    .line 3801
    return-void
.end method

.method public dismissUPlusCling(Z)V
    .locals 3
    .param p1, "user"    # Z

    .prologue
    .line 3804
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "dismissUPlusCling"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3805
    const v1, 0x7f0c0bdb

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3806
    .local v0, "Cling":Landroid/view/View;
    const-string v1, "detail.cling.u.plus.show"

    invoke-direct {p0, v0, v1, p1}, Lcom/tudou/ui/activity/DetailActivity;->dismissCling(Landroid/view/View;Ljava/lang/String;Z)V

    .line 3807
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->isExpandAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    const/4 v0, 0x1

    .line 1760
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableOrientation()V
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->enableListener()V

    .line 1483
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v1, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearKuwoDownloadBroadcast()V

    .line 2268
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->resultIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 2269
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 2271
    :cond_1
    sget-boolean v1, Lcom/tudou/android/Youku;->sPageStillExist:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromShortcut:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsBackToHome:Z

    if-eqz v1, :cond_4

    .line 2272
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2273
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2274
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsBackToHome:Z

    .line 2277
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->finish()V

    .line 2278
    invoke-static {p0}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;)V

    .line 2279
    return-void
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPanel()Lcom/tudou/detail/widget/DetailContentPanel;
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    return-object v0
.end method

.method public getCurrentVid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3636
    const-string v0, ""

    .line 3637
    .local v0, "itemCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3638
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    .line 3640
    :cond_0
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVid itemcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    return-object v0
.end method

.method public getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;
    .locals 2

    .prologue
    .line 3625
    const/4 v0, 0x0

    .line 3626
    .local v0, "info":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    .line 3627
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 3629
    :cond_0
    return-object v0
.end method

.method public getDetailLayoutData()V
    .locals 6

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;)V

    .line 1768
    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPlayer()Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method public getModel()Lcom/tudou/detail/DetailModel;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin(Z)Lcom/youku/player/plugin/PluginOverlay;
    .locals 1
    .param p1, "isSmall"    # Z

    .prologue
    .line 2566
    if-eqz p1, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    .line 2569
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    goto :goto_0
.end method

.method public getType()Lcom/tudou/android/Youku$Type;
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    return-object v0
.end method

.method public getVideoBrief()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2245
    const-string v0, ""

    .line 2246
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->vidoebrief:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2247
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v1, :cond_0

    .line 2248
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v1, Lcom/youku/vo/NewVideoDetail$Detail;->short_desc:Ljava/lang/String;

    .line 2253
    :cond_0
    :goto_0
    return-object v0

    .line 2251
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->vidoebrief:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mUri"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 1032
    const/4 v4, 0x0

    .line 1033
    .local v4, "tidString":Ljava/lang/String;
    const-string v5, "itemcode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "result":I
    if-eq v3, v6, :cond_2

    .line 1035
    const-string v5, "&"

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "end":I
    if-eq v1, v6, :cond_1

    .line 1036
    const-string v5, "itemcode"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, "itemcode":Ljava/lang/String;
    :goto_0
    move-object v4, v2

    .line 1052
    .end local v1    # "end":I
    .end local v2    # "itemcode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 1038
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1039
    const-string v5, "itemcode"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "itemcode":Ljava/lang/String;
    goto :goto_0

    .line 1042
    .end local v1    # "end":I
    .end local v2    # "itemcode":Ljava/lang/String;
    :cond_2
    const-string v5, "albumid"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1044
    const-string v5, "&"

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "end":I
    if-eq v1, v6, :cond_3

    .line 1045
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "albumid":Ljava/lang/String;
    :goto_2
    move-object v4, v0

    goto :goto_1

    .line 1047
    .end local v0    # "albumid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1048
    const-string v5, "albumid"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumid":Ljava/lang/String;
    goto :goto_2
.end method

.method public getVideoList()Lcom/tudou/detail/vo/VideoList;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    return-object v0
.end method

.method public getmVideoDetail()Lcom/youku/vo/NewVideoDetail;
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method public goFullScreen()V
    .locals 0

    .prologue
    .line 2195
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->goFullScreen()V

    .line 2196
    return-void
.end method

.method public goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newplaylistCode"    # Ljava/lang/String;
    .param p3, "showid"    # Ljava/lang/String;

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->release()V

    .line 1774
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->clear()V

    .line 1775
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    sget-object v0, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 1781
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 1782
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->detailHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->detailHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1784
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->detailHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/tudou/ui/activity/DetailActivity$10;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1816
    :cond_0
    return-void

    .line 1778
    :cond_1
    sget-object v0, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 1779
    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public goSmall()V
    .locals 0

    .prologue
    .line 2200
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->goSmall()V

    .line 2202
    return-void
.end method

.method public interceptClickEvent(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2574
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptClickEvent v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    return-void
.end method

.method public ismHasVideoList()Z
    .locals 1

    .prologue
    .line 2237
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mHasVideoList:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1833
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult requestCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resultCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-super/range {p0 .. p3}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1835
    invoke-static {}, Lcom/tudou/videoshare/WBShareActivity;->isBlackMobile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1836
    invoke-static {}, Lcom/tudou/videoshare/SinaShare;->getInstance()Lcom/tudou/videoshare/SinaShare;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/tudou/videoshare/SinaShare;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 1838
    :cond_0
    const/16 v3, 0xc9

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 1839
    const/16 v3, 0xca

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v3, :cond_3

    .line 1840
    :cond_1
    const-string/jumbo v3, "test"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EndActivity onActivityResult error resultCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCompleteGoSmall()V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->onPlayEnd()V

    .line 1925
    :cond_2
    :goto_0
    return-void

    .line 1845
    :cond_3
    const-string/jumbo v3, "video_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1846
    const-string/jumbo v3, "replay"

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 1847
    .local v19, "replay":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1848
    .local v18, "playType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOnPause(Z)V

    .line 1849
    if-eqz v19, :cond_6

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onPrepared()V

    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 1854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v3, v3, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v3, :cond_4

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Lcom/youku/player/danmaku/IDanmakuManager;->seekToDanmaku(I)V

    .line 1859
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->onRePlay()V

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v3, :cond_5

    .line 1861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->showLoadingBychangeVideo()V

    .line 1877
    :cond_5
    :goto_1
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/service/chat/ChatManager;->fullscreenDismissChatIcon()V

    goto :goto_0

    .line 1866
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->clear()V

    .line 1867
    const-string/jumbo v3, "video_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->clear()V

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onPrepared()V

    .line 1870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v10, "net"

    iput-object v10, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 1871
    const-string/jumbo v3, "video_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v3, :cond_5

    .line 1873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->showLoadingBychangeVideo()V

    goto :goto_1

    .line 1880
    .end local v18    # "playType":Ljava/lang/String;
    .end local v19    # "replay":Z
    :cond_7
    const/16 v3, 0x3e9

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 1881
    const/16 v3, 0x2710

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 1882
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->updateSub()V

    goto/16 :goto_0

    .line 1885
    :cond_8
    const-string/jumbo v3, "video_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    :cond_9
    const/16 v3, 0x7d0

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 1889
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult LoginActivity.LOGIN_REQUEST isVip = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "---"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v11

    iget-boolean v11, v11, Lcom/youku/vo/UserBean;->isVip:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    if-eqz p3, :cond_d

    const-string v3, "detail.go.loginactivity.from.screenshot"

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 1891
    .local v20, "tFromScreenshot":Z
    :goto_2
    if-eqz p3, :cond_e

    const-string v3, "detail.go.loginactivity.from.videorecord"

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 1892
    .local v21, "tFromVideoRecord":Z
    :goto_3
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult LoginActivity.LOGIN_REQUEST tFromScreenshot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult LoginActivity.LOGIN_REQUEST tFromVideoRecord = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    if-eqz v20, :cond_f

    .line 1895
    const-string v3, "detail.screenshot.imgpath"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1896
    .local v22, "tImgPath":Ljava/lang/String;
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult LoginActivity.LOGIN_REQUEST tImgPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_a

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1900
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->onBtnCommentClicked(Ljava/lang/String;)V

    .line 1919
    .end local v22    # "tImgPath":Ljava/lang/String;
    :cond_b
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/ui/activity/DetailActivity;->replayWhenStateChange(Z)V

    .line 1921
    .end local v20    # "tFromScreenshot":Z
    .end local v21    # "tFromVideoRecord":Z
    :cond_c
    const/16 v3, 0x4e22

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 1922
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult VipBuyFragment.REQUESTCODE  isVip = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "---"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v11

    iget-boolean v11, v11, Lcom/youku/vo/UserBean;->isVip:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/ui/activity/DetailActivity;->replayWhenStateChange(Z)V

    goto/16 :goto_0

    .line 1890
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1891
    .restart local v20    # "tFromScreenshot":Z
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1901
    .restart local v21    # "tFromVideoRecord":Z
    :cond_f
    if-eqz v21, :cond_b

    .line 1902
    const-string v3, "detail.videorecord.share.type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1903
    .local v9, "tShareType":Ljava/lang/String;
    const-string v3, "detail.videorecord.share.url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1904
    .local v8, "tShareUrl":Ljava/lang/String;
    const-string v3, "detail.videorecord.share.videoid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1905
    .local v4, "videoId":Ljava/lang/String;
    const-string v3, "detail.videorecord.share.video.title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1906
    .local v6, "title":Ljava/lang/String;
    const-string v3, "detail.videorecord.share.video.img"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1907
    .local v5, "img":Ljava/lang/String;
    const-string v3, "detail.videorecord.share.video.title.for.url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1908
    .local v7, "videotitle":Ljava/lang/String;
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onActivityResult LoginActivity.LOGIN_REQUEST tShareType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tShareUrl = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " videoId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 1909
    invoke-direct/range {v3 .. v9}, Lcom/tudou/ui/activity/DetailActivity;->updateVideoRecordInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mBtnRetry:Landroid/view/View;

    new-instance v10, Lcom/tudou/ui/activity/DetailActivity$11;

    move-object/from16 v11, p0

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/tudou/ui/activity/DetailActivity$11;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 862
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onAttachedToWindow()V

    .line 863
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public onAttentionCallBack(Lcom/youku/vo/NewVideoDetail;Z)V
    .locals 5
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "atte"    # Z

    .prologue
    .line 2354
    const-string/jumbo v2, "yueliang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttentionCallBack atte = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    iput-boolean p2, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsAttention:Z

    .line 2356
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_4

    .line 2357
    const/4 v0, 0x0

    .line 2358
    .local v0, "match":Z
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 2359
    .local v1, "type":Lcom/tudou/android/Youku$VideoType;
    if-eqz v1, :cond_0

    .line 2360
    sget-object v2, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v1, v2, :cond_1

    .line 2361
    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2362
    const/4 v0, 0x1

    .line 2376
    :cond_0
    :goto_0
    const-string/jumbo v2, "yueliang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttentionCallBack match = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    if-eqz v0, :cond_4

    .line 2378
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2, p2}, Lcom/youku/player/module/VideoUrlInfo;->setAttention(Z)V

    .line 2379
    if-eqz p2, :cond_3

    .line 2380
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginManager;->onSubscribe()V

    .line 2389
    .end local v0    # "match":Z
    .end local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :goto_1
    return-void

    .line 2365
    .restart local v0    # "match":Z
    .restart local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_1
    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2366
    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2367
    const/4 v0, 0x1

    goto :goto_0

    .line 2370
    :cond_2
    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2371
    const/4 v0, 0x1

    goto :goto_0

    .line 2382
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginManager;->onUnSubscribe()V

    goto :goto_1

    .line 2387
    .end local v0    # "match":Z
    .end local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mNeedUpdateAttention:Z

    .line 2388
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mAtteBackVideoDetail:Lcom/youku/vo/NewVideoDetail;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 828
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onBackPressed()V

    .line 829
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->showFloatIcon()V

    .line 830
    return-void
.end method

.method public onBatteryChanged(III)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "scale"    # I
    .param p3, "status"    # I

    .prologue
    .line 2782
    mul-int/lit8 v1, p1, 0x64

    div-int v0, v1, p2

    .line 2783
    .local v0, "curPower":I
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v1, :cond_0

    .line 2784
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v1, v0, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setbattery(II)V

    .line 2786
    :cond_0
    return-void
.end method

.method public onBindComments(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
    .locals 3
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "news"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p3, "hots"    # Lcom/tudou/detail/vo/CommentsInfo;

    .prologue
    .line 3202
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindComments news = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddCommentBar(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 3204
    return-void
.end method

.method public onBindEggs(Lcom/tudou/detail/vo/EasterEggs;)V
    .locals 2
    .param p1, "eggs"    # Lcom/tudou/detail/vo/EasterEggs;

    .prologue
    .line 3255
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBindEggs"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddEasterEggs(Lcom/tudou/detail/vo/EasterEggs;)V

    .line 3258
    return-void
.end method

.method public onBindGoodsInfo(ZLcom/tudou/detail/vo/GoodsInfo;)V
    .locals 3
    .param p1, "skipGoods"    # Z
    .param p2, "info"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 3188
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindGoodsInfo skipGoods = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    if-eqz p1, :cond_1

    .line 3190
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 3191
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->removeGoodsBar()V

    .line 3198
    :cond_0
    :goto_0
    return-void

    .line 3193
    :cond_1
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/tudou/detail/vo/GoodsInfo;->error:I

    if-nez v0, :cond_0

    .line 3194
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddGoodsBar(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 3195
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    goto :goto_0
.end method

.method public onBindHD(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2804
    .local p3, "top":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeTop;>;"
    .local p4, "bottom":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom;>;"
    .local p5, "votes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    .local p6, "annos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBindHD"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    iput-object p5, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    .line 2807
    if-eqz p1, :cond_0

    .line 2808
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->checkSliderItem(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V

    .line 2811
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->getCurrentState()Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    move-result-object v0

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->VOTE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v0, v1, :cond_1

    .line 2812
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment()V

    .line 2816
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2817
    return-void
.end method

.method public onBindHtml5Bar(ILjava/lang/String;Lcom/tudou/detail/vo/Interactive$Html5;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "html5"    # Lcom/tudou/detail/vo/Interactive$Html5;

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p1, p3}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddHtml5(ILcom/tudou/detail/vo/Interactive$Html5;)V

    .line 2961
    return-void
.end method

.method public onBindRecommend(Lcom/youku/vo/DetailRecomment;)V
    .locals 10
    .param p1, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    const/4 v9, 0x0

    .line 3225
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindRecommend mIsNeedUpdateNextVideoWithRecommend = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    .line 3227
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    iget-object v7, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v0, v7, p1}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddRecommendBar(Lcom/youku/vo/NewVideoDetail;Lcom/youku/vo/DetailRecomment;)V

    .line 3228
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_0

    .line 3229
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoRecommend(Lcom/youku/vo/DetailRecomment;)V

    .line 3232
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    if-eqz v0, :cond_2

    .line 3233
    const/4 v1, 0x0

    .line 3234
    .local v1, "tHasNext":Z
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    .line 3235
    .local v2, "tCurVid":Ljava/lang/String;
    const-string v3, ""

    .line 3236
    .local v3, "tNextVid":Ljava/lang/String;
    const-string v4, ""

    .line 3237
    .local v4, "tNextAlbumId":Ljava/lang/String;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->VIDEO:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 3238
    .local v5, "tNextVideoType":Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v0}, Lcom/youku/vo/DetailRecomment;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3239
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v0, v9}, Lcom/youku/vo/DetailRecomment;->get(I)Lcom/youku/vo/RelatedVideo;

    move-result-object v6

    .line 3240
    .local v6, "r":Lcom/youku/vo/RelatedVideo;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 3241
    iget-object v3, v6, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    .line 3242
    iget-object v4, v6, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    .line 3243
    const/4 v1, 0x1

    .line 3244
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindRecommend next r = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    .end local v6    # "r":Lcom/youku/vo/RelatedVideo;
    :cond_1
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindRecommend tHasNext = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tCurVid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tNextVid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tNextAlbumId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tNextVideoType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 3248
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 3249
    iput-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    .line 3251
    .end local v1    # "tHasNext":Z
    .end local v2    # "tCurVid":Ljava/lang/String;
    .end local v3    # "tNextVid":Ljava/lang/String;
    .end local v4    # "tNextAlbumId":Ljava/lang/String;
    .end local v5    # "tNextVideoType":Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    :cond_2
    return-void
.end method

.method public onBindSelectnessBar(Ljava/lang/String;Lcom/tudou/detail/vo/Interactive;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "interactive"    # Lcom/tudou/detail/vo/Interactive;

    .prologue
    .line 2950
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v1, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddSelectness(Lcom/tudou/detail/vo/Interactive;)V

    .line 2952
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2953
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actiontype"

    const-string v2, "cmsthemeshow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    const-string/jumbo v1, "vid"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    const-string/jumbo v1, "\u8be6\u60c5\u9875\u7cbe\u9009\u89c6\u9891\u533a\u66dd\u5149\u91cf"

    const-string/jumbo v2, "\u64ad\u653e\u5668"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2956
    return-void
.end method

.method public onBindSlider(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/SliderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3004
    .local p1, "sliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, 0x1

    .line 3005
    .local v4, "num":I
    :goto_0
    sget-object v12, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onBindSlider slider = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_6

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 3007
    new-instance v5, Lcom/tudou/detail/vo/SliderInfo;

    sget-object v11, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-direct {v5, v11}, Lcom/tudou/detail/vo/SliderInfo;-><init>(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V

    .line 3008
    .local v5, "point":Lcom/tudou/detail/vo/SliderInfo;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 3009
    .local v6, "pointIndex":I
    sget-object v11, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onBindSlider SliderPoint index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    .line 3011
    sget-object v11, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onBindSlider videoinfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", vid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 3013
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v7

    .line 3014
    .local v7, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    sget-object v12, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onBindSlider point size = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 3016
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3024
    .end local v7    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_1
    :goto_3
    new-instance v1, Lcom/tudou/detail/vo/SliderInfo;

    sget-object v11, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-direct {v1, v11}, Lcom/tudou/detail/vo/SliderInfo;-><init>(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V

    .line 3025
    .local v1, "feature":Lcom/tudou/detail/vo/SliderInfo;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3026
    .local v2, "featureIndex":I
    sget-object v11, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onBindSlider Sliderfeature index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    const/4 v11, -0x1

    if-eq v2, v11, :cond_2

    .line 3028
    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    :cond_2
    new-instance v9, Lcom/tudou/detail/vo/SliderInfo;

    sget-object v11, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-direct {v9, v11}, Lcom/tudou/detail/vo/SliderInfo;-><init>(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V

    .line 3032
    .local v9, "vote":Lcom/tudou/detail/vo/SliderInfo;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3033
    .local v10, "voteIndex":I
    sget-object v11, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onBindSlider Slidervote index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 3035
    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3038
    :cond_3
    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    iget-object v12, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v11, v4, v12, p1}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddSlider(ILcom/youku/vo/NewVideoDetail;Ljava/util/ArrayList;)V

    .line 3039
    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    iget-object v12, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    invoke-virtual {v11, v12}, Lcom/tudou/detail/widget/DetailContentPanel;->setVideoState(Lcom/tudou/detail/vo/VideoState;)V

    .line 3041
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3042
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "actiontype"

    const-string v12, "cmscardshow"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    const/4 v8, 0x0

    .line 3044
    .local v8, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_9

    .line 3045
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tudou/detail/vo/SliderInfo;

    iget-object v11, v11, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3046
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v3, v11, :cond_4

    .line 3047
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u3001"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3044
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3004
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "feature":Lcom/tudou/detail/vo/SliderInfo;
    .end local v2    # "featureIndex":I
    .end local v3    # "i":I
    .end local v4    # "num":I
    .end local v5    # "point":Lcom/tudou/detail/vo/SliderInfo;
    .end local v6    # "pointIndex":I
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "vote":Lcom/tudou/detail/vo/SliderInfo;
    .end local v10    # "voteIndex":I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3005
    .restart local v4    # "num":I
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_1

    .line 3014
    .restart local v5    # "point":Lcom/tudou/detail/vo/SliderInfo;
    .restart local v6    # "pointIndex":I
    .restart local v7    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_7
    const-string v11, " null."

    goto/16 :goto_2

    .line 3019
    .end local v7    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_8
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/tudou/ui/activity/DetailActivity;->mSliderPointNeedChecked:Z

    .line 3020
    iget-object v11, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3050
    .restart local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "feature":Lcom/tudou/detail/vo/SliderInfo;
    .restart local v2    # "featureIndex":I
    .restart local v3    # "i":I
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "vote":Lcom/tudou/detail/vo/SliderInfo;
    .restart local v10    # "voteIndex":I
    :cond_9
    const-string/jumbo v11, "type"

    invoke-virtual {v0, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    const-string v11, "cms\u5706\u7247\u66dd\u5149\u6b21\u6570"

    const-string/jumbo v12, "\u64ad\u653e\u5668"

    const-string v13, ""

    invoke-static {v11, v12, v13, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3053
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "feature":Lcom/tudou/detail/vo/SliderInfo;
    .end local v2    # "featureIndex":I
    .end local v3    # "i":I
    .end local v5    # "point":Lcom/tudou/detail/vo/SliderInfo;
    .end local v6    # "pointIndex":I
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "vote":Lcom/tudou/detail/vo/SliderInfo;
    .end local v10    # "voteIndex":I
    :cond_a
    return-void
.end method

.method public onBindSpecialTopic(Ljava/lang/String;Lcom/tudou/detail/vo/Interactive;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "interactive"    # Lcom/tudou/detail/vo/Interactive;

    .prologue
    .line 2943
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindSpecialTopic vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interactive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddSpecialTopic(Lcom/tudou/detail/vo/Interactive;)V

    .line 2946
    return-void
.end method

.method public onBindVideoActors(ZLjava/util/ArrayList;)V
    .locals 3
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/NewVideoDetail$Detail$Actor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2770
    .local p2, "actors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/NewVideoDetail$Detail$Actor;>;"
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindVideoActors success = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    if-eqz v0, :cond_0

    .line 2772
    if-eqz p1, :cond_2

    .line 2773
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddActorsBar(Ljava/util/ArrayList;)V

    .line 2778
    :cond_0
    :goto_1
    return-void

    .line 2770
    :cond_1
    const-string v0, "null"

    goto :goto_0

    .line 2775
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->removeActorsBar()V

    goto :goto_1
.end method

.method public onBindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2729
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBindVideoDetail success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNextVideoGetted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mNextVideoGetted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFetchingData:Z

    .line 2731
    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 2732
    if-nez p1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/tudou/ui/activity/DetailActivity;->showLoading(ZZ)V

    .line 2733
    if-eqz p1, :cond_5

    .line 2734
    iget-object v1, p3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    iput-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 2735
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    if-eqz v1, :cond_0

    .line 2736
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v1, v3}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddBriefBar(Lcom/youku/vo/NewVideoDetail;)V

    .line 2737
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v1, p3}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddFavCacheBar(Lcom/youku/vo/NewVideoDetail;)V

    .line 2739
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    if-eqz v1, :cond_1

    .line 2740
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v1, p3}, Lcom/tudou/detail/widget/DetailSubPanel;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 2742
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v1, :cond_2

    .line 2743
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v1, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 2754
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mNextVideoGetted:Z

    if-eqz v1, :cond_7

    .line 2755
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v0

    .line 2756
    .local v0, "tType":Lcom/tudou/android/Youku$VideoType;
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetNextVideoInfo tType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    sget-object v1, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v0, v1, :cond_3

    .line 2758
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 2759
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 2760
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 2761
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v2, ""

    iput-object v2, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 2766
    .end local v0    # "tType":Lcom/tudou/android/Youku$VideoType;
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v3

    .line 2732
    goto :goto_0

    .line 2746
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    if-eqz v1, :cond_6

    .line 2747
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment()V

    .line 2749
    :cond_6
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v1, :cond_2

    .line 2750
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    goto :goto_1

    .line 2764
    :cond_7
    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideo:Z

    goto :goto_2
.end method

.method public onBindVideoFeature(ZLjava/lang/String;Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 10
    .param p1, "success"    # Z
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    const/4 v9, 0x0

    .line 2887
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindVideoFeature success = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " feature = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsNeedUpdateNextVideoWithFeature = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithFeature:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 2889
    if-eqz p1, :cond_6

    .line 2890
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->checkSliderItem(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V

    .line 2891
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->getCurrentState()Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    move-result-object v0

    sget-object v7, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v0, v7, :cond_0

    .line 2892
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2893
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0, p3}, Lcom/tudou/detail/widget/DetailSubPanel;->setDetailFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 2898
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_1

    .line 2899
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, p3, v7}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddFeatureBar(Lcom/tudou/detail/vo/DetailFeature;Ljava/lang/String;)V

    .line 2910
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithFeature:Z

    if-eqz v0, :cond_4

    .line 2911
    const/4 v1, 0x0

    .line 2912
    .local v1, "tHasNext":Z
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    .line 2913
    .local v2, "tCurVid":Ljava/lang/String;
    const-string v3, ""

    .line 2914
    .local v3, "tNextVid":Ljava/lang/String;
    const-string v4, ""

    .line 2915
    .local v4, "tNextAlbumId":Ljava/lang/String;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->VIDEO:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 2916
    .local v5, "tNextVideoType":Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2917
    const/4 v6, 0x0

    .line 2918
    .local v6, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v7, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tudou/detail/vo/DetailFeature;->getFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2919
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0, v9}, Lcom/tudou/detail/vo/DetailFeature;->get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v6

    .line 2920
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindVideoFeature first f = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    :goto_2
    if-eqz v6, :cond_3

    .line 2926
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 2927
    iget-object v3, v6, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    .line 2928
    const/4 v1, 0x1

    .line 2931
    .end local v6    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    :cond_3
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindVideoFeature tHasNext = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tCurVid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tNextVid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tNextAlbumId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tNextVideoType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 2933
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 2934
    iput-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithFeature:Z

    .line 2935
    if-eqz v1, :cond_4

    .line 2936
    iput-boolean v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    .line 2939
    .end local v1    # "tHasNext":Z
    .end local v2    # "tCurVid":Ljava/lang/String;
    .end local v3    # "tNextVid":Ljava/lang/String;
    .end local v4    # "tNextAlbumId":Ljava/lang/String;
    .end local v5    # "tNextVideoType":Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    :cond_4
    return-void

    .line 2895
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment()V

    goto/16 :goto_0

    .line 2903
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->getCurrentState()Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    move-result-object v0

    sget-object v7, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v0, v7, :cond_7

    .line 2904
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment()V

    .line 2906
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_2

    .line 2907
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    goto/16 :goto_1

    .line 2922
    .restart local v1    # "tHasNext":Z
    .restart local v2    # "tCurVid":Ljava/lang/String;
    .restart local v3    # "tNextVid":Ljava/lang/String;
    .restart local v4    # "tNextAlbumId":Ljava/lang/String;
    .restart local v5    # "tNextVideoType":Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    .restart local v6    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    :cond_8
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v7, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tudou/detail/vo/DetailFeature;->getNextFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v6

    .line 2923
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindVideoFeature next f = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onBindVideoList(ZLcom/tudou/detail/vo/VideoList;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    const/4 v5, 0x1

    .line 3065
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v0

    .line 3066
    .local v0, "count":I
    :goto_0
    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 3067
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindVideoList count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    if-lez v0, :cond_3

    .line 3069
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mHasVideoList:Z

    .line 3070
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v2, v3, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->buildAndAddPlaylistBar(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/vo/VideoList;)V

    .line 3071
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 3072
    .local v1, "vid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3073
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIntentVid:Ljava/lang/String;

    .line 3075
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v2, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurrentVideo(Ljava/lang/String;)V

    .line 3076
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_1

    .line 3077
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 3078
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setCurrentVid(Ljava/lang/String;Z)V

    .line 3085
    .end local v1    # "vid":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 3065
    .end local v0    # "count":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3081
    .restart local v0    # "count":I
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_1

    .line 3082
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    goto :goto_1
.end method

.method public onBindVideoState(Lcom/tudou/detail/vo/VideoState;)V
    .locals 3
    .param p1, "state"    # Lcom/tudou/detail/vo/VideoState;

    .prologue
    .line 3058
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindVideoState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    .line 3060
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/DetailContentPanel;->setVideoState(Lcom/tudou/detail/vo/VideoState;)V

    .line 3061
    return-void
.end method

.method public onBtnActorClick(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V
    .locals 4
    .param p1, "actor"    # Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .prologue
    .line 3595
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtnActorClick actor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3596
    const-string v1, "click.interval"

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3606
    :cond_0
    :goto_0
    return-void

    .line 3599
    :cond_1
    const-string/jumbo v1, "t1.detail_sdetail.actor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3600
    invoke-virtual {p1}, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3602
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.video.actor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3603
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->ACTOR:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method

.method public onBtnBriefClicked()V
    .locals 4

    .prologue
    .line 3393
    const-string v1, "click.interval"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3399
    :goto_0
    return-void

    .line 3396
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3397
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.videodetail"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3398
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->BRIEF:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onBtnCacheClicked()V
    .locals 8

    .prologue
    .line 3524
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBtnCacheClicked"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const-string v0, "click.interval"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3561
    :goto_0
    return-void

    .line 3529
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3530
    const-string/jumbo v1, "\u662f\u5426\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u7f13\u5b58\u89c6\u9891?"

    const-string/jumbo v2, "\u5141\u8bb8"

    const-string/jumbo v3, "\u53d6\u6d88"

    new-instance v4, Lcom/tudou/ui/activity/DetailActivity$18;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/DetailActivity$18;-><init>(Lcom/tudou/ui/activity/DetailActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mNotifyDialog:Lcom/youku/widget/TudouDialog;

    goto :goto_0

    .line 3551
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v0, :cond_2

    .line 3552
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3553
    .local v7, "b":Landroid/os/Bundle;
    const-string v0, "bundle.videodetail"

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3554
    const-string v0, "bundle.current.vid"

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v0, v1, v7}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3557
    .end local v7    # "b":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v0, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBtnChatClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 3478
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v5, "onBtnChatClicked"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    const-string v4, "click.interval"

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3521
    :goto_0
    return-void

    .line 3482
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mShareDialog:Lcom/tudou/ui/activity/BindActivity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mShareDialog:Lcom/tudou/ui/activity/BindActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/BindActivity;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3483
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mShareDialog:Lcom/tudou/ui/activity/BindActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/BindActivity;->dismiss()V

    .line 3485
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    if-eqz v4, :cond_2

    .line 3486
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    iget-boolean v4, v4, Lcom/tudou/detail/widget/DetailContentPanel;->isChildExpand:Z

    if-eqz v4, :cond_2

    .line 3487
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/DetailContentPanel;->hidePlayList(Z)V

    .line 3490
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3492
    .local v2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "detail.cling.chats.show"

    invoke-static {p0, v4}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3493
    const-string v4, "detail.cling.chats.show"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 3494
    const v4, 0x7f0c0319

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3495
    .local v1, "cling":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 3496
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3498
    :cond_3
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "\u7ea2\u70b9"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3502
    .end local v1    # "cling":Landroid/view/View;
    :goto_1
    const-string/jumbo v4, "t1.detail_sdetail.chat"

    invoke-static {v4, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3503
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->dismissImgFragment()V

    .line 3504
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3505
    move-object v3, p2

    .line 3506
    .local v3, "videoId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3507
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v3

    .line 3509
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3511
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "intent_key_video_title"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v5, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CHAT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v4, v5, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3500
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "videoId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "\u6ca1\u7ea2\u70b9"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3516
    .restart local v3    # "videoId":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3519
    .end local v3    # "videoId":Ljava/lang/String;
    :cond_7
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0
.end method

.method public onBtnCommentClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 3416
    const-string v2, "click.interval"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3434
    :goto_0
    return-void

    .line 3420
    :cond_0
    const-string/jumbo v2, "t1.detail_sdetail.morecomment"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3421
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 3422
    .local v1, "videoId":Ljava/lang/String;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBtnCommentClicked videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " imgPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3425
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "bundle.code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3427
    const-string v2, "bundle.img.path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v2, v3, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    .line 3433
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->showFloatIcon()V

    goto :goto_0

    .line 3431
    :cond_2
    const-string/jumbo v2, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onBtnFavClicked(Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;)V
    .locals 7
    .param p1, "lis"    # Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3275
    const-string v2, "onClick_fav"

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, p1

    move v2, v1

    move-object v4, v3

    move v5, v1

    .line 3276
    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;->onVideoFavComplete(ZZLjava/lang/String;Ljava/lang/String;I)V

    .line 3339
    :cond_0
    :goto_0
    return-void

    .line 3280
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3281
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    move-object v0, p1

    move v2, v1

    move-object v4, v3

    move v5, v1

    .line 3282
    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;->onVideoFavComplete(ZZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 3286
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3287
    :cond_3
    const-string/jumbo v2, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    move-object v0, p1

    move v2, v1

    move-object v4, v3

    move v5, v1

    .line 3288
    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;->onVideoFavComplete(ZZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 3291
    :cond_4
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;-><init>()V

    .line 3292
    .local v0, "favorService":Lcom/youku/phone/detail/plugin/fullscreen/FavorService;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 3293
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtnFavClick mediaPlayerDelegate.videoInfo.isFaved = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v3, v3, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    if-eqz v1, :cond_5

    .line 3295
    const-string/jumbo v1, "\u64ad\u653e\u9875\u53d6\u6d88\u6536\u85cf\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u64ad\u653e\u9875\u53d6\u6d88\u6536\u85cf\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/activity/DetailActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/activity/DetailActivity$15;-><init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->cacelfav(Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V

    goto/16 :goto_0

    .line 3317
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/activity/DetailActivity$16;

    invoke-direct {v6, p0, p1}, Lcom/tudou/ui/activity/DetailActivity$16;-><init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->favor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V

    goto/16 :goto_0
.end method

.method public onBtnFeatureClicked()V
    .locals 4

    .prologue
    .line 3402
    const-string v1, "click.interval"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3413
    :goto_0
    return-void

    .line 3405
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3407
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.video.feature"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3408
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3411
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8f7d\u540e\u518d\u8bd5"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBtnGiftClicked()V
    .locals 6

    .prologue
    .line 3464
    const-string v2, "click.interval"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3475
    :goto_0
    return-void

    .line 3467
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    .line 3468
    .local v1, "videoId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3470
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "item_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->GIFT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v2, v3, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3473
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v2, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBtnPodcastClicked()V
    .locals 6

    .prologue
    .line 3564
    const-string v3, "click.interval"

    const-wide/16 v4, 0x3e8

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3579
    :goto_0
    return-void

    .line 3567
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v3}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v2

    .line 3568
    .local v2, "type":Lcom/tudou/android/Youku$VideoType;
    sget-object v3, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_2

    .line 3569
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3570
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3571
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "username"

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    const-string/jumbo v3, "userid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    const-string v3, "from"

    const-string v4, "detail"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3575
    const/16 v3, 0x3e9

    invoke-static {p0, v1, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 3577
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBtnPodcastClicked type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBtnPointClicked()V
    .locals 5

    .prologue
    .line 3609
    const-string v1, "click.interval"

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3622
    :goto_0
    return-void

    .line 3612
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    .line 3613
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    .line 3614
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3615
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->POINT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0

    .line 3617
    :cond_1
    const-string/jumbo v1, "\u6682\u65e0\u770b\u70b9\u3002"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 3620
    .end local v0    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_2
    const-string/jumbo v1, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBtnShareClicked()V
    .locals 24

    .prologue
    .line 3344
    const-string v3, "onClick_share"

    invoke-static {v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3389
    :goto_0
    return-void

    .line 3347
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-nez v3, :cond_2

    .line 3348
    :cond_1
    const-string/jumbo v3, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 3351
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->dissmissPauseAD()V

    .line 3353
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBtnShareClicked title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3356
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "videoTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    const-string/jumbo v3, "videoUrl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3358
    const-string v3, "itemCode"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    const-string v3, "picUrl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v8, v3, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    .line 3361
    .local v8, "summary":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    if-lt v3, v4, :cond_4

    .line 3362
    const-string/jumbo v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x23

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    :goto_1
    const/16 v21, 0x0

    .line 3369
    .local v21, "video":Lcom/tudou/detail/vo/Video;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tudou/detail/vo/VideoList;->getVideoByVideoId(Ljava/lang/String;)Lcom/tudou/detail/vo/Video;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 3372
    :goto_2
    const/16 v20, 0x0

    .line 3373
    .local v20, "tPlayTimesFromVideolist":I
    if-eqz v21, :cond_3

    .line 3374
    move-object/from16 v0, v21

    iget v0, v0, Lcom/tudou/detail/vo/Video;->playtimes_count:I

    move/from16 v20, v0

    .line 3376
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getChannel_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getVideoBrief()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/tudou/ui/activity/DetailActivity;->mIsFromDanmu:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getItemShortDesc()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getItemPlayTimes()J

    move-result-wide v18

    const-wide/16 v22, 0x0

    cmp-long v3, v18, v22

    if-nez v3, :cond_5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :goto_3
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v19}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;J)Lcom/tudou/ui/activity/BindActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mShareDialog:Lcom/tudou/ui/activity/BindActivity;

    goto/16 :goto_0

    .line 3365
    .end local v20    # "tPlayTimesFromVideolist":I
    .end local v21    # "video":Lcom/tudou/detail/vo/Video;
    :cond_4
    const-string/jumbo v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3376
    .restart local v20    # "tPlayTimesFromVideolist":I
    .restart local v21    # "video":Lcom/tudou/detail/vo/Video;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getItemPlayTimes()J

    move-result-wide v18

    goto :goto_3

    .line 3370
    .end local v20    # "tPlayTimesFromVideolist":I
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method public onBtnVoteClicked()V
    .locals 4

    .prologue
    .line 2789
    const-string v1, "click.interval"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2800
    :goto_0
    return-void

    .line 2792
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2794
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.video.vote"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2795
    const-string v1, "bundle.video.position"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2796
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->VOTE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2798
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8f7d\u540e\u518d\u8bd5"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 1719
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->isVerticalFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v2, :cond_0

    .line 1720
    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    .line 1721
    iput v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 1722
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1732
    :goto_0
    return-void

    .line 1724
    :cond_0
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1725
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/DetailSubPanel;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 1726
    .local v0, "currentFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/tudou/android/chat/ChatFragment;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1727
    check-cast v1, Lcom/tudou/android/chat/ChatFragment;

    .line 1728
    .local v1, "fragment":Lcom/tudou/android/chat/ChatFragment;
    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatFragment;->resetConversationFragment()V

    .line 1730
    .end local v1    # "fragment":Lcom/tudou/android/chat/ChatFragment;
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->doLayout()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super/range {p0 .. p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 286
    .local v12, "begin":J
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/android/chat/ChatManager;->setIsRealConnect(Z)V

    .line 287
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;ZZ)V

    .line 288
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->requestWindowFeature(I)Z

    .line 292
    const v2, 0x7f03001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->setContentView(I)V

    .line 294
    new-instance v2, Lcom/tudou/detail/DetailModel;

    invoke-direct {v2}, Lcom/tudou/detail/DetailModel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tudou/detail/DetailModel;->setCallback(Lcom/tudou/detail/DetailModel$Callbacks;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 298
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v18, "tIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/tudou/ui/activity/DetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->setupViews()V

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntentData()V

    .line 308
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate initLayout takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 310
    .local v16, "initPlayerBegin":J
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->initPlayer()V

    .line 312
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    if-nez v2, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;)V

    .line 316
    :cond_0
    const v2, 0x7f0c0109

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/player/base/YoukuPlayerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    const/16 v4, 0x2712

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    sget-object v7, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    const/4 v8, 0x0

    sget-wide v22, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "6b72db72a6639e1d5a2488ed485192f6"

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/youku/player/base/YoukuPlayerView;->initialize(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/String;)V

    .line 321
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate initPlayer takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/mma/mobile/tracking/api/Countly;->getSdk()Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v2

    if-nez v2, :cond_1

    .line 329
    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    .line 330
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/youku/http/URLContainer;->MMA_CONFIG_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/com/mma/mobile/tracking/api/Countly;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/com/mma/mobile/tracking/api/Countly;->setTrackLocation(ZLandroid/content/Context;)V

    .line 339
    :cond_1
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060002

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mScreenshotMusic:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    const v2, 0x7f0c0bd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v19

    .line 348
    .local v19, "uri":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    invoke-static/range {v19 .. v19}, Lcom/tudou/detail/Test;->onStartFromH5(Ljava/lang/String;)V

    .line 352
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent.extra.open.chat"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 353
    .local v15, "openChat":Z
    if-eqz v15, :cond_3

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent.extra.chat.roomid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, "chatRoomId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "video_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 356
    .local v20, "vid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/tudou/ui/activity/DetailActivity;->onBtnChatClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v11    # "chatRoomId":Ljava/lang/String;
    .end local v20    # "vid":Ljava/lang/String;
    :cond_3
    return-void

    .line 343
    .end local v15    # "openChat":Z
    .end local v19    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 344
    .local v14, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mScreenshotMusic:I

    goto :goto_0
.end method

.method public onCreateDownloadTaskComplete(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 3213
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDownloadTaskComplete success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3215
    if-eqz p1, :cond_1

    .line 3216
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->disableDownload()V

    .line 3221
    :cond_0
    :goto_0
    return-void

    .line 3218
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->enableDownload()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1304
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onDestroy()V

    .line 1305
    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 1306
    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->vidoebrief:Ljava/lang/String;

    .line 1307
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->clear()V

    .line 1308
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->clear()V

    .line 1309
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1310
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->disableOrientation()V

    .line 1311
    iget v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mScreenshotMusic:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mScreenshotMusic:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mScreenshotMusic:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->releasePlayer()V

    .line 1315
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 1316
    return-void
.end method

.method public onFavor()V
    .locals 2

    .prologue
    .line 3261
    const v1, 0x7f0c0316

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 3262
    .local v0, "mBtnFav":Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 3263
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3265
    :cond_0
    return-void
.end method

.method public onFinishBinding()V
    .locals 0

    .prologue
    .line 3209
    return-void
.end method

.method public onFullscreenListener()V
    .locals 4

    .prologue
    .line 1683
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->fullscreen:Z

    .line 1684
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mBtnBack:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1685
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mBtnBack:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1687
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v2, :cond_1

    .line 1688
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->onFullScreen()V

    .line 1689
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_2

    .line 1690
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onFullScreen()V

    .line 1693
    :cond_2
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/service/chat/ChatManager;->fullscreenDismissChatIcon()V

    .line 1694
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/DetailSubPanel;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 1695
    .local v1, "currentFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/tudou/android/chat/ChatFragment;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 1696
    check-cast v0, Lcom/tudou/android/chat/ChatFragment;

    .line 1697
    .local v0, "chatFragment":Lcom/tudou/android/chat/ChatFragment;
    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatFragment;->hideAllDialog()V

    .line 1699
    .end local v0    # "chatFragment":Lcom/tudou/android/chat/ChatFragment;
    :cond_3
    return-void
.end method

.method public onGetNextVideoInfo(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "hasNext"    # Z
    .param p2, "currentVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;

    .prologue
    .line 2590
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo hasNext = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " currentVid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nextVid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsNeedUpdateNextVideo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideo:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    const/4 v1, 0x0

    .line 2592
    .local v1, "tHasNext":Z
    move-object v2, p2

    .line 2593
    .local v2, "tCurVid":Ljava/lang/String;
    const-string v3, ""

    .line 2594
    .local v3, "tNextVid":Ljava/lang/String;
    const-string v4, ""

    .line 2595
    .local v4, "tNextAlbumId":Ljava/lang/String;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->VIDEO:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 2597
    .local v5, "tNextVideoType":Lcom/tudou/ui/activity/DetailActivity$NextVideoType;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mNextVideoGetted:Z

    .line 2598
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v0}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v8

    .line 2599
    .local v8, "tType":Lcom/tudou/android/Youku$VideoType;
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideo:Z

    if-eqz v0, :cond_0

    .line 2600
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo tType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v8, v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 2603
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 2604
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 2605
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 2606
    const/4 p1, 0x0

    .line 2607
    const/4 v3, 0x0

    .line 2610
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    .line 2611
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2612
    move-object v2, p2

    .line 2613
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2614
    move v1, p1

    .line 2615
    move-object v3, p3

    .line 2619
    :cond_1
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo tHasNext = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    if-nez v1, :cond_3

    const-string v0, "local"

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2621
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo tType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    if-eqz v8, :cond_3

    .line 2623
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v8, v0, :cond_2

    .line 2624
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo mVideoFeature = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " count = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 2626
    const/4 v6, 0x0

    .line 2627
    .local v6, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/tudou/detail/vo/DetailFeature;->getFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2628
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/tudou/detail/vo/DetailFeature;->get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v6

    .line 2629
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo first f = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :goto_1
    if-eqz v6, :cond_2

    .line 2635
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 2636
    iget-object v3, v6, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    .line 2637
    const/4 v1, 0x1

    .line 2643
    .end local v6    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    :cond_2
    :goto_2
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo tHasNext = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    if-nez v1, :cond_3

    .line 2645
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo mVideoRecommend = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " count = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v0}, Lcom/youku/vo/DetailRecomment;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v0}, Lcom/youku/vo/DetailRecomment;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 2647
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/youku/vo/DetailRecomment;->get(I)Lcom/youku/vo/RelatedVideo;

    move-result-object v7

    .line 2648
    .local v7, "r":Lcom/youku/vo/RelatedVideo;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 2649
    iget-object v3, v7, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    .line 2650
    iget-object v4, v7, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    .line 2651
    const/4 v1, 0x1

    .line 2652
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo next r = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    .end local v7    # "r":Lcom/youku/vo/RelatedVideo;
    :cond_3
    :goto_4
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo tHasNext = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tCurVid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tNextVid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tNextAlbumId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tNextVideoType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 2663
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 2665
    return-void

    .line 2624
    :cond_4
    const-string v0, "0"

    goto/16 :goto_0

    .line 2631
    .restart local v6    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v9, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/tudou/detail/vo/DetailFeature;->getNextFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v6

    .line 2632
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onGetNextVideoInfo next f = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2640
    .end local v6    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithFeature:Z

    goto/16 :goto_2

    .line 2645
    :cond_7
    const-string v0, "0"

    goto/16 :goto_3

    .line 2654
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    goto/16 :goto_4
.end method

.method public onGetVideoFaved(ZZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "faved"    # Z
    .param p3, "vid"    # Ljava/lang/String;

    .prologue
    .line 2705
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean p2, v0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    .line 2707
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurVideoFav(Z)V

    .line 2708
    if-eqz p2, :cond_1

    .line 2709
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getPluginManager()Lcom/youku/player/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->setFav()V

    .line 2714
    :cond_0
    :goto_0
    return-void

    .line 2711
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->clearUpDownFav()V

    goto :goto_0
.end method

.method public onHeadsetPlug(ILjava/lang/String;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "microphone"    # I

    .prologue
    const/4 v5, 0x3

    .line 2718
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2719
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 2720
    .local v2, "max":I
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2721
    .local v1, "cur":I
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHeadsetPlug max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cur = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v3, :cond_0

    .line 2723
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v3, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onHeadsetPlug(ILjava/lang/String;I)V

    .line 2725
    :cond_0
    return-void
.end method

.method public onInitializationSuccess(Lcom/youku/player/base/YoukuPlayer;)V
    .locals 4
    .param p1, "player"    # Lcom/youku/player/base/YoukuPlayer;

    .prologue
    .line 1345
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onInitializationSuccess(Lcom/youku/player/base/YoukuPlayer;)V

    .line 1346
    const-string v0, "PlayFlow"

    const-string v1, "onInitializationSuccess \u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    .line 1348
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 1351
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    .line 1352
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;-><init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 1353
    new-instance v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;-><init>(Landroid/content/Context;Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    .line 1354
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mOrientationHelper:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->enableListener()V

    .line 1355
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayer;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setScreenChangeListener(Lcom/youku/player/apiservice/ScreenChangeListener;)V

    .line 1356
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayer;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IPlayerAdControl;->setListener(Lcom/youku/player/ad/api/IAdControlListener;)V

    .line 1357
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAccountAndImgUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->setmPluginSmallScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 1361
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->setmPluginFullScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 1362
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->addPlugins()V

    .line 1363
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->goPlayVideo()V

    .line 1364
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 793
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown keyCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    .line 795
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    .line 796
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown BACK PRESSED playType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown BACK PRESSED isFullScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 801
    .local v0, "tFm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 802
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 803
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .line 804
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "mImagePreview handle backKey"

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 823
    .end local v0    # "tFm":Landroid/app/FragmentManager;
    .end local v1    # "tTransaction":Landroid/app/FragmentTransaction;
    :goto_1
    return v2

    .line 796
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/DetailSubPanel;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 807
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "mSubPanel handle backKey"

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 808
    goto :goto_1

    .line 809
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/DetailContentPanel;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 810
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "mContentPanel handle backKey"

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 811
    goto :goto_1

    .line 812
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 813
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v4, "mPluginFullscreen handle backKey"

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 814
    goto :goto_1

    .line 817
    :cond_6
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_7

    .line 818
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown BACK PRESSED playType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown BACK PRESSED isFullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_7
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v3, "onKeyDown BACK PRESSED give super"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_1

    .line 818
    :cond_9
    const-string v2, "null"

    goto :goto_2
.end method

.method public onLoginStatusChange(ZLcom/youku/vo/UserBean;)V
    .locals 4
    .param p1, "login"    # Z
    .param p2, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 1821
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginStatusChange login = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    if-eqz p1, :cond_0

    .line 1823
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAccountAndImgUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/detail/widget/DetailSubPanel;->setLoginState(ZLcom/youku/vo/UserBean;)V

    .line 1828
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->setLoginState(ZLcom/youku/vo/UserBean;)V

    .line 1829
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 915
    invoke-super/range {p0 .. p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 916
    invoke-virtual/range {p0 .. p1}, Lcom/tudou/ui/activity/DetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 917
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tudou/detail/Test;->onStartFromH5(Ljava/lang/String;)V

    .line 921
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearHdInfos()V

    .line 924
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "intent.extra.open.chat"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 925
    .local v7, "openChat":Z
    if-eqz v7, :cond_2

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "intent.extra.chat.roomid"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "chatRoomId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "video_id"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 928
    .local v17, "vid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/tudou/ui/activity/DetailActivity;->onBtnChatClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v3    # "chatRoomId":Ljava/lang/String;
    .end local v17    # "vid":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "intent.extra.force.replay"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 931
    .local v12, "tForceRePlay":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_5

    const-string v18, "intent.extra.from.chat.detail"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 932
    .local v13, "tFromChatDetail":Z
    :goto_1
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "intent.getExtras().getString(INTENT_EXTRA_FROM_KEY) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onNewIntent NewUri = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " tForceReload = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " tFromChatDetail = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const/high16 v19, 0x400000

    and-int v18, v18, v19

    if-eqz v18, :cond_6

    const/4 v2, 0x1

    .line 936
    .local v2, "broughtFront":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const/high16 v19, 0x1000000

    and-int v18, v18, v19

    if-eqz v18, :cond_7

    const/4 v5, 0x1

    .line 937
    .local v5, "isTop":Z
    :goto_3
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onNewIntent broughtFront = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isTop = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    if-eqz v13, :cond_8

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v10

    .line 941
    .local v10, "tCurVid":Ljava/lang/String;
    const-string/jumbo v18, "video_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1017
    .end local v10    # "tCurVid":Ljava/lang/String;
    :cond_3
    :goto_4
    return-void

    .line 930
    .end local v2    # "broughtFront":Z
    .end local v5    # "isTop":Z
    .end local v12    # "tForceRePlay":Z
    .end local v13    # "tFromChatDetail":Z
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 931
    .restart local v12    # "tForceRePlay":Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 935
    .restart local v13    # "tFromChatDetail":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 936
    .restart local v2    # "broughtFront":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 950
    .restart local v5    # "isTop":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->getVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 952
    .local v6, "lastid":Ljava/lang/String;
    const/16 v17, 0x0

    .line 953
    .restart local v17    # "vid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 954
    .local v9, "showid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v17

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v9

    .line 959
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 961
    :cond_a
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    goto/16 :goto_4

    .line 965
    .end local v6    # "lastid":Ljava/lang/String;
    .end local v9    # "showid":Ljava/lang/String;
    .end local v17    # "vid":Ljava/lang/String;
    :cond_b
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v19, "onNewIntent 1"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    if-nez v12, :cond_c

    .line 968
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "video_id"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 969
    .local v14, "tidString":Ljava/lang/String;
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onNewIntent id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", tidString = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    move-object/from16 v18, v0

    sget-object v19, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_3

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 977
    .end local v14    # "tidString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 978
    .local v4, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 981
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->clear()V

    .line 982
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->clear()V

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->clear()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->clearVideoTips()V

    .line 986
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v19, "onNewIntent 2"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntentData()V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/plugin/MediaPlayerDelegate;->resetAndReleaseDanmakuInfo()V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/module/VideoUrlInfo;->clear()V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 995
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "video_id"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 997
    .restart local v14    # "tidString":Ljava/lang/String;
    const-string/jumbo v18, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/tudou/android/Youku$Type;

    .line 998
    .local v15, "type":Lcom/tudou/android/Youku$Type;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "playlistCode"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1001
    .local v8, "playlistCode":Ljava/lang/String;
    const-string/jumbo v16, "tudou://"

    .line 1002
    .local v16, "uri":Ljava/lang/String;
    sget-object v18, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_10

    .line 1003
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "albumid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1007
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1008
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&playlistCode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1010
    :cond_e
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    .line 1012
    .end local v8    # "playlistCode":Ljava/lang/String;
    .end local v14    # "tidString":Ljava/lang/String;
    .end local v15    # "type":Lcom/tudou/android/Youku$Type;
    .end local v16    # "uri":Ljava/lang/String;
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/tudou/ui/activity/DetailActivity;->startFromLocal(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1013
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->goPlayVideo()V

    goto/16 :goto_4

    .line 1005
    .restart local v8    # "playlistCode":Ljava/lang/String;
    .restart local v14    # "tidString":Ljava/lang/String;
    .restart local v15    # "type":Lcom/tudou/android/Youku$Type;
    .restart local v16    # "uri":Ljava/lang/String;
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "itemcode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_5
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1278
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iput-boolean v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mPaused:Z

    .line 1280
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onPause()V

    .line 1281
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    invoke-virtual {v0}, Lcom/tudou/detail/DetailModel;->stopLoader()V

    .line 1282
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFetchingData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-nez v0, :cond_0

    .line 1283
    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFetchingData:Z

    .line 1284
    invoke-virtual {p0, v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->showLoading(ZZ)V

    .line 1286
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mNotifyDialog:Lcom/youku/widget/TudouDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mNotifyDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mNotifyDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    if-eqz v0, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->onPause()V

    .line 1299
    :cond_2
    invoke-static {p0}, Lcom/youku/util/Util;->onPause(Landroid/app/Activity;)V

    .line 1300
    return-void

    .line 1290
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPlayComplete(ILjava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V
    .locals 9
    .param p1, "playMode"    # I
    .param p2, "curVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2489
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayComplete playMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curVid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextVid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment()V

    .line 2493
    :cond_0
    if-ne p1, v8, :cond_7

    .line 2494
    const/4 v6, 0x0

    .line 2495
    .local v6, "flag":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2496
    const-string v0, "local"

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2497
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    if-eq p4, v0, :cond_4

    .line 2498
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->ismHasVideoList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2499
    or-int/lit8 v6, v6, 0x4

    .line 2516
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    sget-object v5, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object v1, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    .line 2518
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p3}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurrentVideo(Ljava/lang/String;)V

    .line 2519
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0, p3}, Lcom/tudou/detail/widget/DetailSubPanel;->setCurrentVid(Ljava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    sget-object v1, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    if-eq p4, v1, :cond_6

    :goto_1
    invoke-virtual {v0, p3, v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setCurrentVid(Ljava/lang/String;Z)V

    .line 2526
    .end local v6    # "flag":I
    :cond_3
    :goto_2
    return-void

    .line 2502
    .restart local v6    # "flag":I
    :cond_4
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->FEATURE:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    if-ne p4, v0, :cond_5

    .line 2503
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/DetailContentPanel;->showFeatureBar()V

    .line 2505
    :cond_5
    const/16 v6, 0x37f

    goto :goto_0

    :cond_6
    move v7, v8

    .line 2520
    goto :goto_1

    .line 2522
    .end local v6    # "flag":I
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 2523
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2524
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->onRePlay()V

    goto :goto_2
.end method

.method public onPlayEnd()V
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->goEndPage()V

    .line 2208
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 2820
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setOnPlayNoRightVideo(Z)V

    .line 2821
    return-void
.end method

.method public onQualitySmoothChangeEnd(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 2686
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onQualitySmoothChangeEnd(I)V

    .line 2687
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsChangingQuality:Z

    .line 2688
    const-string v0, ""

    .line 2689
    .local v0, "text":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 2690
    const-string/jumbo v0, "\u8d85\u6e05"

    .line 2696
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u5207\u6362\u81f3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    .line 2697
    return-void

    .line 2691
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 2692
    const-string/jumbo v0, "\u9ad8\u6e05"

    goto :goto_0

    .line 2693
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2694
    const-string/jumbo v0, "\u6807\u6e05"

    goto :goto_0
.end method

.method public onQualitySmoothChangeStart(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    const/4 v1, 0x1

    .line 2671
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onQualitySmoothChangeStart(I)V

    .line 2672
    iput-boolean v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsChangingQuality:Z

    .line 2673
    const-string v0, ""

    .line 2674
    .local v0, "text":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 2675
    const-string/jumbo v0, "\u8d85\u6e05"

    .line 2681
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6b63\u5728\u5207\u6362\u4e3a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    .line 2682
    return-void

    .line 2676
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2677
    const-string/jumbo v0, "\u9ad8\u6e05"

    goto :goto_0

    .line 2678
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2679
    const-string/jumbo v0, "\u6807\u6e05"

    goto :goto_0
.end method

.method public onRePlay()V
    .locals 2

    .prologue
    .line 2482
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRePlay"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onReplay()V

    .line 2486
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 868
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume NewUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iput-boolean v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mPaused:Z

    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 871
    .local v0, "begin":J
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->saveinfo()V

    .line 872
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/DetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 874
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/DetailActivity;->playNoRightVideo(Ljava/lang/String;)V

    .line 875
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    if-eqz v3, :cond_0

    .line 876
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v3}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment()V

    .line 878
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->NewUri:Ljava/lang/String;

    .line 881
    :cond_1
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onResume()V

    .line 882
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 883
    .local v2, "mFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/tudou/ui/activity/DetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 885
    invoke-static {p0}, Lcom/youku/util/Util;->onResume(Landroid/app/Activity;)V

    .line 886
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->checkCacheWhenResume()V

    .line 888
    sget v3, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 890
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness"

    sget v5, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    :cond_2
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 855
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 856
    const-class v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 857
    return-void
.end method

.method public onSelectnessTitleClick(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3582
    .local p2, "cardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;>;"
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectnessTitleClick actor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    const-string v1, "click.interval"

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3592
    :cond_0
    :goto_0
    return-void

    .line 3586
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3587
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3588
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.video.title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    const-string v1, "bundle.video.cardinfo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3590
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->SELECTNESS:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method

.method public onSeriesItemClick(ILjava/lang/String;Lcom/tudou/android/Youku$VideoType;)Z
    .locals 9
    .param p1, "position"    # I
    .param p2, "itemCode"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/tudou/android/Youku$VideoType;

    .prologue
    const/4 v7, 0x0

    .line 2444
    if-nez p2, :cond_1

    .line 2478
    :cond_0
    :goto_0
    return v7

    .line 2446
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2447
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 2451
    :cond_2
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeriesItemClick itemcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    .line 2453
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v8

    .line 2454
    .local v8, "currentVid":Ljava/lang/String;
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeriesItemClick currentVid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2459
    .end local v8    # "currentVid":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurrentVideo(Ljava/lang/String;)V

    .line 2460
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_6

    .line 2462
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 2464
    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 2465
    sget-object v0, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 2466
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v7, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 2467
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_4

    .line 2468
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v7, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 2470
    :cond_4
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->on3gStartPlay()V

    .line 2471
    const/4 v6, 0x0

    .line 2472
    .local v6, "flag":I
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->ismHasVideoList()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2473
    or-int/lit8 v6, v6, 0x4

    .line 2475
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    .line 2478
    .end local v6    # "flag":I
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public onSkipAdClicked()V
    .locals 4

    .prologue
    .line 2579
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onSkipAdClicked()V

    .line 2580
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSkipAdClicked isVip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    iget-boolean v3, v3, Lcom/youku/vo/UserBean;->isVip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    const-string/jumbo v1, "t1.detail_player.skipadvert"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2584
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2585
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x4e22

    invoke-static {p0, v0, v1}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 2586
    return-void
.end method

.method public onSmallscreenListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1703
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSmallscreenListener"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->fullscreen:Z

    .line 1705
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mBtnBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mBtnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v0, :cond_1

    .line 1709
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->onSmallscreen()V

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onSmallScreen()V

    .line 1714
    :cond_2
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->smallscreenShowChatIcon()V

    .line 1715
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1331
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onStart()V

    .line 1332
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/ui/activity/DetailActivity;->mScreenModePre:I

    .line 1334
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightPre:I

    .line 1335
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tudou/service/chat/ChatManager;->setDetailActivity(Lcom/tudou/ui/activity/DetailActivity;)V

    .line 1336
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1320
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onStop()V

    .line 1321
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 1324
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    sget v2, Lcom/tudou/ui/activity/DetailActivity;->mScreenModePre:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1325
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    sget v2, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightPre:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1326
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/service/chat/ChatManager;->setDetailActivity(Lcom/tudou/ui/activity/DetailActivity;)V

    .line 1327
    return-void
.end method

.method public onSubscribe()V
    .locals 3

    .prologue
    .line 2529
    const v2, 0x7f0c02ff

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/SwitchButton;

    .line 2530
    .local v1, "subscriptionBtn":Lcom/tudou/detail/widget/SwitchButton;
    const v2, 0x7f0c0300

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2531
    .local v0, "mHintSubscription":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2532
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 2533
    const-string/jumbo v2, "\u5df2\u8ba2\u9605"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2534
    const-string v2, "#FFA4A4A4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2536
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 660
    .local v1, "flag":Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 664
    :goto_0
    return v1

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUnFavor()V
    .locals 2

    .prologue
    .line 3268
    const v1, 0x7f0c0316

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 3269
    .local v0, "mBtnFav":Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 3270
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3272
    :cond_0
    return-void
.end method

.method public onUnSubscribe()V
    .locals 3

    .prologue
    .line 2539
    const v2, 0x7f0c02ff

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/SwitchButton;

    .line 2540
    .local v1, "subscriptionBtn":Lcom/tudou/detail/widget/SwitchButton;
    const v2, 0x7f0c0300

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2541
    .local v0, "mHintSubscription":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2542
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 2543
    const-string/jumbo v2, "\u8ba2\u9605"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    const-string v2, "#FF46AEE3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2546
    :cond_0
    return-void
.end method

.method public onVideoInfoGetted(ZLjava/lang/String;)V
    .locals 9
    .param p1, "success"    # Z
    .param p2, "itemCode"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2831
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoInfoGetted mOnVideoChangeNeedsLoad = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mOnVideoChangeNeedsLoad:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", success = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", itemCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    iget-boolean v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mOnVideoChangeNeedsLoad:Z

    if-eqz v4, :cond_0

    .line 2833
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    invoke-virtual {v4, p0, p2}, Lcom/tudou/detail/DetailModel;->startLoaderSecondPart(Landroid/content/Context;Ljava/lang/String;)V

    .line 2835
    :cond_0
    if-eqz p1, :cond_8

    .line 2836
    const/4 v1, 0x0

    .line 2837
    .local v1, "isFeatureMode":Z
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 2838
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tudou/detail/vo/DetailFeature;->getFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2839
    const/4 v1, 0x1

    .line 2842
    :cond_1
    if-eqz v1, :cond_2

    const-string v4, "local"

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2845
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/tudou/detail/DetailModel;->getNextVideoAsyn(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V

    .line 2849
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "local"

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v4, v4, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v4, :cond_7

    .line 2850
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mModel:Lcom/tudou/detail/DetailModel;

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tudou/detail/DetailModel;->isVideoFaved(Ljava/lang/String;)V

    .line 2854
    :goto_1
    iget-boolean v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mNeedUpdateAttention:Z

    if-eqz v4, :cond_3

    .line 2855
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mAtteBackVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsAttention:Z

    invoke-virtual {p0, v4, v5}, Lcom/tudou/ui/activity/DetailActivity;->onAttentionCallBack(Lcom/youku/vo/NewVideoDetail;Z)V

    .line 2856
    iput-boolean v7, p0, Lcom/tudou/ui/activity/DetailActivity;->mNeedUpdateAttention:Z

    .line 2857
    iput-object v8, p0, Lcom/tudou/ui/activity/DetailActivity;->mAtteBackVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 2859
    :cond_3
    iget-boolean v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mSliderPointNeedChecked:Z

    if-eqz v4, :cond_4

    .line 2860
    sget-object v4, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/DetailActivity;->checkSliderItem(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V

    .line 2862
    :cond_4
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/DetailSubPanel;->setCurrentVid(Ljava/lang/String;)V

    .line 2863
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mSubPanel:Lcom/tudou/detail/widget/DetailSubPanel;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/DetailSubPanel;->setCurrentVideo(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 2864
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v4, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurrentVideo(Ljava/lang/String;)V

    .line 2882
    .end local v1    # "isFeatureMode":Z
    :cond_5
    :goto_2
    return-void

    .line 2847
    .restart local v1    # "isFeatureMode":Z
    :cond_6
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4, v8}, Lcom/tudou/ui/activity/DetailActivity;->onGetNextVideoInfo(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2852
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v7, v5}, Lcom/tudou/ui/activity/DetailActivity;->onGetVideoFaved(ZZLjava/lang/String;)V

    goto :goto_1

    .line 2866
    .end local v1    # "isFeatureMode":Z
    :cond_8
    invoke-virtual {p0, v7, v8, v8}, Lcom/tudou/ui/activity/DetailActivity;->onGetNextVideoInfo(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2867
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 2868
    .local v0, "info":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz v0, :cond_5

    .line 2869
    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getTip()Ljava/lang/String;

    move-result-object v2

    .line 2870
    .local v2, "tip":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVipError()I

    move-result v3

    .line 2871
    .local v3, "vipError":I
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoInfoGetFail tip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", vipError = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    const/16 v4, -0x133

    if-eq v3, v4, :cond_9

    const/16 v4, -0x12d

    if-ne v3, v4, :cond_5

    .line 2873
    :cond_9
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/DetailActivity;->updatePlugin(I)V

    .line 2874
    iget-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    new-instance v5, Lcom/youku/player/module/PayInfo$Trial;

    invoke-direct {v5}, Lcom/youku/player/module/PayInfo$Trial;-><init>()V

    iput-object v5, v4, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    .line 2875
    iget-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string v5, "cannot"

    iput-object v5, v4, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    .line 2876
    iget-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iput v3, v4, Lcom/youku/player/module/PayInfo;->show_paid:I

    .line 2877
    iget-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iput-object v2, v4, Lcom/youku/player/module/PayInfo;->showname:Ljava/lang/String;

    .line 2878
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto :goto_2
.end method

.method public onVideoInfogetting()V
    .locals 2

    .prologue
    .line 2824
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoInfogetting"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setOnPlayNoRightVideo(Z)V

    .line 2826
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->clearNext()V

    .line 2827
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearNext()V

    .line 2828
    return-void
.end method

.method public onkeyback()V
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onBackPressed()V

    .line 835
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->showFloatIcon()V

    .line 836
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->finish()V

    .line 837
    return-void
.end method

.method public playLocalVideoNext(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "videoid"    # Ljava/lang/String;
    .param p2, "auto"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1637
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    .line 1638
    .local v1, "download":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {v1, p1}, Lcom/tudou/service/download/DownloadManager;->getNextDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 1639
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    if-nez v2, :cond_1

    .line 1640
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v4, :cond_0

    const-string v4, "local"

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->goSmall()V

    .line 1642
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    .line 1644
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 1668
    :goto_0
    return-void

    .line 1646
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 1652
    :cond_1
    iget-object v4, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iput-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1653
    iget-object v4, v2, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    iput-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    .line 1654
    iget-object v3, v2, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 1657
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v4, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v4, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v4, :cond_3

    const-string v4, "/youku.m3u8"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1660
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1661
    if-eqz p2, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1662
    iget-boolean v4, v2, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1663
    iget v4, v2, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1664
    iget v4, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1665
    iget v4, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1667
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0

    .line 1659
    :cond_3
    const-string v4, "/1.3gp"

    goto :goto_1

    :cond_4
    move v4, v5

    .line 1661
    goto :goto_2
.end method

.method public playNoRightVideo(Ljava/lang/String;)V
    .locals 30
    .param p1, "mUri"    # Ljava/lang/String;

    .prologue
    .line 1058
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 1061
    :cond_0
    sget-object v25, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "playNoRightVideo mUri = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1063
    :cond_1
    const/16 v25, 0x1

    sput v25, Lcom/youku/player/goplay/Profile;->from:I

    .line 1274
    :cond_2
    :goto_0
    return-void

    .line 1066
    :cond_3
    const-string/jumbo v25, "tudou://"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1067
    const-string/jumbo v25, "tudou://"

    const-string v26, "http://"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1072
    const-string v25, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 1073
    .local v16, "queryPosition":I
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v25, v0

    new-instance v26, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct/range {v26 .. v26}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v25 .. v26}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 1077
    add-int/lit8 v25, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1078
    .local v14, "params":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_21

    .line 1079
    aget-object v25, v14, v9

    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1080
    .local v13, "param":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v13, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "jsonplayurl"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 1082
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    const/16 v25, 0x1

    aget-object v25, v13, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v7, "flvhdObject":Lorg/json/JSONObject;
    const-string v25, "flvhd"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 1085
    .local v21, "segsArray":Lorg/json/JSONArray;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v24, "vSegFlvhd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/ItemSeg;>;"
    const/4 v4, 0x0

    .line 1087
    .local v4, "duration":I
    if-eqz v21, :cond_6

    .line 1088
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_6

    .line 1089
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 1091
    .local v20, "segObject":Lorg/json/JSONObject;
    if-eqz v20, :cond_4

    .line 1092
    new-instance v25, Lcom/youku/player/goplay/ItemSeg;

    const-string v26, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const-string/jumbo v28, "seconds"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "url"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v25 .. v29}, Lcom/youku/player/goplay/ItemSeg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    const-string/jumbo v25, "seconds"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v25

    add-int v4, v4, v25

    .line 1088
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1069
    .end local v4    # "duration":I
    .end local v7    # "flvhdObject":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v13    # "param":[Ljava/lang/String;
    .end local v14    # "params":[Ljava/lang/String;
    .end local v16    # "queryPosition":I
    .end local v20    # "segObject":Lorg/json/JSONObject;
    .end local v21    # "segsArray":Lorg/json/JSONArray;
    .end local v24    # "vSegFlvhd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/ItemSeg;>;"
    :cond_5
    const/16 v25, 0x1

    sput v25, Lcom/youku/player/goplay/Profile;->from:I

    goto/16 :goto_0

    .line 1100
    .restart local v4    # "duration":I
    .restart local v7    # "flvhdObject":Lorg/json/JSONObject;
    .restart local v9    # "i":I
    .restart local v13    # "param":[Ljava/lang/String;
    .restart local v14    # "params":[Ljava/lang/String;
    .restart local v16    # "queryPosition":I
    .restart local v21    # "segsArray":Lorg/json/JSONArray;
    .restart local v24    # "vSegFlvhd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/ItemSeg;>;"
    :cond_6
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1101
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v25, "#PLSEXTM3U\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v25, "#EXT-X-TARGETDURATION:"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1104
    const-string v25, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const-string v25, "#EXT-X-DISCONTINUITY\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v25, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_8

    .line 1108
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_7

    .line 1109
    const-string v25, "#EXTINF:"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/youku/player/goplay/ItemSeg;

    invoke-virtual/range {v25 .. v25}, Lcom/youku/player/goplay/ItemSeg;->get_Seconds()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1112
    const-string v25, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/youku/player/goplay/ItemSeg;

    invoke-virtual/range {v25 .. v25}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string v25, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1116
    :cond_7
    const-string v25, "#EXT-X-ENDLIST\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1123
    .end local v4    # "duration":I
    .end local v7    # "flvhdObject":Lorg/json/JSONObject;
    .end local v12    # "k":I
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "segsArray":Lorg/json/JSONArray;
    .end local v24    # "vSegFlvhd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/ItemSeg;>;"
    :cond_8
    :goto_4
    const/16 v25, 0x0

    aget-object v25, v13, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vid"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v26, v13, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 1126
    :cond_9
    const/16 v25, 0x0

    aget-object v25, v13, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "title"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1128
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v26, v13, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "UTF-8"

    invoke-static/range {v26 .. v27}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1078
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1130
    :catch_0
    move-exception v5

    .line 1131
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 1140
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "i":I
    .end local v13    # "param":[Ljava/lang/String;
    .end local v14    # "params":[Ljava/lang/String;
    :cond_b
    const/16 v23, 0x0

    .line 1141
    .local v23, "tidString":Ljava/lang/String;
    const-string v25, "itemcode"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .local v17, "result":I
    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_17

    .line 1143
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .local v6, "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_16

    .line 1144
    const-string v25, "itemcode"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1151
    .local v10, "itemcode":Ljava/lang/String;
    :goto_6
    move-object/from16 v23, v10

    .line 1152
    sget-object v25, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 1153
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 1167
    .end local v6    # "end":I
    .end local v10    # "itemcode":Ljava/lang/String;
    :cond_c
    :goto_7
    const-string v25, "playlistCode"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 1169
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_19

    .line 1170
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 1177
    .end local v6    # "end":I
    :cond_d
    :goto_8
    const-string v25, "playlistcode"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 1179
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_1a

    .line 1180
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 1187
    .end local v6    # "end":I
    :cond_e
    :goto_9
    const-string/jumbo v25, "st"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 1188
    const/16 v18, 0x0

    .line 1190
    .local v18, "sPoint":Ljava/lang/String;
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_1b

    .line 1191
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1198
    :goto_a
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/ui/activity/DetailActivity;->point:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1203
    .end local v6    # "end":I
    .end local v18    # "sPoint":Ljava/lang/String;
    :cond_f
    :goto_b
    const-string v25, "Fullscreen"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 1204
    const/16 v18, 0x0

    .line 1206
    .restart local v18    # "sPoint":Ljava/lang/String;
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_1c

    .line 1207
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1214
    :goto_c
    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1215
    .local v8, "fullscreen":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v8, v0, :cond_10

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->goFullScreen()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1222
    .end local v6    # "end":I
    .end local v8    # "fullscreen":I
    .end local v18    # "sPoint":Ljava/lang/String;
    :cond_10
    :goto_d
    const-string v25, "language"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 1224
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_1d

    .line 1225
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->mLanguage:Ljava/lang/String;

    .line 1232
    .end local v6    # "end":I
    :cond_11
    :goto_e
    const-string v25, "quality"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 1233
    const/16 v22, 0x0

    .line 1235
    .local v22, "squality":Ljava/lang/String;
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_1e

    .line 1236
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1243
    :goto_f
    :try_start_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1244
    .local v15, "quality":I
    const/16 v25, 0x1

    sput v25, Lcom/tudou/android/Youku;->video_quality:I

    .line 1245
    if-eqz v15, :cond_12

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_1f

    .line 1246
    :cond_12
    const/16 v25, 0x2

    sput v25, Lcom/tudou/android/Youku;->video_quality:I

    .line 1250
    :cond_13
    :goto_10
    sget v25, Lcom/tudou/android/Youku;->video_quality:I

    invoke-static/range {v25 .. v25}, Lcom/youku/player/goplay/Profile;->setVideoQuality(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1255
    .end local v6    # "end":I
    .end local v15    # "quality":I
    .end local v22    # "squality":Ljava/lang/String;
    :cond_14
    :goto_11
    const-string v25, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    .line 1257
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_20

    .line 1258
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->action:Ljava/lang/String;

    .line 1265
    .end local v6    # "end":I
    :cond_15
    :goto_12
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->resetFirstPlay()V

    .line 1267
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->goPlayVideo()V

    .line 1268
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocalVideo:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getDetailLayoutData()V

    goto/16 :goto_0

    .line 1147
    .restart local v6    # "end":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1148
    const-string v25, "itemcode"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "itemcode":Ljava/lang/String;
    goto/16 :goto_6

    .line 1154
    .end local v6    # "end":I
    .end local v10    # "itemcode":Ljava/lang/String;
    :cond_17
    const-string v25, "albumid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 1156
    const-string v25, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "end":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_18

    .line 1157
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, "albumid":Ljava/lang/String;
    :goto_13
    move-object/from16 v23, v3

    .line 1164
    sget-object v25, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->type:Lcom/tudou/android/Youku$Type;

    .line 1165
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    goto/16 :goto_7

    .line 1159
    .end local v3    # "albumid":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1160
    const-string v25, "albumid"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "albumid":Ljava/lang/String;
    goto :goto_13

    .line 1172
    .end local v3    # "albumid":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1173
    const-string v25, "playlistCode"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    goto/16 :goto_8

    .line 1182
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1183
    const-string v25, "playlistcode"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    goto/16 :goto_9

    .line 1193
    .restart local v18    # "sPoint":Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1194
    const-string/jumbo v25, "st"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_a

    .line 1209
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1210
    const-string v25, "Fullscreen"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    .line 1227
    .end local v18    # "sPoint":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1228
    const-string v25, "language"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->mLanguage:Ljava/lang/String;

    goto/16 :goto_e

    .line 1238
    .restart local v22    # "squality":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1239
    const-string v25, "quality"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_f

    .line 1247
    .restart local v15    # "quality":I
    :cond_1f
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v15, v0, :cond_13

    .line 1248
    const/16 v25, 0x1

    :try_start_6
    sput v25, Lcom/tudou/android/Youku;->video_quality:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_10

    .line 1251
    .end local v15    # "quality":I
    :catch_1
    move-exception v25

    goto/16 :goto_11

    .line 1260
    .end local v22    # "squality":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1261
    const-string v25, "action"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/activity/DetailActivity;->action:Ljava/lang/String;

    goto/16 :goto_12

    .line 1273
    .end local v6    # "end":I
    .end local v17    # "result":I
    .end local v23    # "tidString":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "params":[Ljava/lang/String;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/youku/player/apiservice/IPlayerUiControl;->onParseNoRightVideoSuccess()V

    goto/16 :goto_0

    .line 1218
    .end local v9    # "i":I
    .end local v14    # "params":[Ljava/lang/String;
    .restart local v6    # "end":I
    .restart local v17    # "result":I
    .restart local v18    # "sPoint":Ljava/lang/String;
    .restart local v23    # "tidString":Ljava/lang/String;
    :catch_2
    move-exception v25

    goto/16 :goto_d

    .line 1199
    :catch_3
    move-exception v25

    goto/16 :goto_b

    .line 1120
    .end local v6    # "end":I
    .end local v17    # "result":I
    .end local v18    # "sPoint":Ljava/lang/String;
    .end local v23    # "tidString":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v13    # "param":[Ljava/lang/String;
    .restart local v14    # "params":[Ljava/lang/String;
    :catch_4
    move-exception v25

    goto/16 :goto_4

    .line 1119
    :catch_5
    move-exception v25

    goto/16 :goto_4
.end method

.method public playOnErrorState()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3713
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3714
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3718
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 3720
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 3751
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 3754
    :cond_0
    return-void

    .line 3722
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3731
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 3733
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0

    .line 3742
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_2
    :try_start_0
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 3744
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3745
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playScreenShotSound()V
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mScreenshotMusic:I

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailActivity;->playSound(I)V

    .line 368
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "music"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 361
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 364
    :cond_0
    return-void
.end method

.method public putResultData(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->resultIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->resultIntent:Landroid/content/Intent;

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2261
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 3691
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3692
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 3694
    :cond_0
    return-void
.end method

.method public releasePlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releasePlayer"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setIUserInfo(Lcom/youku/player/apiservice/IUserInfo;)V

    .line 641
    invoke-static {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setIVideoHistoryInfo(Lcom/youku/player/apiservice/IVideoHistoryInfo;)V

    .line 642
    invoke-static {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setILanguageCode(Lcom/youku/player/apiservice/ILanguageCode;)V

    .line 643
    invoke-static {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setICacheInfo(Lcom/youku/player/apiservice/ICacheInfo;)V

    .line 644
    sput-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

    .line 645
    return-void
.end method

.method public replayWhenStateChange(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 1996
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replayWhenStateChange force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    .line 1998
    .local v1, "tUser":Lcom/youku/vo/UserBean;
    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->canSkipAd()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, v1, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1999
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    .line 2000
    .local v0, "newpoint":I
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    .line 2001
    iput v0, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    .line 2002
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->clear()V

    .line 2003
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 2004
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->goPlayVideo()V

    .line 2006
    .end local v0    # "newpoint":I
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailActivity;->updateSub()V

    .line 2007
    iget-boolean v2, v1, Lcom/youku/vo/UserBean;->isVip:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2008
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onPayinfoShowLoginChange()V

    .line 2009
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->onPayinfoShowLoginChange()V

    .line 2011
    :cond_3
    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/tudou/ui/activity/DetailActivity;->onLoginStatusChange(ZLcom/youku/vo/UserBean;)V

    .line 2012
    return-void
.end method

.method public seekTo(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "play"    # Z

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 3698
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 3699
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 3700
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsError:Z

    if-eqz v0, :cond_1

    .line 3701
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->playOnErrorState()V

    .line 3708
    :cond_0
    :goto_0
    return-void

    .line 3703
    :cond_1
    if-eqz p2, :cond_0

    .line 3704
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto :goto_0
.end method

.method public setDown()V
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onDown()V

    .line 2214
    :cond_0
    return-void
.end method

.method public setEnable3GPLAY(Z)V
    .locals 9
    .param p1, "flag"    # Z

    .prologue
    const v8, 0x7f0c0c0f

    const v7, 0x7f0c0bf7

    const v6, 0x7f0c0b90

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1972
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnable3GPLAY flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1973
    const-string v1, "allowONline3G"

    invoke-static {v1, v4}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1974
    iput-boolean p1, p0, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    .line 1975
    const-string v1, "allowONline3G"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1977
    :cond_0
    if-eqz p1, :cond_2

    .line 1978
    invoke-virtual {p0, v8}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1979
    invoke-virtual {p0, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1981
    .local v0, "vertical3GLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1982
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1992
    :cond_1
    :goto_0
    return-void

    .line 1985
    .end local v0    # "vertical3GLayout":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1986
    invoke-virtual {p0, v6}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1988
    .restart local v0    # "vertical3GLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1989
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLoadOnVideoChanged()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3181
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLoadOnVideoChanged"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    iput-boolean v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mOnVideoChangeNeedsLoad:Z

    .line 3183
    return v2
.end method

.method public setPadHorizontalLayout()V
    .locals 0

    .prologue
    .line 2561
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 4
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 3089
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedOrientation requestedOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    const-string v0, "plugin.fullscreen.screenshot"

    const-wide/16 v2, 0x320

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3091
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRequestedOrientation plugin.fullscreen.screenshot 800 return"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    :goto_0
    return-void

    .line 3094
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNoRight:Z

    if-eqz v0, :cond_1

    .line 3095
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRequestedOrientation mPluginSmall.mIsNoRight return"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3098
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isScreenshotShow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVideoRecordShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3099
    :cond_2
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedOrientation mPluginFullscreen.isScreenshotShow() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isScreenshotShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPluginFullscreen.isVideoRecordShow() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVideoRecordShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3102
    :cond_3
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsVideoRecordUpdating:Z

    if-eqz v0, :cond_4

    .line 3103
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRequestedOrientation mIsVideoRecordUpdating return"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3106
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 3107
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRequestedOrientation tUpdateView return"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3114
    :cond_5
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public showFirstScreenshotCling(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 3782
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showFirstScreenshotCling"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    const-string v1, "detail.cling.screenshot.show"

    invoke-static {p0, v1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3784
    const v1, 0x7f0c0b8c

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->initCling(II)Lcom/tudou/detail/widget/Cling;

    move-result-object v0

    .line 3785
    .local v0, "cling":Lcom/tudou/detail/widget/Cling;
    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/activity/DetailActivity$23;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/Cling;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3793
    const-string v1, "detail.cling.screenshot.show"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 3795
    .end local v0    # "cling":Lcom/tudou/detail/widget/Cling;
    :cond_0
    return-void
.end method

.method public showFirstUPlusCling(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "enterRun"    # Ljava/lang/Runnable;
    .param p2, "cancleRun"    # Ljava/lang/Runnable;

    .prologue
    .line 3760
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showfirstupluscling"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    const-string v1, "detail.cling.u.plus.show"

    invoke-static {p0, v1}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3762
    const v1, 0x7f0c0bce

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->initCling(II)Lcom/tudou/detail/widget/Cling;

    move-result-object v0

    .line 3763
    .local v0, "cling":Lcom/tudou/detail/widget/Cling;
    const v1, 0x7f0c0bdc

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mUPlusClingCancle:Landroid/view/View;

    .line 3764
    const v1, 0x7f0c0bdd

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mUPlusClingEnter:Landroid/view/View;

    .line 3765
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mUPlusClingEnter:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/activity/DetailActivity$21;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/activity/DetailActivity$21;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3771
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mUPlusClingCancle:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/activity/DetailActivity$22;

    invoke-direct {v2, p0, p2}, Lcom/tudou/ui/activity/DetailActivity$22;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3777
    const-string v1, "detail.cling.u.plus.show"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 3779
    .end local v0    # "cling":Lcom/tudou/detail/widget/Cling;
    :cond_0
    return-void
.end method

.method public showFloatIcon()V
    .locals 4

    .prologue
    .line 840
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    .line 841
    .local v1, "chatManager":Lcom/tudou/android/chat/ChatManager;
    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    .line 843
    .local v2, "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    new-instance v0, Lcom/youku/vo/ChatDialogInfo;

    invoke-direct {v0}, Lcom/youku/vo/ChatDialogInfo;-><init>()V

    .line 844
    .local v0, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v2, :cond_0

    .line 845
    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    .line 846
    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    .line 847
    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    .line 848
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Lcom/youku/vo/ChatDialogInfo;)V

    .line 851
    .end local v0    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    .end local v2    # "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_0
    return-void
.end method

.method public showImgFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "img"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/Runnable;
    .param p4, "deleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 3444
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 3445
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-direct {v2}, Lcom/tudou/detail/fragment/ImagePreviewFragment;-><init>()V

    iput-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .line 3446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3447
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "bundle.image.path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    const-string v2, "bundle.image.type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    new-instance v3, Lcom/tudou/ui/activity/DetailActivity$17;

    invoke-direct {v3, p0, p3}, Lcom/tudou/ui/activity/DetailActivity$17;-><init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 3458
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v2, p4}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->setOnDeleteListener(Ljava/lang/Runnable;)V

    .line 3459
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v2, v0}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3460
    const v2, 0x7f0c0107

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity;->mImagePreview:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 3461
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 3125
    if-eqz p1, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3127
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mErrorView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 3128
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->setVisibility(I)V

    .line 3139
    :goto_0
    return-void

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3131
    if-eqz p2, :cond_1

    .line 3132
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mErrorView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 3133
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->setVisibility(I)V

    goto :goto_0

    .line 3135
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mErrorView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 3136
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/DetailContentPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public startBinding(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3143
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBinding clear = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3145
    .local v0, "begin":J
    iput-boolean v7, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsFetchingData:Z

    .line 3147
    iput-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mVotes:Ljava/util/ArrayList;

    .line 3148
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mOnVideoChangeNeedsLoad:Z

    .line 3149
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mSliderPointNeedChecked:Z

    .line 3150
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mNeedUpdateAttention:Z

    .line 3152
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mNextVideoGetted:Z

    .line 3153
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideo:Z

    .line 3154
    iput-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mAtteBackVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 3156
    if-eqz p1, :cond_2

    .line 3157
    invoke-virtual {p0, v7, v5}, Lcom/tudou/ui/activity/DetailActivity;->showLoading(ZZ)V

    .line 3158
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mContentPanel:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/DetailContentPanel;->removeAllViews()V

    .line 3159
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_0

    .line 3160
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearVideoList()V

    .line 3161
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearHdInfos()V

    .line 3163
    :cond_0
    iput-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 3164
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mHasVideoList:Z

    .line 3165
    iput-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 3166
    iput-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 3167
    iput-object v6, p0, Lcom/tudou/ui/activity/DetailActivity;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    .line 3168
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithFeature:Z

    .line 3169
    iput-boolean v5, p0, Lcom/tudou/ui/activity/DetailActivity;->mIsNeedUpdateNextVideoWithRecommend:Z

    .line 3175
    :cond_1
    :goto_0
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBinding takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mToBeCheck:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3177
    return-void

    .line 3171
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_1

    .line 3172
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearHdInfos()V

    goto :goto_0
.end method

.method public userStartPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1672
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    iget v1, p0, Lcom/tudou/ui/activity/DetailActivity;->point:I

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1674
    invoke-virtual {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1675
    iget v1, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    if-lez v1, :cond_0

    .line 1676
    iget v1, p0, Lcom/tudou/ui/activity/DetailActivity;->videoStage:I

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setVideoStage(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 1678
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/base/YoukuPlayer;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1679
    return-void
.end method
