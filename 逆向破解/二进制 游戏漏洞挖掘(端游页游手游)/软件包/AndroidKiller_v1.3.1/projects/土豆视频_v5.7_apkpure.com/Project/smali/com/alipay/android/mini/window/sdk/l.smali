.class public Lcom/alipay/android/mini/window/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/window/sdk/l$1;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.alipay.security.namecertified"

.field public static final b:Ljava/lang/String; = "isCertified"


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/android/mini/util/j;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/app/Activity;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:Landroid/app/Dialog;

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Z

.field private p:Lcom/alipay/android/app/IAlixPay;

.field private q:Lc/a;

.field private r:Ljava/lang/Runnable;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Landroid/content/ServiceConnection;

.field private u:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->h:Landroid/content/BroadcastReceiver;

    .line 76
    iput-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/l;->m:Z

    .line 78
    sget-object v0, Lcom/alipay/android/app/i;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->n:Ljava/lang/Object;

    .line 80
    iput-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/l;->o:Z

    .line 578
    new-instance v0, Lcom/alipay/android/mini/window/sdk/u;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/window/sdk/u;-><init>(Lcom/alipay/android/mini/window/sdk/l;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->r:Ljava/lang/Runnable;

    .line 677
    new-instance v0, Lcom/alipay/android/mini/window/sdk/aa;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/window/sdk/aa;-><init>(Lcom/alipay/android/mini/window/sdk/l;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->s:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Lcom/alipay/android/mini/window/sdk/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/window/sdk/n;-><init>(Lcom/alipay/android/mini/window/sdk/l;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->t:Landroid/content/ServiceConnection;

    .line 718
    new-instance v0, Lcom/alipay/android/mini/window/sdk/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/window/sdk/o;-><init>(Lcom/alipay/android/mini/window/sdk/l;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->u:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 87
    iput-boolean p1, p0, Lcom/alipay/android/mini/window/sdk/l;->c:Z

    .line 88
    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/l;->d:Ljava/lang/String;

    .line 89
    iput-boolean p3, p0, Lcom/alipay/android/mini/window/sdk/l;->e:Z

    .line 90
    iput-boolean p4, p0, Lcom/alipay/android/mini/window/sdk/l;->f:Z

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/l;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/l;->l:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 537
    const/16 v0, 0x1771

    invoke-static {v0}, Lcom/alipay/android/app/j;->b(I)Lcom/alipay/android/app/j;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/alipay/android/app/j;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/i;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/l;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 523
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/b;->e(I)Lcom/alipay/android/app/c;

    move-result-object v0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/alipay/android/app/c;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 531
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lb/e;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 483
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 484
    const-string v0, "com.eg.android.AlipayGphone"

    const-string v3, "com.alipay.android.app.MspService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/l;->o:Z

    if-eqz v0, :cond_2

    .line 490
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    iput-boolean v6, p0, Lcom/alipay/android/mini/window/sdk/l;->o:Z

    .line 494
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    if-nez v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/l;->t:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 500
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->n:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    if-nez v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 503
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->u:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 505
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {p1}, Lb/e;->c()Lb/g;

    move-result-object v3

    invoke-virtual {v3}, Lb/g;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->u:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    :try_start_3
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->t:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 515
    :goto_1
    iput-boolean v5, p0, Lcom/alipay/android/mini/window/sdk/l;->o:Z

    .line 517
    :goto_2
    invoke-interface {p1}, Lb/e;->c()Lb/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/g;->a(Ljava/lang/String;)V

    .line 518
    invoke-interface {p1}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 520
    return-void

    .line 503
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 507
    :catch_0
    move-exception v2

    .line 508
    :try_start_6
    invoke-static {v2}, Lj/h;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 511
    :try_start_7
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->t:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 515
    :goto_3
    iput-boolean v5, p0, Lcom/alipay/android/mini/window/sdk/l;->o:Z

    goto :goto_2

    .line 512
    :catch_1
    move-exception v2

    .line 513
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    goto :goto_1

    .line 512
    :catch_2
    move-exception v2

    .line 513
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    .line 510
    :catchall_1
    move-exception v0

    .line 511
    :try_start_8
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->t:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 515
    :goto_4
    iput-boolean v5, p0, Lcom/alipay/android/mini/window/sdk/l;->o:Z

    throw v0

    .line 512
    :catch_3
    move-exception v2

    .line 513
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->p:Lcom/alipay/android/app/IAlixPay;

    goto :goto_4

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lb/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 548
    new-instance v0, Lcom/alipay/android/mini/widget/o;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/mini/widget/o;-><init>(Landroid/content/Context;)V

    .line 549
    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/o;->show()V

    .line 551
    new-instance v1, Lc/a;

    invoke-direct {v1}, Lc/a;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->q:Lc/a;

    .line 552
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->q:Lc/a;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/a;->a(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->q:Lc/a;

    invoke-virtual {v1, p1}, Lc/a;->b(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->q:Lc/a;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/t;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/android/mini/window/sdk/t;-><init>(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/android/mini/widget/o;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/a;->a(Lc/a$a;)V

    .line 574
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->q:Lc/a;

    invoke-virtual {v0}, Lc/a;->b()V

    .line 575
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->r:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/l;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/android/mini/window/sdk/l;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lj/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 617
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 618
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/l;->c()V

    .line 621
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 624
    new-instance v0, Lcom/alipay/android/mini/window/sdk/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/window/sdk/x;-><init>(Lcom/alipay/android/mini/window/sdk/l;)V

    .line 673
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/l;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/mini/window/sdk/l;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/l;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/mini/window/sdk/l;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/l;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/mini/window/sdk/l;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/mini/window/sdk/l;)Lc/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->q:Lc/a;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/mini/window/sdk/l;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->s:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->l:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lr/c;Lcom/alipay/android/mini/window/sdk/j;Landroid/app/Activity;Lb/e;Lcom/alipay/android/mini/window/sdk/k;Ljava/lang/Object;)Z
    .locals 12

    .prologue
    .line 98
    const/4 v9, 0x0

    .line 99
    if-eqz p2, :cond_0

    .line 100
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    .line 101
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->j:Landroid/os/Handler;

    .line 102
    invoke-virtual {p2}, Lr/c;->b()Lr/a;

    move-result-object v5

    .line 103
    sget-object v2, Lcom/alipay/android/mini/window/sdk/l$1;->a:[I

    invoke-virtual {v5}, Lr/a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 473
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/g;->l()Z

    :cond_0
    move v2, v9

    .line 477
    :cond_1
    :goto_0
    return v2

    .line 105
    :pswitch_0
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/l;->e:Z

    if-eqz v2, :cond_2

    move v2, v9

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->c()Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/mini/uielement/j;

    .line 111
    instance-of v4, v2, Lcom/alipay/android/mini/uielement/z;

    if-eqz v4, :cond_3

    .line 112
    check-cast v2, Lcom/alipay/android/mini/uielement/z;

    .line 113
    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/z;->D()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/n;->b(Landroid/widget/EditText;)V

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->k()Lcom/alipay/android/mini/window/sdk/bg;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->b()V

    .line 121
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :cond_5
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/l;->c:Z

    if-eqz v2, :cond_6

    .line 124
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/sdk/l;->f:Z

    invoke-static {v2, v3, p3, v4}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/j;Z)V

    move v2, v9

    goto :goto_0

    .line 127
    :cond_6
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/g;->i()Z

    move-result v2

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;I)V

    .line 134
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->f()V

    .line 135
    invoke-static {}, Lcom/alipay/android/mini/window/sdk/h;->a()Lcom/alipay/android/mini/window/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/sdk/h;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->g()V

    move v2, v9

    goto :goto_0

    .line 142
    :pswitch_2
    if-eqz p3, :cond_7

    .line 143
    invoke-interface {p3}, Lcom/alipay/android/mini/window/sdk/j;->a()V

    .line 145
    :cond_7
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/g;->l()Z

    move v2, v9

    .line 146
    goto :goto_0

    .line 148
    :pswitch_3
    const-string v4, ""

    .line 149
    const-string v2, ""

    .line 150
    invoke-virtual {v5}, Lr/a;->g()Lorg/json/JSONObject;

    move-result-object v5

    .line 152
    :try_start_0
    const-string v3, "code"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 153
    :try_start_1
    const-string/jumbo v4, "result"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 157
    :goto_2
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lb/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move v2, v9

    .line 158
    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v3

    move-object v11, v3

    move-object v3, v4

    move-object v4, v11

    .line 155
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 160
    :pswitch_4
    const-string v2, "message"

    invoke-virtual {p2, v2}, Lr/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-interface {p3, v2}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;)V

    move v2, v9

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_5
    invoke-interface {p3}, Lcom/alipay/android/mini/window/sdk/j;->a()V

    .line 165
    const/4 v2, 0x1

    .line 166
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->e()V

    goto/16 :goto_0

    .line 170
    :pswitch_6
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/g;->h()Z

    move-result v2

    .line 171
    if-eqz v2, :cond_1

    .line 172
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/sdk/k;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_7
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/sdk/k;->a(Lr/a;)Z

    move-result v3

    .line 178
    if-eqz v3, :cond_8

    .line 179
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/sdk/k;->b(Lr/a;)Z

    move-result v3

    .line 181
    :cond_8
    if-eqz v3, :cond_17

    .line 182
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;)V

    .line 183
    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/mini/window/sdk/bc;

    if-eqz v2, :cond_9

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/mini/window/sdk/bc;

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/sdk/bc;->t()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/mini/window/sdk/bc;

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/sdk/bc;->u()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/window/sdk/k;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .line 187
    :cond_9
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/sdk/k;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .line 193
    :pswitch_8
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->s()V

    .line 194
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/g;->m()Z

    move-result v2

    .line 195
    if-eqz v2, :cond_1

    .line 196
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/sdk/k;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :pswitch_9
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->b(Ljava/lang/String;)V

    move v2, v9

    .line 201
    goto/16 :goto_0

    .line 204
    :pswitch_a
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/l;->f:Z

    if-nez v2, :cond_a

    .line 205
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    new-instance v3, Lcom/alipay/android/mini/window/sdk/m;

    invoke-direct {v3, p0}, Lcom/alipay/android/mini/window/sdk/m;-><init>(Lcom/alipay/android/mini/window/sdk/l;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    :cond_a
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/mini/window/sdk/k;->a(Lr/c;)V

    move v2, v9

    .line 214
    goto/16 :goto_0

    .line 217
    :pswitch_b
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/sdk/k;->c(Lr/a;)V

    move v2, v9

    .line 218
    goto/16 :goto_0

    .line 220
    :pswitch_c
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/mini/window/sdk/k;->q()Z

    move-result v2

    goto/16 :goto_0

    .line 223
    :pswitch_d
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_c

    array-length v3, v2

    if-lez v3, :cond_c

    .line 227
    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 228
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->g:Lcom/alipay/android/mini/util/j;

    if-nez v3, :cond_b

    .line 229
    new-instance v3, Lcom/alipay/android/mini/util/j;

    invoke-virtual {v5}, Lr/a;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Lb/e;->f()Lb/m;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/alipay/android/mini/util/j;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lb/m;Lcom/alipay/android/mini/window/sdk/k;)V

    iput-object v3, p0, Lcom/alipay/android/mini/window/sdk/l;->g:Lcom/alipay/android/mini/util/j;

    .line 233
    :cond_b
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->g:Lcom/alipay/android/mini/util/j;

    invoke-virtual {v2}, Lcom/alipay/android/mini/util/j;->b()V

    .line 235
    :cond_c
    const/4 v2, 0x1

    .line 236
    goto/16 :goto_0

    .line 239
    :pswitch_e
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/mini/window/sdk/k;->b(Lr/c;)V

    move v2, v9

    .line 240
    goto/16 :goto_0

    .line 242
    :pswitch_f
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/window/sdk/k;->d(Lr/a;)V

    .line 243
    new-instance v2, Lr/c;

    sget-object v3, Lr/a;->B:Lr/a;

    invoke-direct {v2, v3}, Lr/c;-><init>(Lr/a;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;Ld/b;)Z

    .line 244
    const/4 v2, 0x1

    .line 245
    goto/16 :goto_0

    .line 247
    :pswitch_10
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->h:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_d

    .line 248
    new-instance v2, Lcom/alipay/android/mini/window/sdk/p;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/window/sdk/p;-><init>(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->h:Landroid/content/BroadcastReceiver;

    .line 259
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 261
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.alipay.security.namecertified"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/l;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 265
    :cond_d
    const-string v2, "alipays://platformapi/startApp?appId=20000038"

    .line 266
    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v2}, Lcom/alipay/android/mini/window/sdk/k;->a(Lr/a;Ljava/lang/String;)V

    .line 267
    new-instance v2, Lr/c;

    sget-object v3, Lr/a;->B:Lr/a;

    invoke-direct {v2, v3}, Lr/c;-><init>(Lr/a;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;Ld/b;)Z

    .line 268
    const/4 v2, 0x1

    .line 269
    goto/16 :goto_0

    .line 271
    :pswitch_11
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 273
    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 274
    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v2}, Lcom/alipay/android/mini/window/sdk/k;->a(Lr/a;Ljava/lang/String;)V

    move v2, v9

    .line 275
    goto/16 :goto_0

    .line 279
    :pswitch_12
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 281
    if-eqz v3, :cond_0

    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    array-length v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 283
    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .line 284
    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 285
    const/4 v2, 0x0

    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 286
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_e

    .line 287
    div-int/lit8 v4, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v6, v4

    .line 285
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 289
    :cond_e
    div-int/lit8 v4, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v5, v4

    goto :goto_5

    .line 292
    :cond_f
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;[Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;)V

    move v2, v9

    .line 295
    goto/16 :goto_0

    .line 299
    :pswitch_13
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 301
    if-eqz v6, :cond_0

    array-length v2, v6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 302
    const/4 v2, 0x0

    aget-object v2, v6, v2

    .line 303
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 304
    if-eqz v5, :cond_12

    .line 305
    array-length v2, v5

    new-array v4, v2, [Ljava/lang/String;

    .line 306
    array-length v2, v5

    new-array v3, v2, [Ljava/lang/String;

    .line 307
    const/4 v2, 0x0

    :goto_6
    array-length v7, v5

    if-ge v2, v7, :cond_11

    .line 308
    aget-object v7, v5, v2

    .line 309
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 310
    if-eqz v7, :cond_10

    array-length v8, v7

    const/4 v10, 0x2

    if-ne v8, v10, :cond_10

    .line 311
    const/4 v8, 0x0

    aget-object v8, v7, v8

    aput-object v8, v4, v2

    .line 312
    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v3, v2

    .line 307
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 315
    :cond_11
    instance-of v2, p1, Lcom/alipay/android/mini/uielement/ar;

    if-eqz v2, :cond_12

    .line 316
    check-cast p1, Lcom/alipay/android/mini/uielement/ar;

    invoke-virtual {p1}, Lcom/alipay/android/mini/uielement/ar;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 318
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;Ljava/lang/String;)V

    :cond_12
    move v2, v9

    .line 323
    goto/16 :goto_0

    .line 327
    :pswitch_14
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 330
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 331
    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 332
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/sdk/k;->c(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v3

    .line 333
    invoke-virtual {v3, v2}, Lcom/alipay/android/mini/uielement/c;->b(Ljava/lang/String;)V

    move v2, v9

    .line 334
    goto/16 :goto_0

    .line 338
    :pswitch_15
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 341
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 342
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 343
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/sdk/k;->c(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v3

    .line 344
    instance-of v2, v3, Lcom/alipay/android/mini/uielement/z;

    if-eqz v2, :cond_13

    move-object v2, v3

    .line 345
    check-cast v2, Lcom/alipay/android/mini/uielement/z;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/z;->D()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 346
    check-cast v3, Lcom/alipay/android/mini/uielement/z;

    invoke-virtual {v3}, Lcom/alipay/android/mini/uielement/z;->D()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    move v2, v9

    .line 348
    goto/16 :goto_0

    .line 352
    :pswitch_16
    invoke-virtual {v5}, Lr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 355
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v2, v9

    .line 359
    goto/16 :goto_0

    .line 363
    :pswitch_17
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;)V

    move v2, v9

    .line 364
    goto/16 :goto_0

    .line 367
    :pswitch_18
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/mini/window/sdk/k;->v:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 368
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/mini/window/sdk/k;->v:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 369
    new-array v4, v3, [Lcom/alipay/android/mini/uielement/f;

    .line 370
    new-array v5, v3, [Ljava/lang/String;

    .line 371
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_15

    .line 372
    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/alipay/android/mini/window/sdk/k;->v:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 373
    if-eqz v6, :cond_14

    .line 374
    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 375
    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    aput-object v7, v5, v2

    .line 377
    const-string v7, "action"

    invoke-static {v6, v7}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v6

    .line 379
    aput-object v6, v4, v2

    .line 371
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 383
    :cond_15
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/l;->i:Landroid/app/Activity;

    move-object/from16 v0, p6

    invoke-static {v2, v4, v5, v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;[Lcom/alipay/android/mini/uielement/f;[Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;)V

    move v2, v9

    .line 384
    goto/16 :goto_0

    .line 388
    :pswitch_19
    new-instance v2, Lcom/alipay/android/mini/window/sdk/q;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v5, v0}, Lcom/alipay/android/mini/window/sdk/q;-><init>(Lcom/alipay/android/mini/window/sdk/l;Lr/a;Lb/e;)V

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/sdk/q;->start()V

    move v2, v9

    .line 428
    goto/16 :goto_0

    .line 431
    :pswitch_1a
    new-instance v2, Lcom/alipay/android/mini/window/sdk/r;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v5, v0}, Lcom/alipay/android/mini/window/sdk/r;-><init>(Lcom/alipay/android/mini/window/sdk/l;Lr/a;Lb/e;)V

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/sdk/r;->start()V

    move v2, v9

    .line 458
    goto/16 :goto_0

    .line 461
    :pswitch_1b
    invoke-static/range {p4 .. p4}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 462
    new-instance v2, Lcom/alipay/android/mini/window/sdk/s;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/window/sdk/s;-><init>(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V

    invoke-virtual {v2}, Lcom/alipay/android/mini/window/sdk/s;->start()V

    move v2, v9

    goto/16 :goto_0

    .line 468
    :cond_16
    invoke-interface/range {p5 .. p5}, Lb/e;->c()Lb/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/g;->l()Z

    move v2, v9

    .line 469
    goto/16 :goto_0

    .line 154
    :catch_1
    move-exception v4

    goto/16 :goto_3

    :cond_17
    move v2, v3

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
