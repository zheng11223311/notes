.class public Lcom/youku/player/service/GetHlsUrlServiceTudou;
.super Ljava/lang/Object;
.source "GetHlsUrlServiceTudou.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

.field private mLiveId:Ljava/lang/String;

.field private mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;

    invoke-direct {v0, p0}, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;-><init>(Lcom/youku/player/service/GetHlsUrlServiceTudou;)V

    iput-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->handler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetHlsUrlServiceTudou;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetHlsUrlServiceTudou;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    return-object v0
.end method


# virtual methods
.method public getHlsUrl(Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 7
    .param p1, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "liveid"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/lang/String;
    .param p4, "mListener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    invoke-static {p2, p3}, Lcom/youku/player/util/URLContainer;->getHlsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "url":Ljava/lang/String;
    iput-object p2, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mLiveId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    .line 40
    iput-object p1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 41
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

    .line 43
    new-instance v0, Lcom/youku/player/goplay/TaskGetVideoUrl;

    invoke-direct {v0, v1}, Lcom/youku/player/goplay/TaskGetVideoUrl;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "taskGetVideoUrl":Lcom/youku/player/goplay/TaskGetVideoUrl;
    invoke-virtual {v0, v6}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setSuccess(I)V

    .line 45
    invoke-virtual {v0, v5}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setFail(I)V

    .line 46
    new-array v2, v6, [Landroid/os/Handler;

    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->handler:Landroid/os/Handler;

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 47
    return-void
.end method

.method protected setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V
    .locals 5
    .param p1, "mResult"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "code":I
    :try_start_0
    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "error_code"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 161
    if-nez v0, :cond_0

    .line 162
    const-string v3, "code"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3, v0}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 164
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v4, "webviewurl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/player/module/VideoUrlInfo;->setWebViewUrl(Ljava/lang/String;)V

    .line 165
    const-string v3, "itemCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/youku/player/goplay/GoplayException;->itemCode:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, v0}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 167
    const/16 v3, -0x68

    if-ne v0, v3, :cond_1

    .line 168
    const-string/jumbo v3, "webviewurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/youku/player/goplay/GoplayException;->webUrl:Ljava/lang/String;

    .line 172
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_native:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 225
    :goto_0
    return-void

    .line 176
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 214
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->Player_error_timeout:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->Player_error_timeout:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 223
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    .end local v1    # "e":Lorg/json/JSONException;
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f101:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 182
    :sswitch_1
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f102:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 186
    :sswitch_2
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->no_copyright:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 191
    :sswitch_3
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f105_see_others:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 195
    :sswitch_4
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f106:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 199
    :sswitch_5
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_f107:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 202
    :sswitch_6
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_url_is_nul:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 206
    :sswitch_7
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->Player_error_f100:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 210
    :sswitch_8
    iget-object v3, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/android/player/R$string;->player_error_no_pay:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 176
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

.method public setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 18
    .param p1, "mResult"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 80
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v8, "object":Lorg/json/JSONObject;
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v16, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo"

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v15, "status"

    invoke-static {v8, v15}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "status":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v15, v13}, Lcom/youku/player/module/VideoUrlInfo;->setStatus(Ljava/lang/String;)V

    .line 87
    const-string v15, "code"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "code":I
    const-string v15, "data"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "data":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v15

    const-string v16, "094b2a34e812a4282f25c7ca1987789f"

    invoke-static/range {v15 .. v16}, Lcom/youku/player/util/PlayerUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/lang/String;-><init>([B)V

    .line 92
    .local v4, "decrypt":Ljava/lang/String;
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v15, v1}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 94
    new-instance v8, Lorg/json/JSONObject;

    .end local v8    # "object":Lorg/json/JSONObject;
    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v8    # "object":Lorg/json/JSONObject;
    const-string v15, "play"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 97
    .local v10, "playData":Lorg/json/JSONObject;
    if-eqz v10, :cond_0

    .line 98
    const-string/jumbo v15, "token"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 99
    .local v14, "token":Ljava/lang/String;
    const-string v15, "ip"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "oip":Ljava/lang/String;
    const-string/jumbo v15, "sid"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "sid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v14, v15, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v9, v15, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v12, v15, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v16, "bps"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v16, "channel"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/VideoUrlInfo;->channel:Ljava/lang/String;

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 108
    .end local v9    # "oip":Ljava/lang/String;
    .end local v12    # "sid":Ljava/lang/String;
    .end local v14    # "token":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    new-instance v16, Lcom/youku/player/module/LiveInfo;

    invoke-direct/range {v16 .. v16}, Lcom/youku/player/module/LiveInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mLiveId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/LiveInfo;->liveId:Ljava/lang/String;

    .line 112
    const-string v15, "live"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 113
    .local v7, "live":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v16, "status"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/youku/player/module/LiveInfo;->status:I

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string/jumbo v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/LiveInfo;->title:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v16, "desc"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/LiveInfo;->desc:Ljava/lang/String;

    .line 118
    const-string/jumbo v15, "set"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 119
    .local v11, "set":Lorg/json/JSONObject;
    if-eqz v11, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v16, "front_adid"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/LiveInfo;->front_adid:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v16, "picurl"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/LiveInfo;->picurl:Ljava/lang/String;

    .line 124
    :cond_1
    const-string v15, "error"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 125
    .local v6, "error":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v16, "code"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/youku/player/module/LiveInfo;->errorCode:I

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v16, "msg"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/youku/player/module/LiveInfo;->errorMsg:Ljava/lang/String;

    .line 130
    .end local v6    # "error":Lorg/json/JSONObject;
    .end local v11    # "set":Lorg/json/JSONObject;
    :cond_2
    const-string v15, "controller"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 131
    .local v2, "controller":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v15, v15, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    const-string v16, "autoplay"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/youku/player/module/LiveInfo;->autoplay:I

    .line 137
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;->mLiveId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "code":I
    .end local v2    # "controller":Lorg/json/JSONObject;
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "decrypt":Ljava/lang/String;
    .end local v7    # "live":Lorg/json/JSONObject;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v10    # "playData":Lorg/json/JSONObject;
    .end local v13    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v5

    .line 140
    .local v5, "e":Lorg/json/JSONException;
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v16, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo \u51fa\u9519"

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
