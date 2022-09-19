.class Lcom/youku/libmanager/SoUpgradeManager$1$1;
.super Ljava/lang/Object;
.source "SoUpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/libmanager/SoUpgradeManager$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/libmanager/SoUpgradeManager$1;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeManager$1;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeManager$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeManager$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$200(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/SoUpgradeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeManager$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeManager$1;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$200(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/SoUpgradeCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/youku/libmanager/SoUpgradeCallback;->onDownloadFailed(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
