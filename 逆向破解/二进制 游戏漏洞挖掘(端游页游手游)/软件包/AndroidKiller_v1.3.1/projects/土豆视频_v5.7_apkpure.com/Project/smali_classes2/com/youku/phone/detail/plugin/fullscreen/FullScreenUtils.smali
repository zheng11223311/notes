.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;
.super Ljava/lang/Object;
.source "FullScreenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertNetWorkSet(Landroid/app/Activity;)V
    .locals 3
    .param p0, "c"    # Landroid/app/Activity;

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const v1, 0x7f0d00b2

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 191
    const v1, 0x7f0d00c9

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$2;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 204
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    const/high16 v1, 0x7f0d0000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_0
.end method

.method public static getFormatTime(J)Ljava/lang/String;
    .locals 14
    .param p0, "millseconds"    # J

    .prologue
    .line 138
    const-wide/16 v10, 0x3e8

    div-long v8, p0, v10

    .line 139
    .local v8, "seconds":J
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 141
    .local v2, "hour":J
    const-wide/16 v10, 0x3c

    div-long v10, v8, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v2

    sub-long v4, v10, v12

    .line 142
    .local v4, "min":J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v2

    sub-long v10, v8, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    sub-long v6, v10, v12

    .line 143
    .local v6, "sec":J
    const-wide/16 v10, 0xa

    cmp-long v1, v2, v10

    if-gez v1, :cond_0

    .line 144
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-wide/16 v10, 0xa

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    .line 148
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-wide/16 v10, 0xa

    cmp-long v1, v6, v10

    if-gez v1, :cond_2

    .line 152
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFormatTimeForGesture(J)Ljava/lang/String;
    .locals 14
    .param p0, "millseconds"    # J

    .prologue
    const-wide/16 v12, 0x3c

    const-wide/16 v10, 0xa

    .line 438
    const-wide/16 v8, 0x3e8

    div-long v6, p0, v8

    .line 440
    .local v6, "tempSeconds":J
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v0, "buf":Ljava/lang/StringBuffer;
    rem-long v4, v6, v12

    .line 444
    .local v4, "seconds":J
    div-long v2, v6, v12

    .line 446
    .local v2, "minutes":J
    cmp-long v1, v2, v10

    if-gez v1, :cond_0

    .line 447
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    .line 451
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getJsonArrayList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "guests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 126
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 127
    .restart local v1    # "i":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getJsonBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 4
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    const-string v2, "Youku"

    const-string v3, "FullScreenUtils#getJsonBoolean()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getJsonDetailSeriesList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v4, "videoSeriesLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;>;"
    if-eqz p0, :cond_2

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 56
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 57
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;

    invoke-direct {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;-><init>()V

    .line 59
    .local v3, "videoSeriesList":Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
    const-string v5, "videoid"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setId(Ljava/lang/String;)V

    .line 60
    const-string v5, "title"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setTitle(Ljava/lang/String;)V

    .line 61
    const-string v5, "desc"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setDesc(Ljava/lang/String;)V

    .line 63
    const-string v5, "show_videoseq"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setShow_videoseq(I)V

    .line 66
    const-string v5, "show_videostage"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setShow_videostage(Ljava/lang/String;)V

    .line 68
    const-string v5, "is_new"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 69
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setIsNew(I)V

    .line 72
    :goto_1
    const-string v5, "limit"

    invoke-static {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setLimited(I)V

    .line 73
    const-string v5, "guest"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "guest"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 75
    const-string v5, "guest"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getJsonArrayList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setGuest(Ljava/util/ArrayList;)V

    .line 79
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "videoSeriesList":Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "videoSeriesList":Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setIsNew(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "videoSeriesList":Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Youku"

    const-string v6, "FullScreenUtils#getJsonDetailSeriesList()"

    invoke-static {v5, v6, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "videoSeriesList":Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->setGuest(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 88
    .end local v1    # "i":I
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "videoSeriesList":Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
    :cond_2
    return-object v4
.end method

.method public static getJsonInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    const-string v2, "Youku"

    const-string v3, "FullScreenUtils#getJsonInt()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getJsonValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 93
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    const-string v1, "Youku"

    const-string v2, "FullScreenUtils#getJsonValue()"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    const-string v1, ""

    goto :goto_0
.end method

.method public static goDownload(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/youku/phone/detail/DetailUtil;->readCachedFormat(Landroid/content/Context;)I

    move-result v1

    .line 414
    .local v1, "format":I
    const/4 v0, 0x5

    .line 415
    .local v0, "downloadFormat":I
    sget-boolean v2, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v2, :cond_1

    .line 416
    const/4 v0, 0x4

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    if-eqz v1, :cond_0

    .line 420
    move v0, v1

    goto :goto_0
.end method

.method public static hasInternet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 169
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 171
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 172
    const/4 v3, 0x1

    .line 177
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 170
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static showPlayNextDialog(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Z)V
    .locals 9
    .param p0, "context"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p1, "currentInfo"    # Lcom/tudou/service/download/DownloadInfo;
    .param p2, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "pluginFullScreenPlay"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;
    .param p4, "auto"    # Z

    .prologue
    .line 214
    new-instance v6, Lcom/youku/widget/TudouDialog;

    invoke-direct {v6, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 215
    .local v6, "dialog":Lcom/youku/widget/TudouDialog;
    const-string v8, "\u5728\u7ebf\u7eed\u64ad"

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;-><init>(Lcom/tudou/service/download/DownloadInfo;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Lcom/youku/player/plugin/MediaPlayerDelegate;ZLcom/tudou/ui/activity/DetailActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v6, v8, v0}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 277
    const-string v0, "\u7acb\u5373\u7f13\u5b58"

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    invoke-direct {v1, p1, p3, p2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;-><init>(Lcom/tudou/service/download/DownloadInfo;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v6, v0, v1}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string v7, "\u662f\u5426\u7eed\u64ad\u4e0b\u4e00\u96c6"

    .line 380
    .local v7, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v7}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/youku/widget/TudouDialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$5;

    invoke-direct {v0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$5;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v6, v0}, Lcom/youku/widget/TudouDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 389
    invoke-virtual {v6}, Lcom/youku/widget/TudouDialog;->show()V

    .line 390
    return-void

    .line 378
    .end local v7    # "title":Ljava/lang/String;
    :cond_0
    const-string v7, "\u5f53\u524d\u4e3a\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u7eed\u64ad\u4e0b\u4e00\u96c6"

    .restart local v7    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public static vvExposure(Lcom/youku/player/module/VVPlayInfo;)V
    .locals 5
    .param p0, "vvinfo"    # Lcom/youku/player/module/VVPlayInfo;

    .prologue
    .line 393
    const-string v2, "yueliang"

    const-string v3, "vvExposure"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-nez p0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 399
    .local v1, "request":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-virtual {p0}, Lcom/youku/player/module/VVPlayInfo;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/youku/player/module/VVPlayInfo;->getAlbumID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/player/module/VVPlayInfo;->getAlbumItemLength()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/youku/http/TudouURLContainer;->getExposureVVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
