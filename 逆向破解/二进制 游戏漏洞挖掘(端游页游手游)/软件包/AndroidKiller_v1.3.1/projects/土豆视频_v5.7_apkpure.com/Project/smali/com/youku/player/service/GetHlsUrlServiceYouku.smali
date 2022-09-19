.class public Lcom/youku/player/service/GetHlsUrlServiceYouku;
.super Ljava/lang/Object;
.source "GetHlsUrlServiceYouku.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field private final COMBINE_URL_PRE:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

.field private mLiveId:Ljava/lang/String;

.field private mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "http://l.youku.com/securelive"

    iput-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->COMBINE_URL_PRE:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/youku/player/service/GetHlsUrlServiceYouku$1;

    invoke-direct {v0, p0}, Lcom/youku/player/service/GetHlsUrlServiceYouku$1;-><init>(Lcom/youku/player/service/GetHlsUrlServiceYouku;)V

    iput-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->handler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/service/GetHlsUrlServiceYouku;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetHlsUrlServiceYouku;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/service/GetHlsUrlServiceYouku;)Lcom/youku/player/goplay/IVideoInfoCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetHlsUrlServiceYouku;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    const-string v1, "http://l.youku.com/securelive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/channel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/bps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/offset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->offset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/sid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "?ctype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&ev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&oip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getHlsUrl(Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 7
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "liveId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-static {p2}, Lcom/youku/player/util/URLContainer;->getYoukuHlsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "url":Ljava/lang/String;
    iput-object p2, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mLiveId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    .line 43
    iput-object p1, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 44
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u64ad\u653e\u5730\u5740 GetVideoUrlServiceTudou getVideoUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/youku/player/goplay/TaskGetVideoUrl;

    invoke-direct {v0, v1}, Lcom/youku/player/goplay/TaskGetVideoUrl;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "taskGetVideoUrl":Lcom/youku/player/goplay/TaskGetVideoUrl;
    invoke-virtual {v0, v6}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setSuccess(I)V

    .line 48
    invoke-virtual {v0, v5}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setFail(I)V

    .line 49
    new-array v2, v6, [Landroid/os/Handler;

    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->handler:Landroid/os/Handler;

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 50
    return-void
.end method

.method protected setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V
    .locals 5
    .param p1, "mResult"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "code":I
    :try_start_0
    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "error_code"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_native:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 247
    :goto_0
    return-void

    .line 198
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 236
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_other:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->Player_error_timeout:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 245
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    .end local v1    # "e":Lorg/json/JSONException;
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f101:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 204
    :sswitch_1
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f102:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 208
    :sswitch_2
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->no_copyright:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 213
    :sswitch_3
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f105_see_others:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 217
    :sswitch_4
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f106:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 221
    :sswitch_5
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f107:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 224
    :sswitch_6
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_url_is_nul:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 228
    :sswitch_7
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->Player_error_f100:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 232
    :sswitch_8
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_no_pay:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        -0xca -> :sswitch_6
        -0x70 -> :sswitch_8
        -0x6b -> :sswitch_5
        -0x6a -> :sswitch_4
        -0x69 -> :sswitch_3
        -0x68 -> :sswitch_2
        -0x66 -> :sswitch_1
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public setVideoUrlInfo()V
    .locals 9

    .prologue
    .line 85
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "json":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 89
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v6, "qwer3as2jin4fdsa"

    invoke-static {v0, v6}, Lcom/youku/player/util/PlayerUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v2, "decrypt":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, "object":Lorg/json/JSONObject;
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/youku/player/service/GetHlsUrlServiceYouku;->setVideoUrlInfoFromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "bytes":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "decrypt":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v7, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo \u51fa\u9519"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setVideoUrlInfoFromJson(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x0

    .line 101
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    .line 102
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    new-instance v10, Lcom/youku/player/module/LiveInfo;

    invoke-direct {v10}, Lcom/youku/player/module/LiveInfo;-><init>()V

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    .line 103
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v10, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mLiveId:Ljava/lang/String;

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->liveId:Ljava/lang/String;

    .line 105
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v10, "status"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/player/module/VideoUrlInfo;->setStatus(Ljava/lang/String;)V

    .line 106
    const-string v9, "code"

    invoke-static {p1, v9, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "code":I
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9, v0}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 108
    const-string v9, "live"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    .local v3, "live":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 110
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v10, "token"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    .line 111
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v10, "ip"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    .line 112
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v10, "sid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    .line 113
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "paid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->isPaid:I

    .line 114
    const-string/jumbo v9, "streams"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 115
    .local v5, "streams":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 116
    const-string v9, "0"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    const-string v9, "0"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 118
    .local v7, "streamsInfoArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 120
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 122
    .local v6, "streamsInfo":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 123
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v10, "bps"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    .line 124
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v10, "channel"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->channel:Ljava/lang/String;

    .line 126
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "channel"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->channel:Ljava/lang/String;

    .line 128
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v10, "offset"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/VideoUrlInfo;->offset:Ljava/lang/String;

    .line 134
    .end local v6    # "streamsInfo":Lorg/json/JSONObject;
    .end local v7    # "streamsInfoArray":Lorg/json/JSONArray;
    :cond_0
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Lcom/youku/player/service/GetHlsUrlServiceYouku;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 136
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v10, "status"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->status:I

    .line 137
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v10, "title"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->title:Ljava/lang/String;

    .line 138
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, v10, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v10, v10, Lcom/youku/player/module/LiveInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 139
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "desc"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->desc:Ljava/lang/String;

    .line 141
    const-string/jumbo v9, "set"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 142
    .local v4, "set":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 143
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "front_adid"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->front_adid:Ljava/lang/String;

    .line 145
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "picurl"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->picurl:Ljava/lang/String;

    .line 147
    :cond_1
    const-string v9, "error"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 148
    .local v2, "error":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 149
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "code"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->errorCode:I

    .line 150
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "msg"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/youku/player/module/LiveInfo;->errorMsg:Ljava/lang/String;

    .line 152
    :cond_2
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v10, "starttime"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/youku/player/module/LiveInfo;->starttime:J

    .line 153
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "endtime"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/youku/player/module/LiveInfo;->endtime:J

    .line 154
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v10, "servertime"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/youku/player/module/LiveInfo;->servertime:J

    .line 156
    .end local v2    # "error":Lorg/json/JSONObject;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "streams":Lorg/json/JSONObject;
    :cond_3
    const-string v9, "controller"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    .local v1, "controller":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 158
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "autoplay"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->autoplay:I

    .line 159
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "fullscreen"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->isFullScreen:I

    .line 160
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "area_code"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->areaCode:I

    .line 161
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "dma_code"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->dmaCode:I

    .line 162
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v10, "with_barrage"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->with_barrage:I

    .line 163
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v10, "barrage_id"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/youku/player/module/LiveInfo;->barrage_id:I

    .line 165
    :cond_4
    const-string/jumbo v9, "user"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 166
    const-string/jumbo v9, "user"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 167
    .local v8, "user":Lorg/json/JSONObject;
    if-eqz v8, :cond_5

    .line 168
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v10, "vip"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/youku/player/module/LiveInfo;->isVip:Z

    .line 173
    .end local v8    # "user":Lorg/json/JSONObject;
    :cond_5
    iget-object v9, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/service/GetHlsUrlServiceYouku;->mLiveId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 174
    return-void
.end method
