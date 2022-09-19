.class public Lcom/tudou/upload/UploadConfig;
.super Ljava/lang/Object;
.source "UploadConfig.java"


# static fields
.field public static final BROADCAST_UPLOAD_CHANGE:Ljava/lang/String; = "com.youku.paike.broadcast_upload_event_fragment"

.field public static final CATEGORY:I = 0x5c

.field public static final CATEGORY_ORIGINAL:Ljava/lang/String; = "Original"

.field public static final CHECK_INTERVAL:I = 0x3c

.field public static final CLIENT_ID:Ljava/lang/String; = "8020077c0bbf7fc2"

.field public static final CLIENT_SECRET:Ljava/lang/String; = "567d95ceab365bbb795e41a680ae6f75"

.field public static final COPYRIGHT_ORIGINAL:Ljava/lang/String; = "original"

.field public static final COPYRIGHT_REPRODUCED:Ljava/lang/String; = "reproduced"

.field public static final DB_NAME:Ljava/lang/String; = "paike.db"

.field public static final DB_VERSION:I = 0x1

.field public static final DEBUG_MODE_OPENED:Z = false

.field public static final MAX_THREAD_COUNT:I = 0x2

.field public static final PRIVACY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_PASSWORD:I = 0x4

.field public static final PRIVACY_PUBLIC:I = 0x0

.field public static final PRIVACY_SOME:I = 0x1

.field public static final R_ID_1:I = 0x7f0c0b12

.field public static final R_ID_2:I = 0x7f0c0b14

.field public static final R_ID_3:I = 0x7f0c0b15

.field public static final R_ID_4:I = 0x7f0c0b16

.field public static final R_LAYOUT_1:I = 0x7f030249

.field public static final R_STRING_1:I = 0x7f0d046a

.field public static final R_STRING_2:I = 0x7f0d0466

.field public static final R_STRING_3:I = 0x7f0d0460

.field public static final R_STRING_4:I = 0x7f0d0467

.field public static final R_STRING_5:I = 0x7f0d000e

.field public static final R_STRING_6:I = 0x7f0d03dc

.field public static final R_STRING_7:I = 0x7f0d0458

.field public static final R_STRING_8:I = 0x7f0d011c

.field public static final R_STRING_9:I = 0x7f0d0463

.field public static STAT_COMPETE_UPLOAD:Ljava/lang/String; = null

.field public static STAT_START_UPLOAD:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "\u4f18\u9177\u62cd\u5ba2 Android \u62cd\u5ba2 \u539f\u521b"

.field public static final TASK_PARA_INFO_PARA_NAME:Ljava/lang/String; = "TASK_INFO"

.field public static final TASK_PARA_SESSION_PARA_NAME:Ljava/lang/String; = "TASK_SESSION"

.field public static final TASK_TYPE_NEW:I = 0x0

.field public static final TASK_TYPE_PARA_NAME:Ljava/lang/String; = "TASK_TYPE"

.field public static final TASK_TYPE_QUEUE:I = 0x1

.field public static final TASK_TYPE_QUEUE_SESSION:I = 0x2

.field public static final TASK_TYPE_QUEUE_SESSION_PRETASK:I = 0x3

.field public static final TIMEOUT:I = 0x7530

.field public static final TIMEOUT_UPLOAD_DATA:I = 0x1d4c0

.field public static final UPDATE_UI_BROADCAST_NAME:Ljava/lang/String; = "com.youku.paike.broadcast_upload_event_fragment"

.field public static final UPLOAD_3G_CHANGE:Ljava/lang/String; = "upload_3g_change"

.field public static final UPLOAD_ANY:I = 0x0

.field public static final UPLOAD_FINISH_BROADCAST:Ljava/lang/String; = "UPLOAD_FINISH_BROADCAST"

.field public static final UPLOAD_START_BROADCAST:Ljava/lang/String; = "UPLOAD_START_BROADCAST"

.field public static final UPLOAD_TASK_SUCCESS_BROADCAST:Ljava/lang/String; = "UPLOAD_TASK_SUCCESS_BROADCAST"

.field public static final UPLOAD_WIFI:I = 0x1

.field public static final URL:Ljava/lang/String; = "http://pkapi.m.youku.com/"

.field public static final URL_CANCEL:Ljava/lang/String; = "http://openapi.youku.com/v2/uploads/cancel.json"

.field public static final URL_CHECK:Ljava/lang/String; = "http://upload_server_uri/check"

.field public static final URL_COMMIT:Ljava/lang/String; = "https://openapi.youku.com/v2/uploads/commit.json"

.field public static final URL_CREATE:Ljava/lang/String; = "https://openapi.youku.com/v2/uploads/create.json"

.field public static final URL_CREATE_FILE:Ljava/lang/String; = "http://upload_server_uri/create_file"

.field public static final URL_LOGIN:Ljava/lang/String; = "https://openapi.youku.com/v2/oauth2/token"

.field public static final URL_NEW_SLICE:Ljava/lang/String; = "http://upload_server_uri/new_slice"

.field public static final URL_RESET_SLICE:Ljava/lang/String; = "http://upload_server_uri/reset_slice"

.field public static final URL_SLICES:Ljava/lang/String; = "http://upload_server_uri/slices"

.field public static final URL_SPEC:Ljava/lang/String; = "http://openapi.youku.com/v2/schemas/upload/spec.json"

.field public static final URL_UPLOAD_SLICE:Ljava/lang/String; = "http://upload_server_uri/upload_slice"

.field public static isAlertedNet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUrlUploadTaskStart()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/upload/UploadConfig;->STAT_START_UPLOAD:Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUrlUploadTaskAdd()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/upload/UploadConfig;->STAT_COMPETE_UPLOAD:Ljava/lang/String;

    .line 361
    sput-boolean v1, Lcom/tudou/upload/UploadConfig;->isAlertedNet:Z

    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadConfig;->PRIVACY_MAP:Ljava/util/Map;

    .line 437
    sget-object v0, Lcom/tudou/upload/UploadConfig;->PRIVACY_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "all"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/tudou/upload/UploadConfig;->PRIVACY_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "friend"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/tudou/upload/UploadConfig;->PRIVACY_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getSliceSize()I
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public static getUploadAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "uploadAccessToken"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, "uploadRefreshToken"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadSetting()Z
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getUrlUploadTaskAdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "http://pkapi.m.youku.com/openapi-wireless/user/uploads/add"

    return-object v0
.end method

.method public static getUrlUploadTaskStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "http://pkapi.m.youku.com/openapi-wireless/statis/video-uploads"

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "uid"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "userName"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/tudou/android/TudouApi;->getUserPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static googleStatCreate()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public static hasInternet()Z
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    return v0
.end method

.method public static isNet3G()Z
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    return v0
.end method

.method public static join([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "objs"    # [Ljava/lang/Integer;

    .prologue
    .line 256
    invoke-static {p0}, Lcom/youku/util/Util;->join([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "paras"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/tudou/upload/UploadConfig;->postApi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static postApi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/youku/http/URLContainer;->statistic:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "postParas":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP POST::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP POST DATA::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 165
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "url_":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 167
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 169
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 170
    const/16 v7, 0x7530

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 171
    const/16 v7, 0x7530

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 172
    const-string v7, "Cookie"

    sget-object v8, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "User-agent"

    sget-object v8, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 176
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    .local v2, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 179
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP POST RESULT::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 189
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "url_":Ljava/net/URL;
    :goto_0
    return v5

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "url_":Ljava/net/URL;
    :cond_0
    move v5, v6

    .line 185
    goto :goto_0

    .line 186
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "url_":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 189
    goto :goto_0
.end method

.method public static saveUploadAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p0, "access_token"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "uploadAccessToken"

    invoke-static {v0, p0}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static saveUploadRefreshToken(Ljava/lang/String;)V
    .locals 1
    .param p0, "refresh_token"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "uploadRefreshToken"

    invoke-static {v0, p0}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static showTips(I)V
    .locals 0
    .param p0, "textId"    # I

    .prologue
    .line 130
    invoke-static {p0}, Lcom/youku/util/Util;->showTips(I)V

    .line 131
    return-void
.end method

.method public static showTips(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static upload3G()Z
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->isNet3G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUploadSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static uploadSettingIsOk()Z
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->isNet3G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUploadSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static youkuStatCreate()V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/tudou/upload/UploadConfig;->STAT_START_UPLOAD:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tudou/upload/UploadConfig;->post(Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    return-void
.end method

.method public static youkuStatFinish(Lcom/tudou/upload/UploadInfo;Ljava/lang/String;)V
    .locals 5
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v1, Lcom/tudou/upload/UploadConfig;->STAT_COMPETE_UPLOAD:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->isNewVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&longitude="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&latitude="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&loc_lng="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&loc_lat="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&loc_name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&loc_address="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tudou/upload/UploadConfig;->post(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    sget-object v1, Lcom/tudou/upload/UploadConfig;->STAT_COMPETE_UPLOAD:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->isNewVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&longitude="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&latitude="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&loc_lng="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&loc_lat="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&loc_name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&loc_address="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tudou/upload/UploadConfig;->post(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    :cond_0
    return-void

    .line 203
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    :cond_4
    const-string v0, ""

    goto/16 :goto_3

    .line 225
    :cond_5
    const-string v0, ""

    goto/16 :goto_4

    :cond_6
    const-string v0, ""

    goto :goto_5

    :cond_7
    const-string v0, ""

    goto :goto_6

    :cond_8
    const-string v0, ""

    goto :goto_7
.end method
