.class public Lcom/alipay/android/app/MspService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/MspService$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/alipay/android/app/MspService$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 166
    new-instance v0, Lcom/alipay/android/app/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/f;-><init>(Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 356
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/alipay/android/app/MspService;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/android/app/MspService;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 206
    const-string/jumbo v4, "signStr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    const-string/jumbo v0, "signStr="

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "signStr="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    return-object v0

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 121
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/MspService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 122
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 125
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    .line 127
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 128
    if-ne v3, v0, :cond_0

    .line 129
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 130
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "alipay sdk process exit"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 2

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Lcom/alipay/android/app/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/g;-><init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 349
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/b;->a(Lcom/alipay/android/app/c;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/android/app/MspService;->c()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 195
    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "taobao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method static synthetic b(Lcom/alipay/android/app/MspService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/android/app/MspService;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    :try_start_0
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/MspService;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-static {}, Lcom/alipay/android/app/i;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 255
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, v0, v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/MspService;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lcom/alipay/android/app/MspService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private b([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 216
    .line 220
    array-length v5, p1

    const/4 v0, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v6, p1, v4

    .line 221
    const-string/jumbo v7, "sid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    const-string/jumbo v3, "sid="

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "sid="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const-string/jumbo v7, "trade_no"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 225
    const-string/jumbo v2, "trade_no="

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "trade_no="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 227
    :cond_2
    const-string v7, "appevn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 228
    const-string v1, "appevn="

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v7, "appevn="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 230
    :cond_3
    const-string v7, "payPhaseId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 231
    const-string v0, "payPhaseId="

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v7, "payPhaseId="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 235
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extern_token=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"&trade_no=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"&app_name=\"tb\"&partner=\"TAOBAO_PARTNER_ORDER\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&appevn=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&payPhaseId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_5
    return-object v1

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method private b()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/b;->b(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->b(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    return-void
.end method

.method private b(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b;->d()V

    .line 354
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    :try_start_0
    const-string v0, "partner=\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "partner=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "\"&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    invoke-static {p1}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {}, Lj/f;->a()Lcom/alipay/android/app/net/Request;

    move-result-object v1

    .line 296
    :try_start_0
    new-instance v2, Lm/f;

    invoke-direct {v2}, Lm/f;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lm/f;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Z)Lm/a;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lm/a;->m()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hasAccount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->c()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/pay/channel/AliChannelInfo;

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v0

    invoke-virtual {v0}, Li/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    invoke-direct {p0}, Lcom/alipay/android/app/MspService;->a()V

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 78
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lh/b;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 80
    sget-boolean v1, Lcom/alipay/android/app/MspService;->a:Z

    if-nez v1, :cond_0

    .line 81
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/android/app/MspService;->a:Z

    .line 82
    invoke-direct {p0}, Lcom/alipay/android/app/MspService;->b()V

    .line 83
    const-class v1, Lb/k;

    invoke-static {v1}, Lb/a;->a(Ljava/lang/Class;)V

    .line 85
    new-instance v1, Lg/a;

    invoke-direct {v1}, Lg/a;-><init>()V

    invoke-static {v1}, Lm/b;->a(Lm/c;)V

    .line 87
    new-instance v1, Lq/a;

    invoke-direct {v1}, Lq/a;-><init>()V

    invoke-static {v1}, Lm/b;->a(Lm/c;)V

    .line 89
    const-class v1, Lcom/alipay/android/mini/window/sdk/ar;

    .line 90
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 91
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 92
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 93
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 94
    const/16 v2, 0x8

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 95
    const/16 v2, -0xa

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 96
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 97
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 98
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lo/d;->a(ILjava/lang/Class;)V

    .line 103
    :cond_0
    invoke-static {v0}, Lf/c;->a(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$a;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/alipay/android/app/MspService$a;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/MspService$a;-><init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$a;

    .line 109
    :cond_1
    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v1, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v1}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    .line 144
    const-string v2, "PARTNER_ID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/alipay/android/app/MspService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v1}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    .line 149
    const-string v2, "SYS_TYPE"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    .line 150
    const-string v2, "TASK"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v1}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    .line 153
    const-string v2, "NOTIFICATION_RECEIVER"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/command/trigger/PublicApiInvoke;->doBizProcess(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    .line 163
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 164
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
