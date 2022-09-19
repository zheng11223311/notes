.class Lcom/youku/service/acc/AcceleraterManager$1;
.super Ljava/lang/Object;
.source "AcceleraterManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/acc/AcceleraterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/acc/AcceleraterManager;


# direct methods
.method constructor <init>(Lcom/youku/service/acc/AcceleraterManager;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/service/acc/AcceleraterManager$1;->this$0:Lcom/youku/service/acc/AcceleraterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 39
    const-string v0, "Accelerater_Manager"

    const-string v1, "onServiceConnected() called"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterManager$1;->this$0:Lcom/youku/service/acc/AcceleraterManager;

    invoke-static {p2}, Lcom/youku/service/acc/IAcceleraterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/service/acc/IAcceleraterService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/service/acc/AcceleraterManager;->access$002(Lcom/youku/service/acc/AcceleraterManager;Lcom/youku/service/acc/IAcceleraterService;)Lcom/youku/service/acc/IAcceleraterService;

    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 33
    const-string v0, "Accelerater_Manager"

    const-string v1, "onServiceDisconnected() called"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterManager$1;->this$0:Lcom/youku/service/acc/AcceleraterManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/service/acc/AcceleraterManager;->access$002(Lcom/youku/service/acc/AcceleraterManager;Lcom/youku/service/acc/IAcceleraterService;)Lcom/youku/service/acc/IAcceleraterService;

    .line 35
    return-void
.end method
