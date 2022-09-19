.class public Lcom/alipay/android/mini/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ll/a;

.field private c:Lr/f;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lb/m;

.field private j:Lcom/alipay/android/mini/window/sdk/k;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lb/m;Lcom/alipay/android/mini/window/sdk/k;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/alipay/android/mini/util/j;->i:Lb/m;

    .line 44
    iput-object v0, p0, Lcom/alipay/android/mini/util/j;->j:Lcom/alipay/android/mini/window/sdk/k;

    .line 48
    iput-boolean v1, p0, Lcom/alipay/android/mini/util/j;->a:Z

    .line 49
    iput-object p2, p0, Lcom/alipay/android/mini/util/j;->h:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/alipay/android/mini/util/j;->i:Lb/m;

    .line 51
    iput-object p4, p0, Lcom/alipay/android/mini/util/j;->j:Lcom/alipay/android/mini/window/sdk/k;

    .line 52
    const-string/jumbo v0, "smsread"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    const-string/jumbo v0, "template"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/util/j;->d:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "rules"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 58
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 59
    if-lez v0, :cond_0

    .line 60
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/util/j;->e:Ljava/lang/String;

    .line 66
    :cond_2
    const-string/jumbo v0, "tempGroup"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/util/j;->f:I

    .line 67
    const-string v0, "readTime"

    const/16 v1, 0xb4

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/util/j;->g:I

    .line 70
    :cond_3
    new-instance v0, Lcom/alipay/android/mini/util/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/util/k;-><init>(Lcom/alipay/android/mini/util/j;)V

    iput-object v0, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    .line 106
    new-instance v0, Ll/a;

    invoke-direct {v0}, Ll/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/util/j;->b:Ll/a;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lr/f;Ll/a;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLb/m;)V
    .locals 0

    .prologue
    .line 26
    invoke-static/range {p0 .. p10}, Lcom/alipay/android/mini/util/j;->b(Lr/f;Ll/a;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLb/m;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/j;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/alipay/android/mini/util/j;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Lr/f;Ll/a;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLb/m;)V
    .locals 8

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    :goto_0
    invoke-virtual {p1}, Ll/a;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p6

    cmp-long v3, v4, p8

    if-gez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    const-string v2, "msp"

    const-string v3, " ReadSms while"

    invoke-static {v2, v3}, Lj/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 200
    const-wide/16 v2, 0x9c4

    sub-long v0, v2, v0

    .line 201
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 202
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p10

    .line 206
    invoke-virtual/range {v0 .. v5}, Ll/a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILb/m;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "read sms value is empty"

    invoke-static {v1}, Lj/h;->d(Ljava/lang/String;)V

    move-object v2, v0

    move-wide v0, v6

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0, v0}, Lr/f;->b(Ljava/lang/String;)V

    .line 216
    :cond_2
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/mini/util/j;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/android/mini/util/j;->f:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/util/j;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/android/mini/util/j;->g:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/util/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/util/j;)Lcom/alipay/android/mini/window/sdk/k;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->j:Lcom/alipay/android/mini/window/sdk/k;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/mini/util/j;)Lr/f;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/mini/util/j;)Ll/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->b:Ll/a;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/mini/util/j;)Lb/m;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->i:Lb/m;

    return-object v0
.end method


# virtual methods
.method public a()Lr/f;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    return-object v0
.end method

.method public a(Lr/f;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    .line 115
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alipay/android/mini/util/j;->a:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "msp"

    const-string v1, " ReadSms miniSmsReader"

    invoke-static {v0, v1}, Lj/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/j;->a:Z

    .line 125
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    const-string/jumbo v1, "rules"

    invoke-virtual {v0, v1}, Lr/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Lr/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/j;->a:Z

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    const-string v2, "read_time"

    invoke-virtual {v1, v2}, Lr/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 134
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    const-string/jumbo v1, "tmp_group"

    invoke-virtual {v0, v1}, Lr/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 137
    new-instance v0, Lcom/alipay/android/mini/util/l;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/util/l;-><init>(Lcom/alipay/android/mini/util/j;I[Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/util/j;->a:Z

    .line 180
    iget-object v0, p0, Lcom/alipay/android/mini/util/j;->b:Ll/a;

    invoke-virtual {v0}, Ll/a;->a()V

    .line 181
    iput-object v1, p0, Lcom/alipay/android/mini/util/j;->i:Lb/m;

    .line 182
    iput-object v1, p0, Lcom/alipay/android/mini/util/j;->j:Lcom/alipay/android/mini/window/sdk/k;

    .line 183
    iput-object v1, p0, Lcom/alipay/android/mini/util/j;->c:Lr/f;

    .line 184
    iput-object v1, p0, Lcom/alipay/android/mini/util/j;->d:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/alipay/android/mini/util/j;->e:Ljava/lang/String;

    .line 186
    return-void
.end method
