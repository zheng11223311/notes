.class public Lcom/alipay/android/app/net/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/alipay/android/app/net/a;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Lm/d;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lb/j;Lm/d;)V
    .locals 6

    .prologue
    .line 54
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lorg/json/JSONObject;Lb/j;Lm/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    .line 30
    iput-boolean v1, p0, Lcom/alipay/android/app/net/Request;->g:Z

    .line 33
    iput-boolean v1, p0, Lcom/alipay/android/app/net/Request;->h:Z

    .line 60
    iput-object p1, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    .line 61
    iput-object p2, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    .line 62
    iput-object p3, p0, Lcom/alipay/android/app/net/Request;->c:Lorg/json/JSONObject;

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    .line 64
    iput-object p5, p0, Lcom/alipay/android/app/net/Request;->f:Lm/d;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    iget-object v2, p0, Lcom/alipay/android/app/net/Request;->f:Lm/d;

    sget-object v3, Lm/d;->a:Lm/d;

    if-ne v2, v3, :cond_0

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 121
    const-string v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v3, "namespace"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v3, "api_name"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v3, "api_version"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->c:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v3, "req_data"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lj/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :goto_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :goto_1
    return-object v1

    .line 129
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->c:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    const-string v3, "namespace"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v3, "api_name"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v3, "api_version"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 135
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    const-string v4, "action"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/net/a;->d()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    const-string/jumbo v4, "type"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    array-length v4, v3

    if-le v4, v6, :cond_2

    .line 144
    const-string v4, "method"

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    const-string v3, "gzip"

    iget-boolean v4, p0, Lcom/alipay/android/app/net/Request;->h:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    iget-boolean v2, p0, Lcom/alipay/android/app/net/Request;->g:Z

    if-eqz v2, :cond_3

    .line 149
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 150
    const-string/jumbo v3, "req_data"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lj/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 153
    :cond_3
    :try_start_1
    const-string v2, "params"

    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/alipay/android/app/net/Request;->d:J

    .line 92
    return-void
.end method

.method public a(Lb/j;)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/android/app/net/Request;->c:Lorg/json/JSONObject;

    .line 104
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alipay/android/app/net/Request;->h:Z

    .line 38
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alipay/android/app/net/Request;->h:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/alipay/android/app/net/Request;->g:Z

    .line 77
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alipay/android/app/net/Request;->d:J

    return-wide v0
.end method

.method public d()Lb/j;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/j;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/alipay/android/app/net/Request;->g:Z

    return v0
.end method

.method public f()Lm/d;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->f:Lm/d;

    return-object v0
.end method

.method public g()Lcom/alipay/android/app/net/a;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Request;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/net/Request;->c:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/android/app/net/Request;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
