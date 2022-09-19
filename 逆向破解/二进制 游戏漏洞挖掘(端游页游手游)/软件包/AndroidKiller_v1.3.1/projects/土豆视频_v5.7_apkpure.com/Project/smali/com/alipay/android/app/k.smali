.class public Lcom/alipay/android/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/app/k;->a:Landroid/content/Context;

    .line 24
    iput-boolean p2, p0, Lcom/alipay/android/app/k;->b:Z

    .line 25
    iput-object p3, p0, Lcom/alipay/android/app/k;->c:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/android/app/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/alipay/android/app/a;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/a;-><init>(Lorg/json/JSONObject;)V

    .line 79
    return-object v1
.end method

.method private b()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string v0, "namespace"

    const-string v2, "com.alipay.mcashier"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v0, "api_version"

    const-string v2, "1.0.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v0, "api_name"

    const-string/jumbo v2, "sdk_pay"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string v0, "params"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v3

    .line 49
    const-string v0, "alixtid"

    invoke-virtual {v3}, Li/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v0, "clientKey"

    invoke-virtual {v3}, Li/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v0

    .line 52
    const-string v4, "clientId"

    invoke-virtual {v0}, Lh/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v0, "deviceVersion"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "quickpay"

    .line 55
    iget-object v4, p0, Lcom/alipay/android/app/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lh/a;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|alipay"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lh/a;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|safepay"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_1
    const-string v4, "installedClient"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v0, "network"

    iget-object v4, p0, Lcom/alipay/android/app/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lh/a;->b(Landroid/content/Context;)Lh/d;

    move-result-object v4

    invoke-virtual {v4}, Lh/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v0, "orderInfo"

    iget-object v4, p0, Lcom/alipay/android/app/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v4, "pay_phase"

    iget-boolean v0, p0, Lcom/alipay/android/app/k;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "after"

    :goto_0
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v0, "platform"

    const-string v4, "ANDROID"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v0, "user_agent"

    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v4

    invoke-virtual {v4}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alipay/android/app/d;->a(Li/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    return-object v0

    .line 65
    :cond_2
    const-string v0, "before"

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/alipay/android/app/a;
    .locals 3

    .prologue
    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/alipay/android/app/k;->a:Landroid/content/Context;

    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lm/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lm/e;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/alipay/android/app/k;->a(Ljava/lang/String;)Lcom/alipay/android/app/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method
