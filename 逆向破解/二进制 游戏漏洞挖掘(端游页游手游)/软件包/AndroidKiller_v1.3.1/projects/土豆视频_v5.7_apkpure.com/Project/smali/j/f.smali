.class public Lj/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "4.0.0"

.field private static final b:Ljava/lang/String; = "Msp-Param"

.field private static final c:Ljava/lang/String; = "new_client_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/net/Request;
    .locals 5

    .prologue
    .line 49
    new-instance v1, Lcom/alipay/android/app/net/a;

    invoke-direct {v1}, Lcom/alipay/android/app/net/a;-><init>()V

    .line 50
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 52
    const-string v0, "com.alipay.mobilecashier"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 53
    const-string v0, "/device/findAccount"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 54
    const-string v0, "3.0.0"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    .line 57
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v2

    .line 58
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    :try_start_0
    invoke-virtual {v2}, Li/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    const-string/jumbo v4, "tid"

    invoke-virtual {v2}, Li/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :goto_0
    const-string/jumbo v2, "utdid"

    invoke-virtual {v0}, Lh/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "app_key"

    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v4

    invoke-virtual {v4}, Lh/b;->c()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v2, "new_client_key"

    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v2, "imei"

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v4

    invoke-virtual {v4}, Lh/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "imsi"

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v0

    invoke-virtual {v0}, Lh/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    new-instance v0, Lcom/alipay/android/app/net/Request;

    const/4 v2, 0x0

    sget-object v4, Lm/d;->b:Lm/d;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Li/b;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a(Lb/j;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    .line 94
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v3

    .line 96
    invoke-static {v1, p2}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    :try_start_0
    invoke-virtual {v3}, Li/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    const-string/jumbo v0, "tid"

    invoke-virtual {v3}, Li/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :goto_0
    const-string/jumbo v0, "user_agent"

    invoke-virtual {v2}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/alipay/android/app/d;->a(Li/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "has_alipay"

    invoke-virtual {v2}, Lh/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lh/a;->c(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    const-string v0, "external_info"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v0, "app_key"

    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v5

    invoke-virtual {v5}, Lh/b;->c()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v0, "utdid"

    invoke-virtual {v2}, Lh/b;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    const-string v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    const-string v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/d;

    .line 125
    :goto_2
    if-nez v0, :cond_0

    .line 126
    invoke-virtual {v2}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->v()Lm/d;

    move-result-object v0

    .line 129
    :cond_0
    sget-object v1, Lm/d;->b:Lm/d;

    if-ne v0, v1, :cond_3

    .line 130
    invoke-static {p1, v2, v3, v4, p3}, Lj/f;->a(Ljava/lang/String;Lh/b;Li/b;Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    .line 134
    :goto_3
    if-eqz v0, :cond_1

    .line 135
    invoke-static {p0, v0, p1}, Lj/f;->a(Lb/j;Lcom/alipay/android/app/net/Request;Ljava/lang/String;)V

    .line 137
    :cond_1
    return-object v0

    .line 102
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Li/b;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-static {p1, v2, v3, v4}, Lj/f;->a(Ljava/lang/String;Lh/b;Li/b;Lorg/json/JSONObject;)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Lh/b;Li/b;Lorg/json/JSONObject;)Lcom/alipay/android/app/net/Request;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    .line 145
    new-instance v2, Lcom/alipay/android/app/net/a;

    invoke-direct {v2}, Lcom/alipay/android/app/net/a;-><init>()V

    .line 146
    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Lcom/alipay/android/app/d;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Lcom/alipay/android/app/d;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 149
    invoke-interface {v0}, Lcom/alipay/android/app/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 152
    if-eqz p3, :cond_0

    .line 153
    new-instance v0, Lcom/alipay/android/app/net/Request;

    sget-object v3, Lm/d;->a:Lm/d;

    invoke-direct {v0, v2, p3, v1, v3}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    .line 156
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lh/b;Li/b;Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    .line 163
    new-instance v2, Lcom/alipay/android/app/net/a;

    invoke-direct {v2}, Lcom/alipay/android/app/net/a;-><init>()V

    .line 164
    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 165
    const-string v0, "com.alipay.mobilecashier"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 166
    const-string v0, "/cashier/main"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 167
    const-string v0, "4.0.0"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 169
    if-eqz p3, :cond_0

    .line 172
    :try_start_0
    const-string v0, "new_client_key"

    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    new-instance v0, Lcom/alipay/android/app/net/Request;

    sget-object v3, Lm/d;->b:Lm/d;

    invoke-direct {v0, v2, p3, v1, v3}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    .line 176
    invoke-virtual {v0, p4}, Lcom/alipay/android/app/net/Request;->a(Z)V

    .line 178
    :goto_1
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/android/app/net/Request;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/alipay/android/app/net/a;

    invoke-direct {v0}, Lcom/alipay/android/app/net/a;-><init>()V

    .line 81
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.alipay.mobilecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 84
    const-string v1, "gen.tid"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 85
    const-string v1, "1.0.0"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/alipay/android/app/net/Request;

    const/4 v2, 0x0

    sget-object v3, Lm/d;->a:Lm/d;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    .line 87
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    return-object v0

    .line 279
    :cond_1
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 280
    array-length v1, v3

    if-eqz v1, :cond_0

    .line 284
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    invoke-static {v2}, Lj/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Lb/j;Lcom/alipay/android/app/net/Request;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v1, "&"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 200
    array-length v1, v6

    if-eqz v1, :cond_0

    .line 208
    array-length v7, v6

    move v4, v5

    move-object v3, v0

    move-object v2, v0

    move-object v1, v0

    :goto_1
    if-ge v4, v7, :cond_6

    aget-object v8, v6, v4

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 210
    invoke-static {v8}, Lj/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 214
    invoke-static {v8}, Lj/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 218
    invoke-static {v8}, Lj/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 221
    invoke-static {v8}, Lj/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "biz_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "biz_no="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trade_no="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_userid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/Header;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Msp-Param"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lb/j;->a([Lorg/apache/http/Header;)V

    .line 254
    invoke-virtual {p1, p0}, Lcom/alipay/android/app/net/Request;->a(Lb/j;)V

    goto/16 :goto_0
.end method

.method public static a(Lb/j;Lorg/apache/http/HttpResponse;)V
    .locals 2

    .prologue
    .line 259
    const-string v0, "Msp-Param"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 260
    if-eqz p0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 261
    invoke-virtual {p0, v0}, Lb/j;->a([Lorg/apache/http/Header;)V

    .line 264
    :cond_0
    return-void
.end method

.method public static a([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/UnZipException;
        }
    .end annotation

    .prologue
    .line 395
    .line 397
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 398
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 399
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 401
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 402
    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 403
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 412
    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string v1, "UnsupportedEncodingException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 406
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 407
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 408
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 409
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    return-object v2

    .line 413
    :catch_1
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 415
    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string v1, "IOException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string v0, "biz_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lj/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 359
    const-string v0, "client_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "client_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string/jumbo v1, "tid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->b()Landroid/content/Context;

    move-result-object v2

    .line 366
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v3

    .line 367
    invoke-virtual {v3, v1}, Li/b;->a(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3, v0}, Li/b;->b(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3, v2}, Li/b;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 375
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 377
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v3

    invoke-virtual {v3}, Lh/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 390
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string v0, "biz_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lj/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string/jumbo v0, "trade_no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lj/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 335
    const/4 v0, 0x0

    .line 336
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 337
    aget-object v0, v1, v3

    .line 338
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string v0, "app_userid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lj/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
