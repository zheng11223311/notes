.class Lcom/youku/libmanager/SoUpgradeManager$2;
.super Lcom/youku/libmanager/ISoUpgradeCallback$Stub;
.source "SoUpgradeManager.java"


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
    .line 57
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-direct {p0}, Lcom/youku/libmanager/ISoUpgradeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadEnd(Ljava/lang/String;)V
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/libmanager/SoUpgradeManager;->access$302(Lcom/youku/libmanager/SoUpgradeManager;Z)Z

    .line 61
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$400(Lcom/youku/libmanager/SoUpgradeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/libmanager/SoUpgradeManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/libmanager/SoUpgradeManager$2$1;-><init>(Lcom/youku/libmanager/SoUpgradeManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/libmanager/SoUpgradeManager;->access$302(Lcom/youku/libmanager/SoUpgradeManager;Z)Z

    .line 74
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$400(Lcom/youku/libmanager/SoUpgradeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/libmanager/SoUpgradeManager$2$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/libmanager/SoUpgradeManager$2$2;-><init>(Lcom/youku/libmanager/SoUpgradeManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
