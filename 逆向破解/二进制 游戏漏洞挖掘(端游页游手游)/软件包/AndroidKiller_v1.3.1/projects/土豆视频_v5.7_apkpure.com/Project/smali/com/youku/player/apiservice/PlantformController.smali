.class public abstract Lcom/youku/player/apiservice/PlantformController;
.super Ljava/lang/Object;
.source "PlantformController.java"


# instance fields
.field protected mLiveEncryptType:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

.field protected mSiteValue:Ljava/lang/String;

.field protected mVidText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdDomain()Ljava/lang/String;
.end method

.method public abstract getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEncryptParam()Ljava/lang/String;
.end method

.method public getLiveEncyptType()Lcom/baseproject/utils/Util$ENCRYPT_TYPE;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/player/apiservice/PlantformController;->mLiveEncryptType:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    return-object v0
.end method

.method public getSiteValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/player/apiservice/PlantformController;->mSiteValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVidText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/player/apiservice/PlantformController;->mVidText:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handleCallbackIfVideoEncrypted(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
.end method

.method public abstract initIRVideo(Landroid/content/Context;)V
.end method

.method public abstract isTrialOver(Lcom/youku/player/module/VideoUrlInfo;I)Z
.end method

.method public abstract noRightPlay(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
.end method

.method public abstract onGetHLSVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/goplay/GoplayException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;",
            "Lcom/youku/player/goplay/GoplayException;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;Ljava/lang/String;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;",
            "Lcom/youku/player/plugin/MediaPlayerDelegate;",
            "Lcom/youku/player/goplay/GoplayException;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onQualitySmoothChangeEnd(Lcom/youku/player/apiservice/IPlayerUiControl;I)V
.end method

.method public abstract onQualitySmoothChangeStart(Lcom/youku/player/apiservice/IPlayerUiControl;I)V
.end method

.method public abstract playHLS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
.end method

.method public abstract playVideoWithPassword(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
.end method

.method public abstract processHttpError(Lcom/youku/player/goplay/TaskGetVideoUrl;ILjava/net/HttpURLConnection;)V
.end method

.method public abstract processRawData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setPlayCode(Lcom/youku/player/goplay/GoplayException;)V
.end method

.method public abstract setWaterMarkInvisible(Lcom/youku/player/base/YoukuPlayerView;)V
.end method

.method public abstract setWaterMarkVisible(Lcom/youku/player/base/YoukuPlayerView;I)V
.end method
