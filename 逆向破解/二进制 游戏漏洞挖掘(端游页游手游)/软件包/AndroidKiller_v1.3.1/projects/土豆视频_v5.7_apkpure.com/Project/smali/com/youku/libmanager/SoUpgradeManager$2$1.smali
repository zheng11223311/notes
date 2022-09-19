.class Lcom/youku/libmanager/SoUpgradeManager$2$1;
.super Ljava/lang/Object;
.source "SoUpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/libmanager/SoUpgradeManager$2;->onDownloadEnd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/libmanager/SoUpgradeManager$2;

.field final synthetic val$soName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeManager$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeManager$2$1;->this$1:Lcom/youku/libmanager/SoUpgradeManager$2;

    iput-object p2, p0, Lcom/youku/libmanager/SoUpgradeManager$2$1;->val$soName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$2$1;->this$1:Lcom/youku/libmanager/SoUpgradeManager$2;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$200(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/SoUpgradeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeManager$2$1;->this$1:Lcom/youku/libmanager/SoUpgradeManager$2;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeManager$2;->this$0:Lcom/youku/libmanager/SoUpgradeManager;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeManager;->access$200(Lcom/youku/libmanager/SoUpgradeManager;)Lcom/youku/libmanager/SoUpgradeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeManager$2$1;->val$soName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/libmanager/SoUpgradeCallback;->onDownloadEnd(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
