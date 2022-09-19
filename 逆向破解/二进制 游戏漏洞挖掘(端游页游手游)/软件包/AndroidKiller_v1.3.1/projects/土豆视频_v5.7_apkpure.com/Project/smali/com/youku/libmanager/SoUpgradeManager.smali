.class public Lcom/youku/libmanager/SoUpgradeManager;
.super Ljava/lang/Object;
.source "SoUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/libmanager/SoUpgradeManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/youku/libmanager/SoUpgradeCallback;

.field private mHandler:Landroid/os/Handler;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSoUpgradeCallback:Lcom/youku/libmanager/ISoUpgradeCallback$Stub;

.field private mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/youku/libmanager/SoUpgradeManager$1;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeManager$1;-><init>(Lcom/youku/libmanager/SoUpgradeManager;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 57
    new-instance v0, Lcom/youku/libmanager/SoUpgradeManager$2;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeManager$2;-><init>(Lcom/youku/libmanager/SoUpgradeManager;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeCallback:Lcom/youku/libmanager/ISoUpgradeCallback$Stub;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/ISoUpgradeService;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/libmanager/SoUpgradeManager;Lcom/youku/libmanager/ISoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;
    .param p1, "x1"    # Lcom/youku/libmanager/ISoUpgradeService;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/ISoUpgradeCallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeCallback:Lcom/youku/libmanager/ISoUpgradeCallback$Stub;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/SoUpgradeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mCallback:Lcom/youku/libmanager/SoUpgradeCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/libmanager/SoUpgradeManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/youku/libmanager/SoUpgradeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/youku/libmanager/SoUpgradeManager;->mStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/youku/libmanager/SoUpgradeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/youku/libmanager/SoUpgradeManager;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/youku/libmanager/SoUpgradeManager$SingletonHolder;->INSTANCE:Lcom/youku/libmanager/SoUpgradeManager;

    return-object v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 95
    return-void
.end method

.method public isSoDownloaded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

    invoke-interface {v1, p1}, Lcom/youku/libmanager/ISoUpgradeService;->isSoDownloaded(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoUpgradeService"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSoUpgradeCallback(Lcom/youku/libmanager/SoUpgradeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/youku/libmanager/SoUpgradeCallback;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeManager;->mCallback:Lcom/youku/libmanager/SoUpgradeCallback;

    .line 123
    return-void
.end method

.method public startDownloadSo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 98
    iput-boolean v3, p0, Lcom/youku/libmanager/SoUpgradeManager;->mStarted:Z

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeManager;->mSoUpgradeService:Lcom/youku/libmanager/ISoUpgradeService;

    invoke-interface {v2, p2}, Lcom/youku/libmanager/ISoUpgradeService;->startDownloadSo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "flag"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void

    .line 103
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SoUpgradeService"

    invoke-static {v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
