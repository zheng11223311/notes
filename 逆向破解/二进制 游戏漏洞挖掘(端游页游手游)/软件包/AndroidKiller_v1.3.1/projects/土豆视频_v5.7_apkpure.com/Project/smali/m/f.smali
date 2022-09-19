.class public Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lb/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lm/f;->a:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lb/j;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lm/f;->a:I

    .line 55
    iput-object p1, p0, Lm/f;->b:Lb/j;

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb/j;Lcom/alipay/android/app/net/e;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lm/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb/j;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {p5, v2}, Lcom/alipay/android/app/net/e;->a(I)V

    .line 235
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/alipay/android/app/net/e;->a(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lm/f;->b:Lb/j;

    invoke-static {v1, v0}, Lj/f;->a(Lb/j;Lorg/apache/http/HttpResponse;)V

    .line 239
    invoke-static {v0}, Lm/e;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p5, p2, p3}, Lm/f;->a(Ljava/lang/String;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    invoke-virtual {p3}, Lcom/alipay/android/app/net/e;->i()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    iget v1, p0, Lm/f;->a:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 195
    iget v0, p0, Lm/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm/f;->a:I

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lm/f;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/android/app/net/e;->i()I

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    const-string/jumbo v1, "server cann\'t respone data"

    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-virtual {p3}, Lcom/alipay/android/app/net/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lm/f;->a:I

    .line 205
    const-string/jumbo v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "response data is empty"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_2
    invoke-static {p4, v0}, Lcom/alipay/android/app/encrypt/TriDes;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/h;->c(Ljava/lang/String;)V

    .line 213
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p3, p1, p2}, Lm/f;->a(Ljava/lang/String;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj/h;->c(Ljava/lang/String;)V

    .line 222
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3e8

    const/16 v2, 0x1f7

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_3

    .line 255
    const-string v1, "code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/alipay/android/app/net/e;->a(I)V

    .line 256
    const-string v1, "error_msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/alipay/android/app/net/e;->a(Ljava/lang/String;)V

    .line 258
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p3}, Lcom/alipay/android/app/net/e;->i()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 262
    invoke-direct {p0, v0}, Lm/f;->a(Lorg/json/JSONObject;)V

    .line 265
    :cond_0
    new-instance v1, Lcom/alipay/android/app/net/a;

    invoke-direct {v1}, Lcom/alipay/android/app/net/a;-><init>()V

    .line 266
    const-string v2, "next_api_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 267
    const-string v2, "next_api_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 268
    const-string v2, "next_namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 269
    const-string v2, "next_request_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3, v1}, Lcom/alipay/android/app/net/e;->a(Lcom/alipay/android/app/net/a;)V

    .line 282
    :goto_0
    return-object v0

    .line 273
    :cond_1
    invoke-virtual {p3}, Lcom/alipay/android/app/net/e;->i()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 274
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    const-string/jumbo v1, "update rsa key"

    const-string/jumbo v2, "rsponse data is no key"

    invoke-virtual {v0, v1, v2}, Lf/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p3, v2}, Lcom/alipay/android/app/net/e;->a(I)V

    .line 280
    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/alipay/android/app/net/e;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 286
    const-string v0, "public_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/d;->a(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    const-string/jumbo v1, "update rsa key"

    const-string/jumbo v2, "rsponse data is no key"

    invoke-virtual {v0, v1, v2}, Lf/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 158
    .line 161
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 164
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_1

    .line 168
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    if-eqz v2, :cond_0

    .line 178
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 184
    :cond_0
    :goto_2
    return-object v0

    .line 171
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 176
    if-eqz v2, :cond_0

    .line 178
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 179
    :catch_1
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 179
    :catch_2
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 178
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 181
    :cond_2
    :goto_4
    throw v0

    .line 179
    :catch_3
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 176
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 173
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Z)Lm/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/exception/UnZipException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Lcom/alipay/android/app/net/e;

    invoke-direct {v2}, Lcom/alipay/android/app/net/e;-><init>()V

    .line 69
    invoke-virtual {p0, p1, p2, v2}, Lm/f;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)Lorg/json/JSONObject;

    move-result-object v3

    .line 70
    const-string/jumbo v0, "reflected_data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->f()Lm/d;

    move-result-object v0

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const-string v0, "minipay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_3

    sget-object v0, Lm/d;->b:Lm/d;

    .line 79
    :cond_0
    :goto_0
    sget-object v1, Lm/d;->a:Lm/d;

    if-ne v0, v1, :cond_1

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/net/e;->b(Z)V

    .line 82
    :cond_1
    const-string v1, "gzip"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    const-string v1, "form"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_2

    const-string v4, "quickpay"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    const-string v4, "quickpay"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 89
    :try_start_0
    invoke-static {v1}, Lj/f;->a([B)[B

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32_byte([B)Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v5, "md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 94
    const-string v1, "form"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/UnZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responsestring decoded "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj/h;->a(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lm/a;

    invoke-direct {v1, p2, v2}, Lm/a;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 113
    invoke-virtual {v1, v3}, Lm/a;->a(Lorg/json/JSONObject;)V

    .line 114
    if-eqz p3, :cond_6

    move-object v0, v1

    .line 117
    :goto_2
    return-object v0

    .line 76
    :cond_3
    sget-object v0, Lm/d;->a:Lm/d;

    goto :goto_0

    .line 96
    :cond_4
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string v1, "client md5  not equal server md5"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/UnZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "unzip byte array unsupport encoding"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    throw v0

    .line 104
    :catch_2
    move-exception v0

    .line 105
    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "unzip string not jsonObject"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/net/e;->a(Z)V

    goto :goto_1

    .line 116
    :cond_6
    invoke-static {v0, v1}, Lm/b;->a(Lm/d;Lm/a;)Lm/a;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lh/b;->j()Ljava/lang/String;

    move-result-object v6

    .line 127
    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v6}, Lcom/alipay/android/app/net/Request;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->d()Lb/j;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lm/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb/j;Lcom/alipay/android/app/net/e;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/alipay/android/app/net/e;->a(J)V

    .line 135
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    .line 136
    invoke-direct/range {v0 .. v5}, Lm/f;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-direct {p0, p2, p3, v5}, Lm/f;->a(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    throw v0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    throw v0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    throw v0

    .line 151
    :catch_3
    move-exception v0

    .line 152
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
.end method
