.class public Lcom/youku/player/module/VideoUrlInfo;
.super Ljava/lang/Object;
.source "VideoUrlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/module/VideoUrlInfo$Source;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/player/module/VideoUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static TUDOU_TYPE:I = 0x0

.field public static YOUKU_TYPE:I = 0x0

.field public static final _119_MINS_MILLI_SECONDS:J = 0x6cf2a0L

.field public static final _1_MIN_MILLI_SECONDS:J = 0xea60L

.field public static final _2_HOURS_MILLI_SECONDS:J = 0x6ddd00L


# instance fields
.field public IsSendVV:Z

.field private adPointArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field public albumID:Ljava/lang/String;

.field private albumVideoCount:I

.field public bps:Ljava/lang/String;

.field public cachePath:Ljava/lang/String;

.field private cached:I

.field public channel:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private channel_name:Ljava/lang/String;

.field private chinaUnicomManager:Lcom/youku/player/unicom/ChinaUnicomManager;

.field private cid:I

.field private code:I

.field private copyright:Ljava/lang/String;

.field private drmType:Ljava/lang/String;

.field private duration:I

.field private episodemode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private exclusive_logo:Z

.field public fieldId:Ljava/lang/String;

.field private hasHead:Z

.field private hasTail:Z

.field private haveNext:I

.field private headPosition:I

.field private http4xxError:Z

.field private httpResponseCode:I

.field private id:Ljava/lang/String;

.field private ikuConnected:Z

.field private img:Ljava/lang/String;

.field private interact:Z

.field private isAlbum:Z

.field private isAttention:Z

.field private isCached:Z

.field public isEncyptError:Z

.field public isExternalVideo:Z

.field public isFaved:Z

.field private isFeeVideo:Z

.field private isFeeView:Z

.field public isFirstLoaded:Z

.field public isHLS:Z

.field public isLocalWaterMark:Z

.field private isMusic:I

.field private isReplay:Z

.field public isSendVVEnd:Z

.field private isSeries:Z

.field private isTrailer:Z

.field private isVerticalVideo:Z

.field public isWaterMark:[I

.field private itemPlayTimes:J

.field private itemShortDesc:Ljava/lang/String;

.field private item_img_16_9:Ljava/lang/String;

.field private item_subtitle:Ljava/lang/String;

.field private languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Language;",
            ">;"
        }
    .end annotation
.end field

.field private licenseNum:Ljava/lang/String;

.field private limit:I

.field private look_ten:I

.field public m3u8HD:Ljava/lang/String;

.field public m3u8HD2:Ljava/lang/String;

.field private m3u8HD2Duration:I

.field private m3u8HDDuration:I

.field public m3u8SD:Ljava/lang/String;

.field private m3u8SDDuration:I

.field private mAlbumTitle:Ljava/lang/String;

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVideoQuality:I

.field private mItemDesc:Ljava/lang/String;

.field public mLiveInfo:Lcom/youku/player/module/LiveInfo;

.field private mMediaType:Ljava/lang/String;

.field public mPayInfo:Lcom/youku/player/module/PayInfo;

.field public mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

.field private mStreamMilliseconds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTip:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field public mVideoFetchTime:J

.field private mVipError:I

.field private marlinToken:Ljava/lang/String;

.field private nativePlay:Z

.field public need_mark:Z

.field private netStatus:Ljava/lang/String;

.field public nextVideoId:Ljava/lang/String;

.field public nextVideoTitle:Ljava/lang/String;

.field public offset:Ljava/lang/String;

.field public oip:Ljava/lang/String;

.field private p2pManager:Lcom/youku/player/p2p/P2pManager;

.field public paid:Z

.field public paidSended:Z

.field public password:Ljava/lang/String;

.field private paystate:Ljava/lang/String;

.field private piddecode:Ljava/lang/String;

.field public playType:Ljava/lang/String;

.field public playlistCode:Ljava/lang/String;

.field public playlistId:Ljava/lang/String;

.field private playlistchannelid:Ljava/lang/String;

.field private pointArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field private progress:I

.field private registerNum:Ljava/lang/String;

.field public reputation:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private retryTimes:I

.field public savePath:Ljava/lang/String;

.field private schannelid:Ljava/lang/String;

.field public serialTitle:Ljava/lang/String;

.field private showId:Ljava/lang/String;

.field private show_videoseq:I

.field public show_videostage_title:Ljava/lang/String;

.field private showchannelid:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field private siddecode:Ljava/lang/String;

.field private splaylistchannelid:Ljava/lang/String;

.field private sshowchannelid:Ljava/lang/String;

.field private tailPosition:I

.field private title_new_dl:Ljava/lang/String;

.field private title_new_dl_sub:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field private trailers:Ljava/lang/String;

.field private type:I

.field private uid:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private vSeg:Lcom/youku/player/goplay/ItemSegs;

.field private vSegFlv:Lcom/youku/player/goplay/ItemSegs;

.field private vSegHd2:Lcom/youku/player/goplay/ItemSegs;

.field private vSegHd3:Lcom/youku/player/goplay/ItemSegs;

.field private vSegMp4:Lcom/youku/player/goplay/ItemSegs;

.field private viddecode:Ljava/lang/String;

.field public videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field private videoId:Ljava/lang/String;

.field public videoIdPlay:Ljava/lang/String;

.field private videoLanguage:Ljava/lang/String;

.field private videoStage:I

.field private videoType:I

.field public vitural_type:Ljava/lang/String;

.field private vvPlayInfo:Lcom/youku/player/module/VVPlayInfo;

.field public waterMarkType:[I

.field private webViewUrl:Ljava/lang/String;

.field private weburl:Ljava/lang/String;

.field private woVideoUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private youkuRegisterNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    .line 69
    const/4 v0, 0x2

    sput v0, Lcom/youku/player/module/VideoUrlInfo;->TUDOU_TYPE:I

    .line 1693
    new-instance v0, Lcom/youku/player/module/VideoUrlInfo$1;

    invoke-direct {v0}, Lcom/youku/player/module/VideoUrlInfo$1;-><init>()V

    sput-object v0, Lcom/youku/player/module/VideoUrlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    .line 48
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    .line 49
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    .line 50
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->woVideoUrls:Ljava/util/Map;

    .line 55
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->chinaUnicomManager:Lcom/youku/player/unicom/ChinaUnicomManager;

    .line 65
    const-string v0, "net"

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 71
    sget v0, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->type:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    .line 83
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isAlbum:Z

    .line 134
    iput v1, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videoseq:I

    .line 167
    iput v1, p0, Lcom/youku/player/module/VideoUrlInfo;->limit:I

    .line 178
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    .line 181
    sget-object v0, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->uid:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->siddecode:Ljava/lang/String;

    .line 214
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 442
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoType:I

    .line 464
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    .line 486
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->videoStage:I

    .line 509
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->ikuConnected:Z

    .line 515
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isSeries:Z

    .line 525
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->nativePlay:Z

    .line 531
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    .line 534
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 538
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 539
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 542
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    .line 545
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->paidSended:Z

    .line 556
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mStreamMilliseconds:Landroid/util/SparseArray;

    .line 1289
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    .line 1292
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    .line 1295
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    .line 1298
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    .line 1321
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    .line 1324
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    .line 1327
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    .line 1330
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->fieldId:Ljava/lang/String;

    .line 1343
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    .line 1346
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    .line 1349
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    .line 1452
    iput-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->webViewUrl:Ljava/lang/String;

    .line 1532
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    .line 1520
    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->p2pManager:Lcom/youku/player/p2p/P2pManager;

    .line 1521
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomManager;->getInstance()Lcom/youku/player/unicom/ChinaUnicomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->chinaUnicomManager:Lcom/youku/player/unicom/ChinaUnicomManager;

    .line 1522
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    .line 48
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    .line 49
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    .line 50
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->woVideoUrls:Ljava/util/Map;

    .line 55
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->chinaUnicomManager:Lcom/youku/player/unicom/ChinaUnicomManager;

    .line 65
    const-string v0, "net"

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 71
    sget v0, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->type:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    .line 83
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isAlbum:Z

    .line 134
    iput v3, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videoseq:I

    .line 167
    iput v3, p0, Lcom/youku/player/module/VideoUrlInfo;->limit:I

    .line 178
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    .line 181
    sget-object v0, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->uid:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->siddecode:Ljava/lang/String;

    .line 214
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 442
    iput v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoType:I

    .line 464
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    .line 486
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->videoStage:I

    .line 509
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->ikuConnected:Z

    .line 515
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isSeries:Z

    .line 525
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->nativePlay:Z

    .line 531
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    .line 534
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 538
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 539
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 542
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    .line 545
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->paidSended:Z

    .line 556
    new-instance v0, Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mStreamMilliseconds:Landroid/util/SparseArray;

    .line 1289
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    .line 1292
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    .line 1295
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    .line 1298
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    .line 1321
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    .line 1324
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    .line 1327
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    .line 1330
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->fieldId:Ljava/lang/String;

    .line 1343
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    .line 1346
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    .line 1349
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    .line 1452
    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->webViewUrl:Ljava/lang/String;

    .line 1532
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    .line 1552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videoseq:I

    .line 1553
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    .line 1554
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->id:Ljava/lang/String;

    .line 1555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    .line 1556
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    .line 1557
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    .line 1558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->progress:I

    .line 1559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->retryTimes:I

    .line 1560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->code:I

    .line 1561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    .line 1562
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 1563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->weburl:Ljava/lang/String;

    .line 1564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->duration:I

    .line 1565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    .line 1566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->netStatus:Ljava/lang/String;

    .line 1567
    const-class v0, Lcom/youku/player/goplay/Language;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    .line 1568
    const-class v0, Lcom/youku/player/goplay/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    .line 1569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->httpResponseCode:I

    .line 1570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 1571
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    .line 1573
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    .line 1574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    .line 1575
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    .line 1576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    .line 1577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    .line 1578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    .line 1579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->reputation:Ljava/lang/String;

    .line 1580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    .line 1581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->serialTitle:Ljava/lang/String;

    .line 1582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 1584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 1585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    .line 1586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    .line 1587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->haveNext:I

    .line 1588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    .line 1589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    .line 1590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    .line 1591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    .line 1592
    const-class v0, Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 1594
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    .line 1595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    .line 1596
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    .line 1597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cid:I

    .line 1598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videostage_title:Ljava/lang/String;

    .line 1599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    .line 1600
    return-void

    :cond_0
    move v0, v2

    .line 1571
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1588
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1589
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1595
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1599
    goto :goto_4
.end method

.method private addAdvToCachePath()V
    .locals 7

    .prologue
    .line 942
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 943
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    const-string v6, "#EXTINF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "cacheInfo":Ljava/lang/String;
    const-string v4, "#PLSEXTM3U\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 948
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    iget-object v4, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 950
    const-string v4, "#EXTINF:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " PRE_AD\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    iget-object v4, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 953
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAdvToCachePath cache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 956
    return-void
.end method

.method private getM3u8Url()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 728
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 729
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-ne v0, v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8SD()Ljava/lang/String;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0

    .line 731
    :cond_0
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-ne v0, v2, :cond_2

    .line 732
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8HD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    iput v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 736
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8SD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_2
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-nez v0, :cond_5

    .line 739
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 740
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8HD2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 742
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 743
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8HD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_4
    iput v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 746
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8SD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_5
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8SD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUrlForExternalVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isUseCachePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 760
    :goto_0
    return-object v0

    .line 757
    :cond_0
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->makeM3u8ForExternalVideo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeM3u8()Ljava/lang/String;
    .locals 17

    .prologue
    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->setPlaySegByQuality()V

    .line 858
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 859
    .local v16, "str":Ljava/lang/StringBuffer;
    const-string v1, "#PLSEXTM3U\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 866
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/player/goplay/AdvInfo;

    .line 870
    .local v9, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    iget-object v1, v9, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    iget-object v2, v9, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 872
    :cond_1
    const-string v1, "#EXTINF:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, v9, Lcom/youku/player/goplay/AdvInfo;->AL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " PRE_AD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    invoke-static {v9}, Lcom/youku/player/util/AdUtil;->isTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 874
    const-string v1, " 0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    :cond_2
    const-string v1, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    iget-object v1, v9, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 878
    .end local v9    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    .end local v12    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v1}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 879
    :cond_4
    const-string v1, ""

    .line 919
    :goto_2
    return-object v1

    .line 881
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->p2pManager:Lcom/youku/player/p2p/P2pManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/p2p/P2pManager;->checkPlayP2P(Ljava/lang/String;)Z

    move-result v14

    .line 882
    .local v14, "playP2P":Z
    const-string v15, ""

    .line 883
    .local v15, "port":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->p2pManager:Lcom/youku/player/p2p/P2pManager;

    invoke-virtual {v1}, Lcom/youku/player/p2p/P2pManager;->getAccPort()Ljava/lang/String;

    move-result-object v15

    .line 885
    :cond_6
    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->checkChinaUnicom3GWapNet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isSatisfyChinaUnicomFreeFlow()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v10, 0x1

    .line 887
    .local v10, "chinaUnicomFree":Z
    :goto_3
    if-eqz v10, :cond_7

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->chinaUnicomManager:Lcom/youku/player/unicom/ChinaUnicomManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v3}, Lcom/youku/player/goplay/ItemSegs;->getSegs()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->woVideoUrls:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/youku/player/unicom/ChinaUnicomManager;->getWoVideoUrls(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v1}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v1

    if-ge v12, v1, :cond_d

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v1, v12}, Lcom/youku/player/goplay/ItemSegs;->get(I)Lcom/youku/player/goplay/ItemSeg;

    move-result-object v13

    .line 892
    .local v13, "item":Lcom/youku/player/goplay/ItemSeg;
    const-string v1, "#EXTINF:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v13}, Lcom/youku/player/goplay/ItemSeg;->get_Seconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 893
    if-nez v12, :cond_8

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_c

    .line 895
    const-string v1, " START_TIME "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 900
    :cond_8
    :goto_5
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v13}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/youku/player/goplay/ItemSeg;->getFieldId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v8, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 903
    .local v11, "finalUrl":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ua=mp&st=vod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 908
    :cond_9
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->woVideoUrls:Ljava/util/Map;

    invoke-virtual {v13}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->woVideoUrls:Ljava/util/Map;

    invoke-virtual {v13}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "finalUrl":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 915
    .restart local v11    # "finalUrl":Ljava/lang/String;
    :cond_a
    const-string v1, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 885
    .end local v10    # "chinaUnicomFree":Z
    .end local v11    # "finalUrl":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "item":Lcom/youku/player/goplay/ItemSeg;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 896
    .restart local v10    # "chinaUnicomFree":Z
    .restart local v12    # "i":I
    .restart local v13    # "item":Lcom/youku/player/goplay/ItemSeg;
    :cond_c
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v1

    if-lez v1, :cond_8

    .line 897
    const-string v1, " START_TIME "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 917
    .end local v13    # "item":Lcom/youku/player/goplay/ItemSeg;
    :cond_d
    const-string v1, "#EXT-X-ENDLIST\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u6784\u5efam3u8\u5217\u8868"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private makeM3u8ForExternalVideo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 784
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 785
    const/4 v1, 0x0

    .line 797
    :goto_0
    return-object v1

    .line 787
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 789
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "#PLSEXTM3U\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const-string v1, "#EXTINF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    const-string v1, "#EXT-X-ENDLIST\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u6784\u5efam3u8\u5217\u8868"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeFirstAdvFromVAL()V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-nez v0, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setPlaySegByQuality()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 808
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 809
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-ne v0, v2, :cond_1

    .line 810
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-ne v0, v3, :cond_3

    .line 812
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    goto :goto_0

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 816
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    goto :goto_0

    .line 818
    :cond_3
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-nez v0, :cond_6

    .line 819
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 820
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    goto :goto_0

    .line 821
    :cond_4
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 823
    iput v3, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    goto :goto_0

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 826
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    goto :goto_0

    .line 828
    :cond_6
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 830
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    goto :goto_0

    .line 831
    :cond_7
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 832
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    goto :goto_0

    .line 834
    :cond_8
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 835
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 836
    iput v3, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    goto/16 :goto_0

    .line 838
    :cond_9
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 839
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    goto/16 :goto_0
.end method


# virtual methods
.method public addAdvToCachePathIfNecessary()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 928
    iget-boolean v1, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    if-nez v1, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v0

    .line 932
    :cond_1
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->addAdvToCachePath()V

    .line 938
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addSegments(Ljava/util/List;IZ)V
    .locals 1
    .param p2, "format"    # I
    .param p3, "h265"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    const/4 v0, 0x5

    if-ne v0, p2, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    if-nez v0, :cond_0

    .line 1219
    new-instance v0, Lcom/youku/player/goplay/ItemSegs;

    invoke-direct {v0}, Lcom/youku/player/goplay/ItemSegs;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0, p1, p3}, Lcom/youku/player/goplay/ItemSegs;->setSegs(Ljava/util/List;Z)V

    .line 1238
    :cond_1
    :goto_0
    return-void

    .line 1222
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_4

    .line 1223
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    if-nez v0, :cond_3

    .line 1224
    new-instance v0, Lcom/youku/player/goplay/ItemSegs;

    invoke-direct {v0}, Lcom/youku/player/goplay/ItemSegs;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    .line 1226
    :cond_3
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0, p1, p3}, Lcom/youku/player/goplay/ItemSegs;->setSegs(Ljava/util/List;Z)V

    goto :goto_0

    .line 1227
    :cond_4
    const/4 v0, 0x7

    if-ne v0, p2, :cond_6

    .line 1228
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    if-nez v0, :cond_5

    .line 1229
    new-instance v0, Lcom/youku/player/goplay/ItemSegs;

    invoke-direct {v0}, Lcom/youku/player/goplay/ItemSegs;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    .line 1231
    :cond_5
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0, p1, p3}, Lcom/youku/player/goplay/ItemSegs;->setSegs(Ljava/util/List;Z)V

    goto :goto_0

    .line 1232
    :cond_6
    const/16 v0, 0x8

    if-ne v0, p2, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    if-nez v0, :cond_7

    .line 1234
    new-instance v0, Lcom/youku/player/goplay/ItemSegs;

    invoke-direct {v0}, Lcom/youku/player/goplay/ItemSegs;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    .line 1236
    :cond_7
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0, p1, p3}, Lcom/youku/player/goplay/ItemSegs;->setSegs(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public addStreamMilliseconds(II)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mStreamMilliseconds:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1999
    return-void
.end method

.method public canPlayP2P()Z
    .locals 1

    .prologue
    .line 850
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->useP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->p2pManager:Lcom/youku/player/p2p/P2pManager;

    invoke-virtual {v0}, Lcom/youku/player/p2p/P2pManager;->canUseAcc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1072
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 1073
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 1074
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    .line 1075
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->id:Ljava/lang/String;

    .line 1076
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    .line 1077
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    .line 1078
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    .line 1079
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->progress:I

    .line 1080
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->retryTimes:I

    .line 1081
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->code:I

    .line 1082
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    .line 1083
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->weburl:Ljava/lang/String;

    .line 1084
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->duration:I

    .line 1085
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    .line 1086
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->savePath:Ljava/lang/String;

    .line 1087
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->netStatus:Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1090
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1091
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->httpResponseCode:I

    .line 1092
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->ikuConnected:Z

    .line 1093
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    .line 1094
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    .line 1095
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    .line 1096
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 1097
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    .line 1098
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    .line 1099
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    .line 1100
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    .line 1101
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    .line 1102
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    .line 1103
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    .line 1104
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    .line 1105
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    .line 1106
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    .line 1107
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    .line 1108
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->reputation:Ljava/lang/String;

    .line 1109
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    .line 1110
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->serialTitle:Ljava/lang/String;

    .line 1111
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1112
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 1113
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 1114
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    .line 1115
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->haveNext:I

    .line 1116
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1118
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1119
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    .line 1120
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    .line 1121
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    .line 1122
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    .line 1123
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isAlbum:Z

    .line 1124
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    .line 1125
    iput-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    .line 1126
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    .line 1127
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->paidSended:Z

    .line 1128
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videostage_title:Ljava/lang/String;

    .line 1129
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    .line 1130
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mMediaType:Ljava/lang/String;

    .line 1131
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 1132
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->item_img_16_9:Ljava/lang/String;

    .line 1133
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->episodemode:Ljava/lang/String;

    .line 1134
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 1135
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    .line 1136
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    .line 1137
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    .line 1138
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->channel:Ljava/lang/String;

    .line 1139
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->uid:Ljava/lang/String;

    .line 1140
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->siddecode:Ljava/lang/String;

    .line 1141
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->interact:Z

    .line 1142
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->p2pManager:Lcom/youku/player/p2p/P2pManager;

    invoke-virtual {v0, v2}, Lcom/youku/player/p2p/P2pManager;->setUsingP2P(Z)V

    .line 1143
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->viddecode:Ljava/lang/String;

    .line 1144
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->channelId:Ljava/lang/String;

    .line 1145
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->schannelid:Ljava/lang/String;

    .line 1146
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->piddecode:Ljava/lang/String;

    .line 1147
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistchannelid:Ljava/lang/String;

    .line 1148
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->splaylistchannelid:Ljava/lang/String;

    .line 1149
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->showchannelid:Ljava/lang/String;

    .line 1150
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->sshowchannelid:Ljava/lang/String;

    .line 1151
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->paystate:Ljava/lang/String;

    .line 1152
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->copyright:Ljava/lang/String;

    .line 1153
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->trailers:Ljava/lang/String;

    .line 1154
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isReplay:Z

    .line 1155
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    .line 1156
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    .line 1157
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->drmType:Ljava/lang/String;

    .line 1158
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->marlinToken:Ljava/lang/String;

    .line 1159
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mStreamMilliseconds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1160
    iput v3, p0, Lcom/youku/player/module/VideoUrlInfo;->videoType:I

    .line 1161
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vvPlayInfo:Lcom/youku/player/module/VVPlayInfo;

    .line 1162
    iput-boolean v3, p0, Lcom/youku/player/module/VideoUrlInfo;->isFeeVideo:Z

    .line 1163
    iput-boolean v3, p0, Lcom/youku/player/module/VideoUrlInfo;->isFeeView:Z

    .line 1164
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mItemDesc:Ljava/lang/String;

    .line 1165
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mAlbumTitle:Ljava/lang/String;

    .line 1166
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->img:Ljava/lang/String;

    .line 1167
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTip:Ljava/lang/String;

    .line 1168
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mVipError:I

    .line 1169
    iput-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->itemPlayTimes:J

    .line 1170
    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->itemShortDesc:Ljava/lang/String;

    .line 1171
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo:Z

    .line 1172
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->http4xxError:Z

    .line 1173
    iput-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->exclusive_logo:Z

    .line 1174
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1515
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getAdPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumVideoCount()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->albumVideoCount:I

    return v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getAttention()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isAttention:Z

    return v0
.end method

.method public getCacheUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->channel_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 1719
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cid:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->code:I

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1708
    :cond_0
    const/4 v0, 0x0

    .line 1710
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    goto :goto_0
.end method

.method public getCurrentQuality()I
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    return v0
.end method

.method public getDrmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->drmType:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationMills()I
    .locals 1

    .prologue
    .line 1480
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->duration:I

    return v0
.end method

.method public getEpisodemode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->episodemode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHaveNext()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->haveNext:I

    return v0
.end method

.method public getHeadPosition()I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    return v0
.end method

.method public getHttpResponseCode()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->httpResponseCode:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMusic()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isMusic:I

    return v0
.end method

.method public getItemDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mItemDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPlayTimes()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/youku/player/module/VideoUrlInfo;->itemPlayTimes:J

    return-wide v0
.end method

.method public getItemShortDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->itemShortDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->item_subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_img_16_9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->item_img_16_9:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLicenseNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->licenseNum:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->limit:I

    return v0
.end method

.method public getLookTen()I
    .locals 1

    .prologue
    .line 1760
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->look_ten:I

    return v0
.end method

.method public getM3u8HD()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1373
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    sget-object v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v7, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3u8HD2()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1333
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    sget-object v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v7, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3u8HD2Duration()I
    .locals 1

    .prologue
    .line 1352
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    return v0
.end method

.method public getM3u8HDDuration()I
    .locals 1

    .prologue
    .line 1395
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    return v0
.end method

.method public getM3u8SD()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1361
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    sget-object v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v7, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3u8SDDuration()I
    .locals 1

    .prologue
    .line 1385
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    return v0
.end method

.method public getMarlinToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->marlinToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaystate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->paystate:Ljava/lang/String;

    return-object v0
.end method

.method public getPiddecode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->piddecode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1485
    const-string v0, "local"

    .line 1487
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlaylistchannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistchannelid:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1014
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->progress:I

    return v0
.end method

.method public getRegisterNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->registerNum:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->schannelid:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_videoseq()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videoseq:I

    return v0
.end method

.method public getShow_videostage_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videostage_title:Ljava/lang/String;

    return-object v0
.end method

.method public getShowchannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->showchannelid:Ljava/lang/String;

    return-object v0
.end method

.method public getSiddecode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->siddecode:Ljava/lang/String;

    return-object v0
.end method

.method public getSplaylistchannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->splaylistchannelid:Ljava/lang/String;

    return-object v0
.end method

.method public getSshowchannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->sshowchannelid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->netStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamMilliseconds(I)I
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mStreamMilliseconds:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTailPosition()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    return v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTip:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_new_dl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->title_new_dl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_new_dl_sub()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->title_new_dl_sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->trailers:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 670
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-ne v0, v2, :cond_0

    .line 671
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 724
    :goto_0
    return-object v0

    .line 674
    :cond_0
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v0, :cond_1

    .line 675
    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->getUrlForExternalVideo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 678
    :cond_1
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v0, :cond_3

    .line 679
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 680
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getCacheUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8SD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 686
    invoke-static {}, Lcom/youku/player/drm/DRMServiceManager;->getInstance()Lcom/youku/player/drm/DRMServiceManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->getM3u8Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/drm/DRMServiceManager;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :cond_4
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_6

    .line 690
    invoke-static {}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getCurrentFormat()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 691
    const-string v0, ""

    goto :goto_0

    .line 693
    :cond_5
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->channel:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    iget v6, p0, Lcom/youku/player/module/VideoUrlInfo;->retryTimes:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/youku/player/module/VideoUrlInfo;->retryTimes:I

    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v8}, Lcom/youku/player/apiservice/PlantformController;->getLiveEncyptType()Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/baseproject/utils/Util;->getHLSEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;Lcom/baseproject/utils/Util$ENCRYPT_TYPE;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->getHlsFinnalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 699
    :cond_6
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    :cond_7
    sget v0, Lcom/youku/player/goplay/Profile;->playerType:I

    sget v1, Lcom/youku/player/goplay/Profile;->PLAYER_OUR:I

    if-ne v0, v1, :cond_9

    .line 704
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 705
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getCacheUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 707
    :cond_8
    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->makeM3u8()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 710
    :cond_9
    invoke-static {}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getCurrentFormat()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 711
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 712
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v0, :cond_a

    .line 713
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    .line 714
    :cond_a
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 715
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 717
    :cond_b
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->useP2P()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 718
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    const-string v1, "3-cpu\u672a\u6ee1\u8db3\u8f6f\u89e3\u8981\u6c42"

    invoke-static {v0, v1}, Lcom/youku/player/Track;->trackP2PError(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_c
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->fieldId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    sget-object v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v7, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->getFinnalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 724
    :cond_d
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getUrl_M3U8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVVPlayInfo()Lcom/youku/player/module/VVPlayInfo;
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vvPlayInfo:Lcom/youku/player/module/VVPlayInfo;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getViddecode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->viddecode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStage()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoStage:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoType:I

    return v0
.end method

.method public getVipError()I
    .locals 1

    .prologue
    .line 2043
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mVipError:I

    return v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeburl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->weburl:Ljava/lang/String;

    return-object v0
.end method

.method public getYoukuRegisterNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->youkuRegisterNum:Ljava/lang/String;

    return-object v0
.end method

.method public getimgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getvSeg(I)Ljava/util/List;
    .locals 2
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1249
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegFlv:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->getSegs()Ljava/util/List;

    move-result-object v0

    .line 1258
    :cond_0
    :goto_0
    return-object v0

    .line 1251
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 1252
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegMp4:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->getSegs()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1253
    :cond_2
    const/4 v1, 0x7

    if-ne v1, p1, :cond_3

    .line 1254
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd2:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->getSegs()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1255
    :cond_3
    const/16 v1, 0x8

    if-ne v1, p1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSegHd3:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->getSegs()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasM3u8HD()Z
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasM3u8HD2()Z
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasM3u8HD3()Z
    .locals 1

    .prologue
    .line 1419
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasM3u8SD()Z
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSegHD()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1857
    invoke-virtual {p0, v0}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSegHD2()Z
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 1862
    invoke-virtual {p0, v1}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSegHD3()Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1867
    invoke-virtual {p0, v1}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSegSD()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1852
    invoke-virtual {p0, v1}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdvEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1680
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-nez v1, :cond_1

    .line 1687
    :cond_0
    :goto_0
    return v0

    .line 1684
    :cond_1
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1687
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlbum()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isAlbum:Z

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    return v0
.end method

.method public isContainLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 1438
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Language;

    iget-object v1, v1, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    const/4 v1, 0x1

    .line 1445
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 1439
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1445
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isDRMVideo()Z
    .locals 2

    .prologue
    .line 1991
    const-string v0, "marlin"

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->marlinToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    const/4 v0, 0x1

    .line 1994
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveLogo()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->exclusive_logo:Z

    return v0
.end method

.method public isFeeVideo()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isFeeVideo:Z

    return v0
.end method

.method public isFeeView()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isFeeView:Z

    return v0
.end method

.method public isHasHead()Z
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    return v0
.end method

.method public isHasTail()Z
    .locals 1

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    return v0
.end method

.method public isHttp4xxError()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->http4xxError:Z

    return v0
.end method

.method public isInteract()Z
    .locals 1

    .prologue
    .line 1844
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->interact:Z

    return v0
.end method

.method public isNativePlay()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->nativePlay:Z

    return v0
.end method

.method public isNeedLoadedNotify()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 771
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    iget-boolean v2, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 774
    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isUseCachePath()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 779
    goto :goto_0
.end method

.method public isReplay()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isReplay:Z

    return v0
.end method

.method public isSeries()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isSeries:Z

    return v0
.end method

.method public isTrailer()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isTrailer:Z

    return v0
.end method

.method public isUrlEmpty()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1800
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 1801
    .local v0, "playUrl":Ljava/lang/String;
    sget v3, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1802
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 1821
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1824
    :cond_1
    :goto_1
    return v1

    .line 1803
    :cond_2
    iget-boolean v3, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v3, :cond_3

    .line 1804
    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->getUrlForExternalVideo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1805
    :cond_3
    iget-boolean v3, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    if-eqz v3, :cond_4

    .line 1806
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getCacheUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1807
    :cond_4
    invoke-static {}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getCurrentFormat()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1808
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    goto :goto_0

    .line 1810
    :cond_5
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v3

    if-eq v3, v2, :cond_6

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_6

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    :cond_6
    sget v3, Lcom/youku/player/goplay/Profile;->playerType:I

    sget v4, Lcom/youku/player/goplay/Profile;->PLAYER_OUR:I

    if-ne v3, v4, :cond_0

    .line 1815
    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v3}, Lcom/youku/player/goplay/ItemSegs;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_7
    move v1, v2

    .line 1816
    goto :goto_1
.end method

.method public isUrlOK()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1177
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1178
    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1178
    goto :goto_0

    .line 1180
    :cond_2
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    if-eq v5, v3, :cond_3

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 1184
    :cond_3
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/youku/player/module/VideoUrlInfo;->getvSeg(I)Ljava/util/List;

    move-result-object v2

    .line 1185
    .local v2, "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1187
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/ItemSeg;

    .line 1188
    .local v1, "seg":Lcom/youku/player/goplay/ItemSeg;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1}, Lcom/youku/player/goplay/ItemSeg;->get_Seconds()I

    move-result v5

    if-lez v5, :cond_4

    .line 1186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 1193
    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "seg":Lcom/youku/player/goplay/ItemSeg;
    :cond_5
    move v3, v4

    .line 1198
    goto :goto_0

    .line 1199
    .end local v2    # "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    :cond_6
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    .line 1200
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->hasM3u8SD()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->hasM3u8HD()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->hasM3u8HD2()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v4, v3

    :cond_8
    move v3, v4

    goto :goto_0

    .line 1201
    :cond_9
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1203
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->hasM3u8SD()Z

    move-result v3

    goto/16 :goto_0

    .line 1205
    :cond_a
    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_0

    :cond_b
    move v3, v4

    goto/16 :goto_0
.end method

.method public isUseCachePath()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/youku/player/module/VideoUrlInfo;->isEncyptError:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVerticalVideo()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo:Z

    return v0
.end method

.method public isVideoUrlOutOfDate()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1539
    iget-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return v2

    .line 1543
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1544
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x6cf2a0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1547
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public playH265Segs()Z
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->vSeg:Lcom/youku/player/goplay/ItemSegs;

    invoke-virtual {v0}, Lcom/youku/player/goplay/ItemSegs;->h265()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePlayedAdv()V
    .locals 0

    .prologue
    .line 1661
    invoke-direct {p0}, Lcom/youku/player/module/VideoUrlInfo;->removeFirstAdvFromVAL()V

    .line 1662
    return-void
.end method

.method public setAdPoints(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    if-nez p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1069
    :cond_0
    return-void

    .line 1054
    :cond_1
    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 1055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    .line 1059
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1060
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    iget-object v2, v2, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    const-string/jumbo v3, "standard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    new-instance v1, Lcom/youku/player/goplay/Point;

    invoke-direct {v1}, Lcom/youku/player/goplay/Point;-><init>()V

    .line 1062
    .local v1, "p":Lcom/youku/player/goplay/Point;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    iget-wide v2, v2, Lcom/youku/player/goplay/Point;->start:D

    iput-wide v2, v1, Lcom/youku/player/goplay/Point;->start:D

    .line 1063
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    iget-object v2, v2, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    .line 1064
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    iget-object v2, v2, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    .line 1065
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    iget-object v2, v2, Lcom/youku/player/goplay/Point;->desc:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/player/goplay/Point;->desc:Ljava/lang/String;

    .line 1066
    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v1    # "p":Lcom/youku/player/goplay/Point;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1057
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/youku/player/module/VideoUrlInfo;->adPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setAlbum(Z)V
    .locals 0
    .param p1, "isAlbum"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isAlbum:Z

    .line 439
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbumTitle"    # Ljava/lang/String;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mAlbumTitle:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setAlbumVideoCount(I)V
    .locals 0
    .param p1, "albumVideoCount"    # I

    .prologue
    .line 587
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->albumVideoCount:I

    .line 588
    return-void
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1875
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/Attachment;>;"
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mAttachments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1879
    :cond_0
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mAttachments:Ljava/util/List;

    .line 1880
    return-void
.end method

.method public setAttention(Z)V
    .locals 0
    .param p1, "attention"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isAttention:Z

    .line 367
    return-void
.end method

.method public setCached(Z)V
    .locals 0
    .param p1, "mIsCached"    # Z

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    .line 968
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->channelId:Ljava/lang/String;

    .line 1936
    return-void
.end method

.method public setChannel_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel_name"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->channel_name:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 1728
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->cid:I

    .line 1729
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 1020
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->code:I

    .line 1021
    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0
    .param p1, "copyright"    # Ljava/lang/String;

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->copyright:Ljava/lang/String;

    .line 1968
    return-void
.end method

.method public setCurrentVideoQuality(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 1796
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mCurrentVideoQuality:I

    .line 1797
    return-void
.end method

.method public setDrmType(Ljava/lang/String;)V
    .locals 0
    .param p1, "drmType"    # Ljava/lang/String;

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->drmType:Ljava/lang/String;

    .line 1984
    return-void
.end method

.method public setDurationMills(I)V
    .locals 0
    .param p1, "durationMills"    # I

    .prologue
    .line 1471
    if-gtz p1, :cond_0

    .line 1474
    :goto_0
    return-void

    .line 1473
    :cond_0
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->duration:I

    goto :goto_0
.end method

.method public setDurationSecs(D)V
    .locals 3
    .param p1, "durationSecs"    # D

    .prologue
    .line 1462
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 1465
    :goto_0
    return-void

    .line 1464
    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->duration:I

    goto :goto_0
.end method

.method public setEpisodemode(Ljava/lang/String;)V
    .locals 0
    .param p1, "episodemode"    # Ljava/lang/String;

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->episodemode:Ljava/lang/String;

    .line 1753
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVar"    # Ljava/lang/String;

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->errorMsg:Ljava/lang/String;

    .line 1502
    return-void
.end method

.method public setExclusiveLogo(Z)V
    .locals 0
    .param p1, "exclusive_logo"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->exclusive_logo:Z

    .line 244
    return-void
.end method

.method public setFeeVideo(Z)V
    .locals 0
    .param p1, "isFeeVideo"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isFeeVideo:Z

    .line 608
    return-void
.end method

.method public setFeeView(Z)V
    .locals 0
    .param p1, "isFeeView"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isFeeView:Z

    .line 612
    return-void
.end method

.method public setHasHead(Z)V
    .locals 1
    .param p1, "mHasHead"    # Z

    .prologue
    .line 1271
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    .line 1272
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    if-nez v0, :cond_0

    .line 1273
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    .line 1274
    :cond_0
    return-void
.end method

.method public setHasTail(Z)V
    .locals 1
    .param p1, "mHasTail"    # Z

    .prologue
    .line 1283
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    .line 1284
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    if-nez v0, :cond_0

    .line 1285
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    .line 1286
    :cond_0
    return-void
.end method

.method public setHaveNext(I)V
    .locals 0
    .param p1, "mHaveNext"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->haveNext:I

    .line 412
    return-void
.end method

.method public setHeadPosition(I)V
    .locals 0
    .param p1, "mHeadPosition"    # I

    .prologue
    .line 1307
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    .line 1308
    return-void
.end method

.method public setHttp4xxError(Z)V
    .locals 0
    .param p1, "http4xxError"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->http4xxError:Z

    .line 576
    return-void
.end method

.method public setHttpResponseCode(I)V
    .locals 0
    .param p1, "r"    # I

    .prologue
    .line 650
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->httpResponseCode:I

    .line 651
    return-void
.end method

.method public setInteract(Z)V
    .locals 0
    .param p1, "interact"    # Z

    .prologue
    .line 1848
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->interact:Z

    .line 1849
    return-void
.end method

.method public setIsMusic(I)V
    .locals 0
    .param p1, "mIsMusic"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isMusic:I

    .line 431
    return-void
.end method

.method public setIsTrailer(Z)V
    .locals 0
    .param p1, "isTrailer"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isTrailer:Z

    .line 320
    return-void
.end method

.method public setItemDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemDesc"    # Ljava/lang/String;

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mItemDesc:Ljava/lang/String;

    .line 2023
    return-void
.end method

.method public setItemPlayTimes(J)V
    .locals 1
    .param p1, "itemPlayTimes"    # J

    .prologue
    .line 303
    iput-wide p1, p0, Lcom/youku/player/module/VideoUrlInfo;->itemPlayTimes:J

    .line 304
    return-void
.end method

.method public setItemShortDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemShortDesc"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->itemShortDesc:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setItemSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemSubtitle"    # Ljava/lang/String;

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->item_subtitle:Ljava/lang/String;

    .line 1789
    return-void
.end method

.method public setItem_img_16_9(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->item_img_16_9:Ljava/lang/String;

    .line 1741
    return-void
.end method

.method public setLicenseNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseNum"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->licenseNum:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->limit:I

    .line 268
    return-void
.end method

.method public setLookTen(I)V
    .locals 0
    .param p1, "lookLen"    # I

    .prologue
    .line 1756
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->look_ten:I

    .line 1757
    return-void
.end method

.method public setM3u8HD(Ljava/lang/String;)V
    .locals 0
    .param p1, "m3u8hd"    # Ljava/lang/String;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    .line 1381
    return-void
.end method

.method public setM3u8HD2(Ljava/lang/String;)V
    .locals 0
    .param p1, "m3u8hd2"    # Ljava/lang/String;

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    .line 1340
    return-void
.end method

.method public setM3u8HD2Duration(I)V
    .locals 0
    .param p1, "m3u8hd2Duration"    # I

    .prologue
    .line 1356
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    .line 1357
    return-void
.end method

.method public setM3u8HDDuration(I)V
    .locals 0
    .param p1, "m3u8hdDuration"    # I

    .prologue
    .line 1400
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    .line 1401
    return-void
.end method

.method public setM3u8SD(Ljava/lang/String;)V
    .locals 0
    .param p1, "m3u8sd"    # Ljava/lang/String;

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    .line 1369
    return-void
.end method

.method public setM3u8SDDuration(I)V
    .locals 0
    .param p1, "m3u8sdDuration"    # I

    .prologue
    .line 1390
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    .line 1391
    return-void
.end method

.method public setMarlinToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "marlinToken"    # Ljava/lang/String;

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->marlinToken:Ljava/lang/String;

    .line 1988
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mMediaType:Ljava/lang/String;

    .line 1733
    return-void
.end method

.method public setNativePlay(Z)V
    .locals 0
    .param p1, "mNativePlay"    # Z

    .prologue
    .line 619
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->nativePlay:Z

    .line 620
    return-void
.end method

.method public setPaystate(Ljava/lang/String;)V
    .locals 0
    .param p1, "paystate"    # Ljava/lang/String;

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->paystate:Ljava/lang/String;

    .line 1964
    return-void
.end method

.method public setPiddecode(Ljava/lang/String;)V
    .locals 0
    .param p1, "piddecode"    # Ljava/lang/String;

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->piddecode:Ljava/lang/String;

    .line 1944
    return-void
.end method

.method public setPlayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPlayType"    # Ljava/lang/String;

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 1492
    return-void
.end method

.method public setPlaylistchannelid(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistchannelid"    # Ljava/lang/String;

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistchannelid:Ljava/lang/String;

    .line 1948
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 1009
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->progress:I

    .line 1010
    return-void
.end method

.method public setRegisterNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "registerNum"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->registerNum:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setReplay(Z)V
    .locals 0
    .param p1, "isReplay"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isReplay:Z

    .line 252
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->requestId:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setSchannelid(Ljava/lang/String;)V
    .locals 0
    .param p1, "schannelid"    # Ljava/lang/String;

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->schannelid:Ljava/lang/String;

    .line 1940
    return-void
.end method

.method public setSeries(Z)V
    .locals 0
    .param p1, "mSeries"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isSeries:Z

    .line 631
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public setShow_videoseq(I)V
    .locals 0
    .param p1, "mShow_videoseq"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videoseq:I

    .line 393
    return-void
.end method

.method public setShow_videostage_title(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_videostage_title"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videostage_title:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setShowchannelid(Ljava/lang/String;)V
    .locals 0
    .param p1, "showchannelid"    # Ljava/lang/String;

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->showchannelid:Ljava/lang/String;

    .line 1956
    return-void
.end method

.method public setSiddecode(Ljava/lang/String;)V
    .locals 0
    .param p1, "siddecode"    # Ljava/lang/String;

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->siddecode:Ljava/lang/String;

    .line 1841
    return-void
.end method

.method public setSplaylistchannelid(Ljava/lang/String;)V
    .locals 0
    .param p1, "splaylistchannelid"    # Ljava/lang/String;

    .prologue
    .line 1951
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->splaylistchannelid:Ljava/lang/String;

    .line 1952
    return-void
.end method

.method public setSshowchannelid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sshowchannelid"    # Ljava/lang/String;

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->sshowchannelid:Ljava/lang/String;

    .line 1960
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->netStatus:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setTailPosition(I)V
    .locals 0
    .param p1, "mTailPosition"    # I

    .prologue
    .line 1317
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    .line 1318
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mTip:Ljava/lang/String;

    .line 2039
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 971
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 973
    :try_start_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle_new_dl(Ljava/lang/String;)V
    .locals 0
    .param p1, "title_new_dl"    # Ljava/lang/String;

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->title_new_dl:Ljava/lang/String;

    .line 1777
    return-void
.end method

.method public setTitle_new_dl_sub(Ljava/lang/String;)V
    .locals 0
    .param p1, "title_new_dl_sub"    # Ljava/lang/String;

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->title_new_dl_sub:Ljava/lang/String;

    .line 1773
    return-void
.end method

.method public setTrailers(Ljava/lang/String;)V
    .locals 0
    .param p1, "trailers"    # Ljava/lang/String;

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->trailers:Ljava/lang/String;

    .line 1972
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->type:I

    .line 79
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->uid:Ljava/lang/String;

    .line 1833
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    .line 667
    return-void
.end method

.method public setVVPlayInfo(Lcom/youku/player/module/VVPlayInfo;)V
    .locals 0
    .param p1, "vvPlayInfo"    # Lcom/youku/player/module/VVPlayInfo;

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->vvPlayInfo:Lcom/youku/player/module/VVPlayInfo;

    .line 2015
    return-void
.end method

.method public setVerticalVideo(Z)V
    .locals 0
    .param p1, "isVerticalVideo"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo:Z

    .line 572
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    .line 986
    return-void
.end method

.method public setViddecode(Ljava/lang/String;)V
    .locals 0
    .param p1, "viddecode"    # Ljava/lang/String;

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->viddecode:Ljava/lang/String;

    .line 1932
    return-void
.end method

.method public setVideoLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVideoLanguage"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setVideoStage(I)V
    .locals 0
    .param p1, "mVideoStage"    # I

    .prologue
    .line 638
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoStage:I

    .line 639
    return-void
.end method

.method public setVideoType(I)V
    .locals 0
    .param p1, "mVideoType"    # I

    .prologue
    .line 456
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->videoType:I

    .line 457
    return-void
.end method

.method public setVipError(I)V
    .locals 0
    .param p1, "vipError"    # I

    .prologue
    .line 2047
    iput p1, p0, Lcom/youku/player/module/VideoUrlInfo;->mVipError:I

    .line 2048
    return-void
.end method

.method public setWebViewUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->webViewUrl:Ljava/lang/String;

    .line 1450
    return-void
.end method

.method public setWeburl(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->weburl:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public setYoukuRegisterNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "youkuRegisterNum"    # Ljava/lang/String;

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->youkuRegisterNum:Ljava/lang/String;

    .line 2027
    return-void
.end method

.method public setid(Ljava/lang/String;)V
    .locals 0
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->id:Ljava/lang/String;

    .line 994
    return-void
.end method

.method public setimgurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/youku/player/module/VideoUrlInfo;->img:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public trialByTime()Z
    .locals 2

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "time"

    iget-object v1, p0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1604
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1610
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->retryTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->weburl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1616
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isCached:Z

    if-eqz v0, :cond_0

    .line 1618
    iput v1, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    .line 1621
    :goto_0
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->netStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->languages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1624
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->pointArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1625
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->httpResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1632
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8SDDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HDDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->m3u8HD2Duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1635
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->reputation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->showId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->serialTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1643
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->haveNext:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasHead:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->hasTail:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->headPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->tailPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1649
    iget-wide v4, p0, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1650
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1652
    iget v0, p0, Lcom/youku/player/module/VideoUrlInfo;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->show_videostage_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1654
    iget-boolean v0, p0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    return-void

    .line 1620
    :cond_0
    iput v2, p0, Lcom/youku/player/module/VideoUrlInfo;->cached:I

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1644
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1645
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1650
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1654
    goto :goto_4
.end method
