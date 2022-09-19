.class Lcn/domob/android/ads/b$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/b;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/b;

.field final synthetic b:Lcn/domob/android/ads/b;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b;Lcn/domob/android/ads/b;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcn/domob/android/ads/b$1;->b:Lcn/domob/android/ads/b;

    iput-object p2, p0, Lcn/domob/android/ads/b$1;->a:Lcn/domob/android/ads/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 511
    :try_start_0
    sget-boolean v0, Lcn/domob/android/ads/i;->a:Z

    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Lcn/domob/android/ads/b;->O()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Start to load config request"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 513
    new-instance v0, Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/b$1;->a:Lcn/domob/android/ads/b;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/i;-><init>(Lcn/domob/android/ads/b;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->a()V

    .line 516
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b$1;->b:Lcn/domob/android/ads/b;

    iget-object v1, v1, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    iget-object v0, p0, Lcn/domob/android/ads/b$1;->b:Lcn/domob/android/ads/b;

    invoke-static {v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcn/domob/android/ads/b$1;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->c()V

    .line 519
    invoke-static {}, Lcn/domob/android/ads/b;->O()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Load after schedule request."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcn/domob/android/ads/b$1;->b:Lcn/domob/android/ads/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/b;Z)Z

    .line 521
    new-instance v0, Lcn/domob/android/ads/d;

    iget-object v1, p0, Lcn/domob/android/ads/b$1;->a:Lcn/domob/android/ads/b;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d;-><init>(Lcn/domob/android/ads/b;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/d;->a()V

    .line 540
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/b;->O()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "An ad is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcn/domob/android/d/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 534
    invoke-static {}, Lcn/domob/android/ads/b;->O()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Config request is ongoing, ignore this time"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_2
    :try_start_1
    invoke-static {}, Lcn/domob/android/ads/b;->O()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad has been disabled currently. Disable expire time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/c;->c()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/domob/android/d/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
