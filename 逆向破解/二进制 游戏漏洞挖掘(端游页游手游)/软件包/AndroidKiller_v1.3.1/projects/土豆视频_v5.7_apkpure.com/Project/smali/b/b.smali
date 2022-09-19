.class public Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lb/b;


# instance fields
.field private b:Landroid/util/SparseArray;

.field private c:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lb/b;->c:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method public static final a()Lb/b;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/b;->a:Lb/b;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lb/b;

    invoke-direct {v0}, Lb/b;-><init>()V

    sput-object v0, Lb/b;->a:Lb/b;

    .line 34
    :cond_0
    sget-object v0, Lb/b;->a:Lb/b;

    return-object v0
.end method

.method static synthetic a(Lb/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lb/b;->f()V

    return-void
.end method

.method public static a(Lb/b;Lb/a;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Lb/a;->c()Lb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lb/a;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 42
    :cond_0
    invoke-virtual {p1}, Lb/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b;->d(I)V

    .line 43
    invoke-virtual {p1}, Lb/a;->j()Lo/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lb/a;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0}, Lo/d;->b()V

    .line 45
    :cond_1
    return-void
.end method

.method private declared-synchronized f()V
    .locals 3

    .prologue
    .line 139
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 140
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 141
    iget-object v2, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    sget-object v2, Lb/b;->a:Lb/b;

    invoke-static {v2, v0}, Lb/b;->a(Lb/b;Lb/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/a;
    .locals 7

    .prologue
    .line 172
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 178
    :cond_0
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 180
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 181
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 182
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 183
    iget-object v1, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    .line 184
    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Lb/a;->k()I

    move-result v4

    .line 186
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 187
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v6, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :goto_1
    return-object v0

    .line 181
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/alipay/android/app/c;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lb/b;->c:Landroid/util/SparseArray;

    invoke-direct {p0}, Lb/b;->g()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public declared-synchronized a(I)Z
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Lb/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lb/a;

    invoke-direct {v0, p1}, Lb/a;-><init>(I)V

    .line 61
    iget-object v1, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 82
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 84
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move v2, v3

    .line 85
    :goto_0
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 86
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 87
    iget-object v1, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lb/a;->k()I

    move-result v6

    .line 91
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 92
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_3

    .line 93
    const/4 v1, 0x1

    :goto_2
    move v4, v1

    goto :goto_1

    .line 96
    :cond_0
    if-nez v4, :cond_1

    .line 97
    invoke-static {p0, v0}, Lb/b;->a(Lb/b;Lb/a;)V

    .line 85
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 101
    :cond_2
    return-void

    :cond_3
    move v1, v4

    goto :goto_2
.end method

.method public declared-synchronized c(I)Lb/a;
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 69
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 70
    iget-object v3, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a;->k()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lb/a;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v3, p1, :cond_0

    .line 76
    :goto_1
    monitor-exit p0

    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lb/c;

    invoke-direct {v0, p0}, Lb/c;-><init>(Lb/b;)V

    .line 109
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lb/b;->c:Landroid/util/SparseArray;

    invoke-direct {p0}, Lb/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lb/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)Lcom/alipay/android/app/c;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lb/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/c;

    return-object v0
.end method
