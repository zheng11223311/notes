.class public final Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/e;


# static fields
.field private static e:Ljava/lang/Class;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private f:Lb/d;

.field private g:Lb/j;

.field private h:Lb/h;

.field private i:Lb/m;

.field private j:Lo/d;

.field private k:Lb/g;


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lb/a;->a:I

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lb/a;->b:I

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a;->c:Ljava/lang/Object;

    .line 52
    new-instance v0, Lb/j;

    invoke-direct {v0}, Lb/j;-><init>()V

    iput-object v0, p0, Lb/a;->g:Lb/j;

    .line 53
    new-instance v0, Lb/m;

    invoke-direct {v0, p0}, Lb/m;-><init>(Lb/a;)V

    iput-object v0, p0, Lb/a;->i:Lb/m;

    .line 54
    new-instance v0, Lb/h;

    iget-object v1, p0, Lb/a;->i:Lb/m;

    invoke-direct {v0, v1}, Lb/h;-><init>(Lb/m;)V

    iput-object v0, p0, Lb/a;->h:Lb/h;

    .line 55
    new-instance v0, Lo/d;

    invoke-direct {v0}, Lo/d;-><init>()V

    iput-object v0, p0, Lb/a;->j:Lo/d;

    .line 56
    iget-object v0, p0, Lb/a;->j:Lo/d;

    invoke-virtual {v0, p0}, Lo/d;->a(Lb/e;)V

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 171
    sput-object p0, Lb/a;->e:Ljava/lang/Class;

    .line 172
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lb/a;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lb/a;->d:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public b()Lcom/alipay/android/app/c;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lb/a;->b:I

    invoke-virtual {v0, v1}, Lb/b;->e(I)Lcom/alipay/android/app/c;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/g;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lb/a;->k:Lb/g;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lb/g;

    invoke-direct {v0, p0}, Lb/g;-><init>(Lb/a;)V

    iput-object v0, p0, Lb/a;->k:Lb/g;

    .line 78
    :cond_0
    iget-object v0, p0, Lb/a;->k:Lb/g;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v1, p0, Lb/a;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    iget-object v0, p0, Lb/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_5
    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lb/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lb/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lb/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Lb/m;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lb/a;->i:Lb/m;

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lb/a;->a:I

    invoke-virtual {v0, v1}, Lb/b;->d(I)V

    .line 112
    iget-object v0, p0, Lb/a;->j:Lo/d;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lb/a;->j:Lo/d;

    invoke-virtual {v0}, Lo/d;->b()V

    .line 114
    :cond_0
    invoke-static {}, Ln/e;->a()Ln/e;

    move-result-object v0

    iget v1, p0, Lb/a;->a:I

    invoke-virtual {v0, v1}, Ln/e;->b(I)V

    .line 116
    :try_start_0
    iget-object v0, p0, Lb/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iput-object v2, p0, Lb/a;->k:Lb/g;

    .line 120
    iput-object v2, p0, Lb/a;->j:Lo/d;

    .line 121
    iput v3, p0, Lb/a;->a:I

    .line 122
    iput v3, p0, Lb/a;->b:I

    .line 123
    iput-object v2, p0, Lb/a;->c:Ljava/lang/Object;

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lb/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lb/a;->i:Lb/m;

    invoke-virtual {v0}, Lb/m;->g()Lcom/alipay/android/app/net/e;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/e;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alipay/android/app/net/e;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lo/d;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lb/a;->j:Lo/d;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lb/a;->b:I

    return v0
.end method

.method public l()Lb/j;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lb/a;->g:Lb/j;

    return-object v0
.end method

.method public m()Lb/h;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lb/a;->h:Lb/h;

    return-object v0
.end method

.method public n()Lb/d;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lb/a;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a;->f:Lb/d;

    if-nez v0, :cond_0

    .line 162
    :try_start_0
    sget-object v0, Lb/a;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d;

    iput-object v0, p0, Lb/a;->f:Lb/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a;->f:Lb/d;

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public o()Lo/c;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lb/a;->h:Lb/h;

    invoke-virtual {v0}, Lb/h;->h()Lo/c;

    move-result-object v0

    return-object v0
.end method

.method public p()Ln/d;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method
