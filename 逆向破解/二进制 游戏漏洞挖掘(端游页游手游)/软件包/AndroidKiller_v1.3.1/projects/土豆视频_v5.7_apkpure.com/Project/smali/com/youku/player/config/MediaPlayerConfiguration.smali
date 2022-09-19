.class public Lcom/youku/player/config/MediaPlayerConfiguration;
.super Ljava/lang/Object;
.source "MediaPlayerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/config/MediaPlayerConfiguration$1;,
        Lcom/youku/player/config/MediaPlayerConfiguration$SingletonHolder;
    }
.end annotation


# static fields
.field public static final FUN_HWDECODE:I = 0x2

.field public static final FUN_REQUESTASYNC:I = 0x1


# instance fields
.field private final DETAILACTIVITY_NAME_TUDOU:Ljava/lang/String;

.field private final DETAILACTIVITY_NAME_YOUKU:Ljava/lang/String;

.field private mAdvPlatForm:I

.field public mDanmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

.field private mDefaultAllow3G:Z

.field private mDetailActivityName:Ljava/lang/String;

.field private mEnableOrientation:Z

.field private mEnhancedMode:Z

.field private mGreyFeatureSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mH265:Z

.field private mHideDanmaku:Z

.field public mIstest:I

.field private mLivePortrait:Z

.field private mP2PRetryTimes:I

.field public mPlantformController:Lcom/youku/player/apiservice/PlantformController;

.field private mPlatform:I

.field private mRequestAsync:Z

.field private mShowAdWebView:Z

.field private mShowChangeQualityTip:Z

.field private mShowLoginDialog:Z

.field private mShowOfflineAd:Z

.field private mShowPauseAd:Z

.field private mShowPreAd:Z

.field private mShowSkipAdButton:Z

.field public mTestid:I

.field private mTrackAd:Z

.field private mTrackPlayError:Z

.field private mTudouPadDanmaku:Z

.field private mUnicomFree:Z

.field private mUseHardwareDecode:Z

.field private mUseP2P:Z

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "com.youku.ui.activity.DetailActivity"

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->DETAILACTIVITY_NAME_YOUKU:Ljava/lang/String;

    .line 56
    const-string v0, "com.tudou.ui.activity.DetailActivity"

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->DETAILACTIVITY_NAME_TUDOU:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mGreyFeatureSet:Ljava/util/Set;

    .line 71
    iput v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    .line 72
    iput v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    .line 85
    const-string v0, "com.tudou.android"

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tudou.xoom.android"

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mAdvPlatForm:I

    .line 90
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPreAd:Z

    .line 91
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPauseAd:Z

    .line 92
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowOfflineAd:Z

    .line 93
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowSkipAdButton:Z

    .line 94
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackAd:Z

    .line 95
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowChangeQualityTip:Z

    .line 96
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowLoginDialog:Z

    .line 97
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackPlayError:Z

    .line 98
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowAdWebView:Z

    .line 99
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseHardwareDecode:Z

    .line 100
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseP2P:Z

    .line 101
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnableOrientation:Z

    .line 102
    iput v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mP2PRetryTimes:I

    .line 103
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mHideDanmaku:Z

    .line 104
    invoke-virtual {p0}, Lcom/youku/player/config/MediaPlayerConfiguration;->setTudouPadDanmaku()V

    .line 105
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mLivePortrait:Z

    .line 106
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUnicomFree:Z

    .line 107
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mRequestAsync:Z

    .line 108
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mH265:Z

    .line 109
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDefaultAllow3G:Z

    .line 110
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnhancedMode:Z

    .line 111
    const/16 v0, 0x2712

    iput v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlatform:I

    .line 112
    const/16 v0, 0x40

    sput v0, Lcom/youku/player/goplay/Profile;->ctype:I

    .line 113
    new-instance v0, Lcom/youku/player/config/TudouController;

    invoke-direct {v0}, Lcom/youku/player/config/TudouController;-><init>()V

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    .line 114
    new-instance v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;

    invoke-direct {v0}, Lcom/youku/player/danmaku/TudouDanmakuUtils;-><init>()V

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDanmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    .line 115
    const-string v0, "com.tudou.ui.activity.DetailActivity"

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDetailActivityName:Ljava/lang/String;

    .line 144
    :goto_0
    const-string v0, "5.0"

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mVersionCode:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/statistics/IRVideoWrapper;->clearVideoPlayInfo(Landroid/content/Context;)V

    .line 146
    return-void

    .line 117
    :cond_1
    iput v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mAdvPlatForm:I

    .line 118
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPreAd:Z

    .line 119
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPauseAd:Z

    .line 120
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowOfflineAd:Z

    .line 121
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowSkipAdButton:Z

    .line 122
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackAd:Z

    .line 123
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowChangeQualityTip:Z

    .line 124
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowLoginDialog:Z

    .line 125
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackPlayError:Z

    .line 126
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowAdWebView:Z

    .line 127
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseHardwareDecode:Z

    .line 128
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseP2P:Z

    .line 129
    iput v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mP2PRetryTimes:I

    .line 130
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mHideDanmaku:Z

    .line 131
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mLivePortrait:Z

    .line 132
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnableOrientation:Z

    .line 133
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUnicomFree:Z

    .line 134
    iput-boolean v2, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDefaultAllow3G:Z

    .line 135
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mRequestAsync:Z

    .line 136
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mH265:Z

    .line 137
    iput-boolean v3, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnhancedMode:Z

    .line 138
    const/16 v0, 0x2711

    iput v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlatform:I

    .line 139
    const/16 v0, 0x14

    sput v0, Lcom/youku/player/goplay/Profile;->ctype:I

    .line 140
    new-instance v0, Lcom/youku/player/config/YoukuController;

    invoke-direct {v0}, Lcom/youku/player/config/YoukuController;-><init>()V

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    .line 141
    new-instance v0, Lcom/youku/player/danmaku/YoukuDanmakuUtils;

    invoke-direct {v0}, Lcom/youku/player/danmaku/YoukuDanmakuUtils;-><init>()V

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDanmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    .line 142
    const-string v0, "com.youku.ui.activity.DetailActivity"

    iput-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDetailActivityName:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/youku/player/config/MediaPlayerConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/config/MediaPlayerConfiguration$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/player/config/MediaPlayerConfiguration;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/youku/player/config/MediaPlayerConfiguration$SingletonHolder;->INSTANCE:Lcom/youku/player/config/MediaPlayerConfiguration;

    return-object v0
.end method

.method private getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-object v0
.end method

.method private setConfigFromXML()V
    .locals 9

    .prologue
    .line 369
    sget-object v6, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youku/android/player/R$raw;->mediaplayer_configuration:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 371
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 373
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 374
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 375
    .local v1, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 376
    packed-switch v1, :pswitch_data_0

    .line 431
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 378
    :pswitch_1
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v7, "init config"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 434
    .end local v1    # "eventType":I
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 441
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 381
    .restart local v1    # "eventType":I
    :pswitch_2
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "MediaplayerConfig"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 384
    const-string v6, "platform"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 385
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlatform:I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 436
    .end local v1    # "eventType":I
    .end local v5    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 386
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "eventType":I
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v6, "preAd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPreAd:Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 438
    .end local v1    # "eventType":I
    .end local v5    # "tag":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 388
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v6, "pauseAd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPauseAd:Z

    goto :goto_1

    .line 391
    :cond_4
    const-string v6, "offlineAd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 392
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowOfflineAd:Z

    goto :goto_1

    .line 394
    :cond_5
    const-string/jumbo v6, "skipAdButton"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 395
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowSkipAdButton:Z

    goto/16 :goto_1

    .line 397
    :cond_6
    const-string/jumbo v6, "trackAd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 398
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackAd:Z

    goto/16 :goto_1

    .line 399
    :cond_7
    const-string v6, "changeQualityTip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 400
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowChangeQualityTip:Z

    goto/16 :goto_1

    .line 402
    :cond_8
    const-string v6, "loginDialog"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 403
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowLoginDialog:Z

    goto/16 :goto_1

    .line 405
    :cond_9
    const-string/jumbo v6, "trackPlayError"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 406
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackPlayError:Z

    goto/16 :goto_1

    .line 408
    :cond_a
    const-string v6, "adWebView"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 409
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowAdWebView:Z

    goto/16 :goto_1

    .line 411
    :cond_b
    const-string v6, "ctype"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 412
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/youku/player/goplay/Profile;->ctype:I

    goto/16 :goto_1

    .line 414
    :cond_c
    const-string v6, "harewareDecode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 415
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseHardwareDecode:Z

    goto/16 :goto_1

    .line 417
    :cond_d
    const-string v6, "p2pPlay"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 418
    const/4 v6, 0x0

    const-string/jumbo v7, "retryTimes"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "retryTimes":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 421
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mP2PRetryTimes:I

    .line 422
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retryTimes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mP2PRetryTimes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_e
    invoke-direct {p0, v3, v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->getText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseP2P:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public defaultAllow3G()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDefaultAllow3G:Z

    return v0
.end method

.method public enableOrientation()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnableOrientation:Z

    return v0
.end method

.method public getAdvPlatform()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mAdvPlatForm:I

    return v0
.end method

.method public getDanmakuUtils()Lcom/youku/player/danmaku/DanmakuUtils;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDanmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    return-object v0
.end method

.method public getDetailActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mDetailActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getP2PRetryTimes()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mP2PRetryTimes:I

    return v0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlatform:I

    return v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public hideDanmaku()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mHideDanmaku:Z

    return v0
.end method

.method public isGreyControl(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mGreyFeatureSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public livePortrait()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mLivePortrait:Z

    return v0
.end method

.method public requestAsync()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mRequestAsync:Z

    return v0
.end method

.method public setAdvPlatform(I)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "platform"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mAdvPlatForm:I

    .line 258
    return-object p0
.end method

.method public setGreyConfiguration(Ljava/lang/String;)V
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    .line 301
    invoke-static {p1}, Lcom/youku/player/grey/GreyConfigParser;->parseJson(Ljava/lang/String;)Lcom/youku/player/grey/GreyParam;

    move-result-object v2

    .line 302
    .local v2, "param":Lcom/youku/player/grey/GreyParam;
    if-eqz v2, :cond_1

    .line 303
    iget v6, v2, Lcom/youku/player/grey/GreyParam;->hit_config_id:I

    iput v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    .line 304
    iget v6, v2, Lcom/youku/player/grey/GreyParam;->hit_state:I

    iput v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    .line 307
    const/4 v1, 0x1

    .line 308
    .local v1, "feature":I
    invoke-virtual {v2, v1}, Lcom/youku/player/grey/GreyParam;->isFeatureEnable(I)I

    move-result v3

    .line 309
    .local v3, "state":I
    const/4 v0, 0x0

    .line 310
    .local v0, "enable":Z
    if-eq v3, v9, :cond_0

    .line 311
    iget-object v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mGreyFeatureSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    if-ne v3, v4, :cond_2

    move v0, v4

    .line 313
    :goto_0
    sget-object v6, Lcom/youku/player/LogTag;->TAG_GREY:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setGreyConfiguration async request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->setRequestAsync(Z)Lcom/youku/player/config/MediaPlayerConfiguration;

    .line 317
    :cond_0
    const/4 v1, 0x2

    .line 318
    invoke-virtual {v2, v1}, Lcom/youku/player/grey/GreyParam;->isFeatureEnable(I)I

    move-result v3

    .line 319
    if-eq v3, v9, :cond_1

    .line 320
    iget-object v6, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mGreyFeatureSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    if-ne v3, v4, :cond_3

    move v0, v4

    .line 322
    :goto_1
    invoke-virtual {p0, v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->setUseHardwareDecode(Z)Lcom/youku/player/config/MediaPlayerConfiguration;

    .line 323
    sget-object v4, Lcom/youku/player/LogTag;->TAG_GREY:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGreyConfiguration hardwaredecode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .end local v0    # "enable":Z
    .end local v1    # "feature":I
    .end local v3    # "state":I
    :cond_1
    return-void

    .restart local v0    # "enable":Z
    .restart local v1    # "feature":I
    .restart local v3    # "state":I
    :cond_2
    move v0, v5

    .line 312
    goto :goto_0

    :cond_3
    move v0, v5

    .line 321
    goto :goto_1
.end method

.method public setLivePortrait(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "livePortrait"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mLivePortrait:Z

    .line 350
    return-object p0
.end method

.method public setP2PRetryTimes(I)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mP2PRetryTimes:I

    .line 345
    return-object p0
.end method

.method public setPlatform(I)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "platform"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlatform:I

    .line 330
    return-object p0
.end method

.method public setRequestAsync(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "requestAsync"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mRequestAsync:Z

    .line 355
    return-object p0
.end method

.method public setShowAdWebView(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowAdWebView:Z

    .line 293
    return-object p0
.end method

.method public setShowChangeQualityTip(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowChangeQualityTip:Z

    .line 278
    return-object p0
.end method

.method public setShowLoginDialog(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowLoginDialog:Z

    .line 283
    return-object p0
.end method

.method public setShowOfflineAd(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowOfflineAd:Z

    .line 263
    return-object p0
.end method

.method public setShowPauseAd(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPauseAd:Z

    .line 253
    return-object p0
.end method

.method public setShowPreAd(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPreAd:Z

    .line 248
    return-object p0
.end method

.method public setShowSkipAdButton(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowSkipAdButton:Z

    .line 268
    return-object p0
.end method

.method public setTrackAd(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isTrack"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackAd:Z

    .line 273
    return-object p0
.end method

.method public setTrackPlayError(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isTrack"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackPlayError:Z

    .line 288
    return-object p0
.end method

.method public setTudouPadDanmaku()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "com.tudou.android"

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTudouPadDanmaku:Z

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v0, "com.tudou.xoom.android"

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTudouPadDanmaku:Z

    goto :goto_0
.end method

.method public setUseEnhancedMode(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "enhancedMode"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnhancedMode:Z

    .line 365
    return-object p0
.end method

.method public setUseH265(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "h265"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mH265:Z

    .line 360
    return-object p0
.end method

.method public setUseHardwareDecode(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "isHw"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseHardwareDecode:Z

    .line 335
    return-object p0
.end method

.method public setUseP2P(Z)Lcom/youku/player/config/MediaPlayerConfiguration;
    .locals 0
    .param p1, "useP2P"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseP2P:Z

    .line 340
    return-object p0
.end method

.method public showAdWebView()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowAdWebView:Z

    return v0
.end method

.method public showChangeQualityTip()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowChangeQualityTip:Z

    return v0
.end method

.method public showLoginDialog()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowLoginDialog:Z

    return v0
.end method

.method public showOfflineAd()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowOfflineAd:Z

    return v0
.end method

.method public showPauseAd()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPauseAd:Z

    return v0
.end method

.method public showPreAd()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowPreAd:Z

    return v0
.end method

.method public showSkipAdButton()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mShowSkipAdButton:Z

    return v0
.end method

.method public showTudouPadDanmaku()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTudouPadDanmaku:Z

    return v0
.end method

.method public trackAd()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackAd:Z

    return v0
.end method

.method public trackPlayError()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTrackPlayError:Z

    return v0
.end method

.method public unicomFree()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUnicomFree:Z

    return v0
.end method

.method public useEnhancedMode()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mEnhancedMode:Z

    return v0
.end method

.method public useH265()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mH265:Z

    return v0
.end method

.method public useHardwareDecode()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseHardwareDecode:Z

    return v0
.end method

.method public useP2P()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/youku/player/config/MediaPlayerConfiguration;->mUseP2P:Z

    return v0
.end method
