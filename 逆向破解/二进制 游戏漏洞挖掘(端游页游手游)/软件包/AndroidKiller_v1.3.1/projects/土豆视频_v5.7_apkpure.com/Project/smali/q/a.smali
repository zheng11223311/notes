.class public Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/a$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lm/d;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lm/d;->b:Lm/d;

    return-object v0
.end method

.method public a(Lm/a;)Lq/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lm/a;->j()Lcom/alipay/android/app/net/Request;

    move-result-object v2

    .line 62
    invoke-virtual {p1}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v3

    .line 63
    invoke-virtual {p1}, Lm/a;->m()Lorg/json/JSONObject;

    move-result-object v4

    .line 64
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mini_app_error"

    invoke-static {v1}, Lj/i;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 67
    const-string v5, "form"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    new-instance v0, Lq/c;

    invoke-direct {v0, v2, v3}, Lq/c;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 69
    invoke-virtual {p1}, Lm/a;->m()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq/c;->a(Lorg/json/JSONObject;)V

    .line 93
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v5}, Lq/b;->a(Ljava/lang/String;)Lq/b;

    move-result-object v5

    .line 73
    sget-object v6, Lq/a$1;->a:[I

    invoke-virtual {v5}, Lq/b;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 84
    const-string v1, "msg"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :goto_1
    new-instance v1, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :pswitch_0
    new-instance v0, Lq/c;

    invoke-direct {v0, v2, v3}, Lq/c;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 78
    invoke-virtual {v0, v4}, Lq/c;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {}, Li/b;->h()V

    move-object v0, v1

    .line 82
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 85
    goto :goto_1

    .line 89
    :cond_2
    new-instance v1, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lm/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Lm/a;->m()Lorg/json/JSONObject;

    move-result-object v3

    .line 102
    const-string v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Lm/a;->b(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-virtual {p1}, Lm/a;->j()Lcom/alipay/android/app/net/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Request;->g()Lcom/alipay/android/app/net/a;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/alipay/android/app/net/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/alipay/android/app/net/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/android/app/net/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/alipay/android/app/net/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 116
    :cond_2
    invoke-virtual {v1}, Lcom/alipay/android/app/net/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    invoke-virtual {v0}, Lcom/alipay/android/app/net/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/android/app/net/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    invoke-virtual {v0}, Lcom/alipay/android/app/net/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 123
    :cond_4
    const-string/jumbo v0, "session"

    .line 124
    const-string/jumbo v1, "reflected_data"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_6

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/h;->d(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/e;->a(Lorg/json/JSONObject;)V

    .line 145
    :cond_5
    :goto_0
    const-string v0, "end_code"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/e;->b(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "user_id"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/e;->e(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :try_start_0
    const-string/jumbo v1, "result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 154
    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/e;->c(Ljava/lang/String;)V

    .line 155
    const-string v0, "memo"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/e;->d(Ljava/lang/String;)V

    .line 156
    return-void

    .line 129
    :cond_6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 132
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v0

    invoke-virtual {v0}, Li/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 135
    const-string/jumbo v0, "tid"

    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v4

    invoke-virtual {v4}, Li/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_7
    invoke-virtual {v2, v1}, Lcom/alipay/android/app/net/e;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "can not put reflected values"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 151
    :catch_1
    move-exception v1

    .line 152
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public synthetic c(Lm/a;)Lo/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lq/a;->a(Lm/a;)Lq/c;

    move-result-object v0

    return-object v0
.end method
