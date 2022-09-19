.class public final Lcom/alibaba/wireless/security/open/initialize/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wireless/security/open/initialize/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Z


# instance fields
.field private f:Lcom/alibaba/wireless/security/open/initialize/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/lang/Object;

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->d:Z

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/initialize/a;-><init>(Lcom/alibaba/wireless/security/open/initialize/b;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Lcom/alibaba/wireless/security/open/initialize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    invoke-static {p0}, Lcom/alibaba/wireless/security/open/initialize/b;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Z

    if-nez v0, :cond_3

    sget-object v1, Lcom/alibaba/wireless/security/open/initialize/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Z

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/a;->a(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/a;

    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->isSoValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "securitysdk-1.5.32"

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x67

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Landroid/content/ContextWrapper;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x67

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_1
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x66

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Z

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    if-nez v0, :cond_1

    sget-object v1, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/taobao/wireless/security/adapter/e/a;

    invoke-direct {v0, p0}, Lcom/taobao/wireless/security/adapter/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/taobao/wireless/security/adapter/e/a;->a()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/alibaba/wireless/security/open/a;->a(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/a;->a()Lcom/alibaba/wireless/security/open/umid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/umid/a;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    if-nez p1, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_0
    sget-object v1, Lcom/taobao/wireless/security/adapter/b/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/taobao/wireless/security/adapter/b/b;->a:Landroid/content/Context;

    :cond_1
    iget-object v0, v0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->loadLibrarySync(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized initializeAsync(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->loadLibraryAsync(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isSoValid(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized loadLibraryAsync(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/wireless/security/open/initialize/a$a;

    iget-object v2, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    new-instance v3, Landroid/content/ContextWrapper;

    invoke-direct {v3, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/initialize/a$a;-><init>(Lcom/alibaba/wireless/security/open/initialize/a;Landroid/content/ContextWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized loadLibrarySync(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/initialize/b;->c(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final registerInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V

    return-void
.end method

.method public final unregisterInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V

    return-void
.end method
