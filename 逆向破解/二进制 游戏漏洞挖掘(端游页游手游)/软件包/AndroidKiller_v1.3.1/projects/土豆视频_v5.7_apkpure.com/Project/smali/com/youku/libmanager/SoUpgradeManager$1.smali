.class Lcom/youku/libmanager/SoUpgradeManager$1;
.super Ljava/lang/Object;
.source "SoUpgradeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/libmanager/SoUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/libmanager/SoUpgradeManager;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeManager;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 30
    const-string v1, "SoUpgradeService"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {p2}, Lcom/youku/libmanager/ISoUpgradeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/libmanager/ISoUpgradeService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/libmanager/SoUpgradeManager;->access$002(Lcom/youku/libmanager/SoUpgradeManager;Lcom/youku/libmanager/ISoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeService;

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeManager;->access$000(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/ISoUpgradeService;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v2}, Lcom/youku/libmanager/SoUpgradeManager;->access$100(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/ISoUpgradeCallback$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/youku/libmanager/ISoUpgradeService;->registerCallback(Lcom/youku/libmanager/ISoUpgradeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoUpgradeService"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 41
    const-string v0, "SoUpgradeService"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$200(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/SoUpgradeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$300(Lcom/youku/libmanager/SoUpgradeManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "SoUpgradeService"

    const-string v1, "Service Disconnected, rebind and show failed."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youku/libmanager/SoUpgradeManager;->bindService(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$400(Lcom/youku/libmanager/SoUpgradeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/libmanager/SoUpgradeManager$1$1;

    invoke-direct {v1, p0}, Lcom/youku/libmanager/SoUpgradeManager$1$1;-><init>(Lcom/youku/libmanager/SoUpgradeManager$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_0
    return-void
.end method
