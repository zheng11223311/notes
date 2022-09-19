.class public Lcom/punchbox/v4/j/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/v4/j/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/v4/j/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/j/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/j/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 4

    iget-object v0, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    const-string v1, "check_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    const-string v1, "check_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private g()V
    .locals 8

    const-string v0, "last_time"

    invoke-direct {p0, v0}, Lcom/punchbox/v4/j/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "delay_time"

    invoke-direct {p0, v2}, Lcom/punchbox/v4/j/e;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-string v0, "last_time"

    invoke-direct {p0, v0, v4, v5}, Lcom/punchbox/v4/j/e;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/punchbox/v4/j/e;->d:J

    const-string v0, "delay_time"

    iget-wide v2, p0, Lcom/punchbox/v4/j/e;->d:J

    invoke-direct {p0, v0, v2, v3}, Lcom/punchbox/v4/j/e;->a(Ljava/lang/String;J)V

    const-string v0, "last_time"

    invoke-direct {p0, v0, v4, v5}, Lcom/punchbox/v4/j/e;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/punchbox/v4/j/e;->d:J

    invoke-direct {p0}, Lcom/punchbox/v4/j/e;->j()V

    return-void
.end method

.method private i()I
    .locals 4

    const-wide/32 v0, 0x5265c00

    iget-wide v2, p0, Lcom/punchbox/v4/j/e;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    const-string v1, "check_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/j/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/punchbox/v4/j/e;->g()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/j/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()V
    .locals 4

    sget-object v0, Lcom/punchbox/v4/j/e;->a:Ljava/lang/String;

    const-string v1, "on checker prepare gather installed applications"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/v4/j/e;->h()V

    iget-object v0, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/punchbox/util/i;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/punchbox/report/j;->a(Landroid/content/Context;)Lcom/punchbox/report/j;

    move-result-object v1

    const-string v2, "AppList"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/punchbox/data/AppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/punchbox/report/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d()I
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/v4/j/e;->i()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/punchbox/v4/j/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ACTION_SNAPSHOT_CHECKER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    const-string v0, "last_time"

    invoke-direct {p0, v0}, Lcom/punchbox/v4/j/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
