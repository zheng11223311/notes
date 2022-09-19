.class public Lcom/youku/player/goplay/TaskGetVideoAdvUrl;
.super Lcom/baseproject/network/YoukuAsyncTask;
.source "TaskGetVideoAdvUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseproject/network/YoukuAsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final TIMEOUT:I

.field private exceptionString:Ljava/lang/String;

.field private fail:I

.field private message:I

.field private requrl:Ljava/lang/String;

.field private responseString:Ljava/lang/String;

.field private success:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requrl"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Lcom/baseproject/network/YoukuAsyncTask;-><init>()V

    .line 40
    const/16 v0, 0x1388

    iput v0, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->TIMEOUT:I

    .line 45
    iput-object v2, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    iput-object v2, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->responseString:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->requrl:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->success:I

    .line 65
    iput v1, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->fail:I

    .line 66
    iput-object p2, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->userAgent:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private connectAPI()V
    .locals 18

    .prologue
    .line 92
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    .line 93
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->responseString:Ljava/lang/String;

    .line 95
    const/4 v12, 0x0

    .line 96
    .local v12, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 98
    .local v9, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v15, 0x1388

    invoke-static {v9, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    const/16 v15, 0x1388

    invoke-static {v9, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 102
    .local v7, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->requrl:Ljava/lang/String;

    invoke-direct {v8, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 104
    .local v8, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v15, "User-Agent"

    sget-object v16, Lcom/youku/player/goplay/Profile;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v15, "ad_cookie"

    invoke-static {v15}, Lcom/youku/player/util/PlayerPreference;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 107
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 108
    const-string v15, "Cookie"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCookie()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ad_cookie"

    invoke-static/range {v17 .. v17}, Lcom/youku/player/util/PlayerPreference;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {v7, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 121
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 122
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 124
    invoke-static {v12}, Lcom/baseproject/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 125
    .local v13, "jsonString":Ljava/lang/String;
    const-string v15, "Set-Cookie"

    invoke-interface {v10, v15}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 126
    .local v6, "headers":[Lorg/apache/http/Header;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v1, "advBuffer":Ljava/lang/StringBuffer;
    move-object v2, v6

    .local v2, "arr$":[Lorg/apache/http/Header;
    array-length v14, v2

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v14, :cond_3

    aget-object v5, v2, v11

    .line 128
    .local v5, "header":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "cookie":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v15, ";"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "advBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "arr$":[Lorg/apache/http/Header;
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v5    # "header":Lorg/apache/http/Header;
    .end local v6    # "headers":[Lorg/apache/http/Header;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "i$":I
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "len$":I
    :cond_1
    const-string v15, "Cookie"

    const-string v16, "ad_cookie"

    invoke-static/range {v16 .. v16}, Lcom/youku/player/util/PlayerPreference;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 143
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v4

    .line 144
    .local v4, "e":Ljava/net/MalformedURLException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    iget v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->fail:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->message:I

    .line 146
    const-string v15, "1"

    invoke-static {v15}, Lcom/youku/player/Track;->setAdReqError(Ljava/lang/String;)V

    .line 147
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sget-object v16, Lcom/youku/player/LogTag;->MSG_EXCEPTION:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :goto_2
    return-void

    .line 117
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 118
    const-string v15, "Cookie"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCookie()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 148
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    :catch_1
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/IOException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    iget v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->fail:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->message:I

    .line 151
    const-string v15, "1"

    invoke-static {v15}, Lcom/youku/player/Track;->setAdReqError(Ljava/lang/String;)V

    .line 152
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sget-object v16, Lcom/youku/player/LogTag;->MSG_EXCEPTION:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "advBuffer":Ljava/lang/StringBuffer;
    .restart local v2    # "arr$":[Lorg/apache/http/Header;
    .restart local v6    # "headers":[Lorg/apache/http/Header;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v11    # "i$":I
    .restart local v13    # "jsonString":Ljava/lang/String;
    .restart local v14    # "len$":I
    :cond_3
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 134
    const-string v15, "ad_cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->responseString:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p0

    iget v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->success:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->message:I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 153
    .end local v1    # "advBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "arr$":[Lorg/apache/http/Header;
    .end local v6    # "headers":[Lorg/apache/http/Header;
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "i$":I
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "len$":I
    :catch_2
    move-exception v4

    .line 154
    .local v4, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p0

    iget v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->fail:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->message:I

    .line 156
    const-string v15, "1"

    invoke-static {v15}, Lcom/youku/player/Track;->setAdReqError(Ljava/lang/String;)V

    .line 157
    sget-object v15, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sget-object v16, Lcom/youku/player/LogTag;->MSG_EXCEPTION:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 140
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->fail:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->message:I

    .line 141
    const-string v15, "2"

    invoke-static {v15}, Lcom/youku/player/Track;->setAdReqError(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method private getCookie(Lorg/apache/http/impl/client/DefaultHttpClient;)Ljava/lang/String;
    .locals 9
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 167
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v6, "s":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 170
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 171
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "cookieName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "cookieValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "cookieValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->connectAPI()V

    .line 72
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 79
    .local v1, "message":Landroid/os/Message;
    :try_start_0
    iget v2, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->message:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 80
    new-instance v2, Lcom/youku/player/goplay/VideoAdvInfoResult;

    iget-object v3, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->responseString:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/youku/player/goplay/VideoAdvInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/baseproject/network/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->exceptionString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method

.method public setFail(I)V
    .locals 0
    .param p1, "fail"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->fail:I

    .line 60
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->requrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/youku/player/goplay/TaskGetVideoAdvUrl;->success:I

    .line 56
    return-void
.end method
