.class public Lcom/youku/gamecenter/services/GetVideoUrlService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetVideoUrlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetVideoUrlService$OnGetVideoUrlServiceListener;
    }
.end annotation


# instance fields
.field private isYouku:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->isYouku:Z

    .line 25
    check-cast p1, Lcom/youku/gamecenter/GameBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->isYouku:Z

    .line 26
    return-void
.end method

.method private parseVideoInfo(Lorg/json/JSONObject;Lcom/youku/gamecenter/data/VideoUrlInfo;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "info"    # Lcom/youku/gamecenter/data/VideoUrlInfo;

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-boolean v3, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->isYouku:Z

    if-eqz v3, :cond_1

    .line 167
    const-string/jumbo v3, "results"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    .local v0, "result":Lorg/json/JSONObject;
    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 169
    .local v2, "segsArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 170
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, "segObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 172
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_url:Ljava/lang/String;

    .line 173
    const-string v3, "fileid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_field_id:Ljava/lang/String;

    .line 189
    .end local v1    # "segObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 177
    .end local v0    # "result":Lorg/json/JSONObject;
    .end local v2    # "segsArray":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v3, "results"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "mp4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    .restart local v0    # "result":Lorg/json/JSONObject;
    const-string/jumbo v3, "segs"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 180
    .restart local v2    # "segsArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 181
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 182
    .restart local v1    # "segObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 183
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_url:Ljava/lang/String;

    .line 184
    const-string v3, "fileid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_field_id:Ljava/lang/String;

    goto :goto_0
.end method

.method private setVideoUrlInfoFromJson(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/VideoUrlInfo;
    .locals 14
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v4, -0x1

    .line 110
    .local v4, "response":I
    new-instance v2, Lcom/youku/gamecenter/data/VideoUrlInfo;

    invoke-direct {v2}, Lcom/youku/gamecenter/data/VideoUrlInfo;-><init>()V

    .line 112
    .local v2, "mVideoUrlInfo":Lcom/youku/gamecenter/data/VideoUrlInfo;
    const-string/jumbo v12, "status"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "status":Ljava/lang/String;
    const-string/jumbo v12, "sid_data"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 114
    .local v6, "sidData":Lorg/json/JSONObject;
    const-string/jumbo v12, "token"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "token":Ljava/lang/String;
    const-string v12, "oip"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "oip":Ljava/lang/String;
    const-string/jumbo v12, "sid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "sid":Ljava/lang/String;
    iput-object v9, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->token:Ljava/lang/String;

    .line 118
    iput-object v3, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->oip:Ljava/lang/String;

    .line 119
    iput-object v5, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->sid:Ljava/lang/String;

    .line 120
    iput-object v7, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->status:Ljava/lang/String;

    .line 121
    const-string v12, "code"

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "code":I
    iput v0, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->code:I

    .line 124
    const-string/jumbo v12, "title"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "title":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 126
    iput-object v8, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->title:Ljava/lang/String;

    .line 129
    :cond_0
    const-string/jumbo v12, "siddecode"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->siddecode:Ljava/lang/String;

    .line 130
    const-string/jumbo v12, "uid"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->uid:Ljava/lang/String;

    .line 131
    const-string v12, "interact"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->interact:Z

    .line 133
    const-string/jumbo v12, "viddecode"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->viddecode:Ljava/lang/String;

    .line 134
    const-string v12, "ct"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->channelId:Ljava/lang/String;

    .line 135
    const-string v12, "cs"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->schannelid:Ljava/lang/String;

    .line 136
    const-string v12, "piddecode"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->piddecode:Ljava/lang/String;

    .line 137
    const-string v12, "copyright"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->copyright:Ljava/lang/String;

    .line 138
    const-string/jumbo v12, "trailers"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->trailers:Ljava/lang/String;

    .line 141
    const-string/jumbo v12, "weburl"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "weburl":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 143
    iput-object v11, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->weburl:Ljava/lang/String;

    .line 146
    :cond_1
    const-string v12, "img_hd"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "img":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 148
    iput-object v1, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->img:Ljava/lang/String;

    .line 150
    :cond_2
    const-string v12, "lang"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->videoLanguage:Ljava/lang/String;

    .line 152
    const-string/jumbo v12, "videoid"

    invoke-static {p1, v12}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "videoid":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 154
    iput-object v10, v2, Lcom/youku/gamecenter/data/VideoUrlInfo;->vid:Ljava/lang/String;

    .line 157
    :cond_3
    const-string/jumbo v12, "totalseconds"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v2, v12, v13}, Lcom/youku/gamecenter/data/VideoUrlInfo;->setDurationSecs(D)V

    .line 159
    const-string/jumbo v12, "results"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 160
    invoke-direct {p0, p1, v2}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseVideoInfo(Lorg/json/JSONObject;Lcom/youku/gamecenter/data/VideoUrlInfo;)V

    .line 162
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->isYouku:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getOnePayVideoPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getOnePayVideoPlayUrlTudou(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetVideoUrlService$OnGetVideoUrlServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/VideoUrlInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetVideoUrlService$OnGetVideoUrlServiceListener;->onSuccess(Lcom/youku/gamecenter/data/VideoUrlInfo;)V

    .line 41
    return-void
.end method

.method public parseData(Ljava/lang/String;)Lcom/youku/gamecenter/data/VideoUrlInfo;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "PlayFlow"

    const-string/jumbo v3, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/services/GetVideoUrlService;->setVideoUrlInfoFromJson(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/VideoUrlInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "PlayFlow"

    const-string/jumbo v3, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo \u51fa\u9519"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseData(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/VideoUrlInfo;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 78
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v5, "qwer3as2jin4fdsa"

    invoke-static {v0, v5}, Lcom/youku/gamecenter/util/SystemUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 79
    .local v2, "decrypt":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "PlayFlow"

    const-string/jumbo v6, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v4}, Lcom/youku/gamecenter/services/GetVideoUrlService;->setVideoUrlInfoFromJson(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/VideoUrlInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 87
    .end local v0    # "bytes":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "decrypt":Ljava/lang/String;
    .end local v4    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Lorg/json/JSONException;
    const-string v5, "PlayFlow"

    const-string/jumbo v6, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo \u51fa\u9519"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-boolean v3, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->isYouku:Z

    if-nez v3, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseData(Ljava/lang/String;)Lcom/youku/gamecenter/data/VideoUrlInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 56
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 61
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v1, :cond_2

    .line 62
    const-string v3, "PlayFlow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": jsonObject is null! json name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/services/GetVideoUrlService;->parseData(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/VideoUrlInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/gamecenter/services/GetVideoUrlService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
