.class public Lcom/alipay/android/mini/window/sdk/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/a;
.implements Lr/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/window/sdk/ar$1;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Lb/e;

.field private e:Lb/g;

.field private f:Lcom/alipay/android/mini/window/sdk/j;

.field private g:Lcom/alipay/android/mini/window/sdk/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->a:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->b:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/ar;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/ar;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/ar;Lb/g;)Lb/g;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/j;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/j;)Lcom/alipay/android/mini/window/sdk/j;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    return-object p1
.end method

.method private a(ILjava/lang/String;)Lcom/alipay/android/mini/window/sdk/k;
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    sparse-switch p1, :sswitch_data_0

    .line 131
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 106
    :sswitch_1
    new-instance v0, Lcom/alipay/android/mini/window/sdk/ba;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-direct {v0, v1}, Lcom/alipay/android/mini/window/sdk/ba;-><init>(Lb/e;)V

    .line 107
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    if-nez v1, :cond_0

    .line 108
    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    goto :goto_0

    .line 112
    :sswitch_2
    new-instance v0, Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-direct {v0, v1}, Lcom/alipay/android/mini/window/sdk/bd;-><init>(Lb/e;)V

    .line 113
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->b()V

    .line 114
    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    goto :goto_0

    .line 118
    :sswitch_3
    new-instance v0, Lcom/alipay/android/mini/window/sdk/bc;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-direct {v0, v1}, Lcom/alipay/android/mini/window/sdk/bc;-><init>(Lb/e;)V

    goto :goto_0

    .line 121
    :sswitch_4
    new-instance v0, Lcom/alipay/android/mini/window/sdk/bb;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-direct {v0, v1}, Lcom/alipay/android/mini/window/sdk/bb;-><init>(Lb/e;)V

    .line 122
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->b()V

    .line 123
    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_4
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/k;)Lcom/alipay/android/mini/window/sdk/k;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    return-object p1
.end method

.method private a(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 422
    :cond_1
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 427
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 429
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "can not receive activity onload event"

    invoke-virtual {v0, v1, v2}, Lf/c;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 440
    :cond_2
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 424
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 435
    :cond_3
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "can not use exit cmd"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/aw;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/window/sdk/aw;-><init>(Lcom/alipay/android/mini/window/sdk/ar;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-interface {v0}, Lb/e;->a()I

    move-result v1

    .line 398
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-interface {v0}, Lb/e;->b()Lcom/alipay/android/app/c;

    move-result-object v0

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ar;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v1, v3}, Lcom/alipay/android/app/c;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string v3, "on start container"

    invoke-virtual {v2, v0, v3}, Lf/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 403
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 404
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 405
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 406
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    const-string v3, "CallingPid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lo/c;Ljava/lang/String;ILcom/alipay/android/mini/window/sdk/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Lo/c;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    if-eqz p4, :cond_0

    .line 145
    invoke-virtual {p4, p3}, Lcom/alipay/android/mini/window/sdk/k;->b(I)V

    .line 146
    invoke-virtual {p1}, Lo/c;->o()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/alipay/android/mini/window/sdk/k;->a(I)V

    .line 149
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 153
    :sswitch_0
    const-string v1, "form"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-static {v1}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 157
    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 162
    :sswitch_1
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->d()V

    .line 163
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    invoke-virtual {p4, v1}, Lcom/alipay/android/mini/window/sdk/k;->a(Lcom/alipay/android/mini/window/sdk/j;)V

    .line 164
    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->c(Lorg/json/JSONObject;)V

    .line 165
    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->a(Lorg/json/JSONObject;)V

    .line 166
    const-string/jumbo v1, "subforms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->b(Lorg/json/JSONObject;)V

    .line 167
    invoke-virtual {p4, p2}, Lcom/alipay/android/mini/window/sdk/k;->b(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/at;

    invoke-direct {v1, p0, p4, p3}, Lcom/alipay/android/mini/window/sdk/at;-><init>(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/k;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 182
    :sswitch_2
    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->c(Lorg/json/JSONObject;)V

    .line 183
    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->a(Lorg/json/JSONObject;)V

    .line 184
    const-string/jumbo v1, "subforms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->b(Lorg/json/JSONObject;)V

    .line 185
    invoke-virtual {p4, p2}, Lcom/alipay/android/mini/window/sdk/k;->b(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->d()V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    invoke-virtual {p4, v0}, Lcom/alipay/android/mini/window/sdk/k;->a(Lcom/alipay/android/mini/window/sdk/j;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/au;

    invoke-direct {v1, p0, p4, p3}, Lcom/alipay/android/mini/window/sdk/au;-><init>(Lcom/alipay/android/mini/window/sdk/ar;Lcom/alipay/android/mini/window/sdk/k;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 202
    :sswitch_3
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->j()V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->g()V

    goto/16 :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    goto/16 :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->p()Lr/h;

    move-result-object v0

    new-instance v1, Lr/c;

    sget-object v2, Lr/a;->o:Lr/a;

    invoke-direct {v1, v2}, Lr/c;-><init>(Lr/a;)V

    invoke-interface {v0, p0, v1}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    goto/16 :goto_0

    .line 220
    :sswitch_4
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/window/sdk/k;->a(Lorg/json/JSONObject;)V

    .line 221
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->d()V

    .line 223
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/av;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/mini/window/sdk/av;-><init>(Lcom/alipay/android/mini/window/sdk/ar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->p()Lr/h;

    move-result-object v0

    new-instance v1, Lr/c;

    sget-object v2, Lr/a;->d:Lr/a;

    invoke-direct {v1, v2}, Lr/c;-><init>(Lr/a;)V

    invoke-interface {v0, p0, v1}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_4
        0x4 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->i()V

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/ar;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->b()V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/ax;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/window/sdk/ax;-><init>(Lcom/alipay/android/mini/window/sdk/ar;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/sdk/ar;)Lcom/alipay/android/mini/window/sdk/k;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/ay;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/ay;-><init>(Lcom/alipay/android/mini/window/sdk/ar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 386
    const-class v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    instance-of v1, v1, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    if-eqz v1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Ljava/lang/String;)V

    .line 392
    const-class v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/e;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->d:Lb/e;

    .line 77
    invoke-interface {p1}, Lb/e;->c()Lb/g;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    .line 78
    return-void
.end method

.method public a(Lb/g;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->d()V

    .line 251
    :cond_1
    instance-of v0, p2, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->c()V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_2
    instance-of v0, p2, Lcom/alipay/android/app/exception/ValifyException;

    if-eqz v0, :cond_3

    .line 254
    invoke-direct {p0, p2}, Lcom/alipay/android/mini/window/sdk/ar;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-direct {p0, p2}, Lcom/alipay/android/mini/window/sdk/ar;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 327
    return-void
.end method

.method public a(Lb/g;Lo/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p2}, Lo/c;->d()I

    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/ar;->d()V

    .line 86
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/mini/window/sdk/j;->a([Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p2}, Lo/c;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lo/c;->n()V

    .line 92
    const-string v2, "form_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-direct {p0, v1, v2}, Lcom/alipay/android/mini/window/sdk/ar;->a(ILjava/lang/String;)Lcom/alipay/android/mini/window/sdk/k;

    move-result-object v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    .line 97
    :cond_2
    invoke-direct {p0, p2, v2, v1, v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lo/c;Ljava/lang/String;ILcom/alipay/android/mini/window/sdk/k;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 332
    check-cast p1, Lcom/alipay/android/mini/window/sdk/j;

    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    .line 333
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    invoke-interface {v0, p0}, Lcom/alipay/android/mini/window/sdk/j;->a(Lr/i;)V

    .line 334
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    instance-of v0, v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    if-eqz v0, :cond_0

    .line 340
    const-class v0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/ar;->a(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/mini/window/sdk/j;Lr/c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    .line 349
    if-eqz p2, :cond_0

    .line 351
    sget-object v1, Lcom/alipay/android/mini/window/sdk/ar$1;->a:[I

    invoke-virtual {p2}, Lr/c;->b()Lr/a;

    move-result-object v2

    invoke-virtual {v2}, Lr/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 373
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->p()Lr/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    move-result v0

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    invoke-virtual {v0}, Lb/g;->l()Z

    move-result v0

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->g:Lcom/alipay/android/mini/window/sdk/k;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/k;->p()Lr/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    move-result v0

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    invoke-virtual {v1}, Lb/g;->h()Z

    move-result v1

    .line 368
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ar;->f:Lcom/alipay/android/mini/window/sdk/j;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/alipay/android/mini/window/sdk/j;->a([Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ar;->e:Lb/g;

    invoke-virtual {v1}, Lb/g;->l()Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ld/b;)Z
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/alipay/android/mini/window/sdk/j;

    check-cast p2, Lr/c;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/ar;->a(Lcom/alipay/android/mini/window/sdk/j;Lr/c;)Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ar;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/as;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/as;-><init>(Lcom/alipay/android/mini/window/sdk/ar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
