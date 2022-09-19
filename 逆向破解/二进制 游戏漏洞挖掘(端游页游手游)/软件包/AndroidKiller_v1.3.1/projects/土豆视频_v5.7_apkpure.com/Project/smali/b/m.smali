.class public Lb/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "protocol"


# instance fields
.field private b:Lcom/alipay/android/app/net/e;

.field private c:Lorg/json/JSONObject;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Z

.field private f:Lcom/alipay/android/app/net/Request;

.field private g:Lorg/json/JSONObject;

.field private h:J

.field private i:Lm/a;


# direct methods
.method protected constructor <init>(Lb/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lb/m;->f:Lcom/alipay/android/app/net/Request;

    .line 47
    iput-object v0, p0, Lb/m;->i:Lm/a;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/m;->e:Z

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lb/m;->g:Lorg/json/JSONObject;

    .line 53
    return-void
.end method


# virtual methods
.method public a()Lm/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lb/m;->i:Lm/a;

    return-object v0
.end method

.method protected a(Lcom/alipay/android/app/net/Request;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lb/m;->f:Lcom/alipay/android/app/net/Request;

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->p()Ln/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->p()Ln/d;

    move-result-object v0

    invoke-interface {v0, p1}, Ln/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->p()Ln/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->p()Ln/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ln/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lm/a;)V
    .locals 1

    .prologue
    .line 65
    instance-of v0, p1, Lo/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lo/c;

    .line 68
    invoke-virtual {v0}, Lo/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lb/m;->c()V

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lb/m;->b(Lm/a;)V

    .line 73
    return-void
.end method

.method public a(Ln/c;)V
    .locals 1

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->p()Ln/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->p()Ln/d;

    move-result-object v0

    invoke-interface {v0, p1}, Ln/d;->a(Ln/c;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lb/m;->c:Lorg/json/JSONObject;

    .line 202
    return-void
.end method

.method protected b()Lcom/alipay/android/app/net/Request;
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lb/m;->f:Lcom/alipay/android/app/net/Request;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/e;->d()Lorg/json/JSONObject;

    move-result-object v3

    .line 101
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lb/m;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/m;->e:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p0, Lb/m;->c:Lorg/json/JSONObject;

    .line 106
    :cond_0
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->l()Lb/j;

    move-result-object v4

    .line 107
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v0

    .line 109
    if-eqz v2, :cond_1

    .line 111
    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    const-string/jumbo v1, "tid"

    invoke-virtual {v0}, Li/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/android/app/net/Request;

    iget-object v1, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v1

    iget-object v5, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    invoke-virtual {v5}, Lcom/alipay/android/app/net/e;->o()Lm/d;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    .line 121
    iget-object v1, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Request;->b(Z)V

    .line 122
    iget-object v1, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Request;->a(Z)V

    .line 125
    :goto_1
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lb/m;->f:Lcom/alipay/android/app/net/Request;

    goto :goto_1
.end method

.method protected b(Lm/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iput-object p1, p0, Lb/m;->i:Lm/a;

    .line 83
    invoke-virtual {p1}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v0

    iput-object v0, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    .line 84
    instance-of v0, p1, Lo/c;

    iput-boolean v0, p0, Lb/m;->e:Z

    .line 86
    iput-object v1, p0, Lb/m;->f:Lcom/alipay/android/app/net/Request;

    .line 91
    iput-object v1, p0, Lb/m;->c:Lorg/json/JSONObject;

    .line 92
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lb/m;->d()V

    .line 131
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    .line 138
    iput-object v0, p0, Lb/m;->c:Lorg/json/JSONObject;

    .line 139
    iput-object v0, p0, Lb/m;->f:Lcom/alipay/android/app/net/Request;

    .line 140
    iget-object v0, p0, Lb/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    invoke-virtual {v0}, Lb/a;->l()Lb/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/j;->e()V

    .line 141
    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lb/m;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lb/m;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()Lcom/alipay/android/app/net/e;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lb/m;->b:Lcom/alipay/android/app/net/e;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb/m;->h:J

    .line 220
    return-void
.end method

.method public i()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lb/m;->h:J

    return-wide v0
.end method
