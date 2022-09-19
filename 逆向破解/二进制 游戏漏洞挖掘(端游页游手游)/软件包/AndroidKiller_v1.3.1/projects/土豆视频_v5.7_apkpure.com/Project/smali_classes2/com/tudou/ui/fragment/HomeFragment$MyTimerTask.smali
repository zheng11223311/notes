.class Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;
.super Ljava/util/TimerTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1896
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$2900(Lcom/tudou/ui/fragment/HomeFragment;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1898
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$2800(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 1899
    const-string v1, "AD"

    const-string v2, " mTimerTask closeAd "

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    :goto_0
    return-void

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTimerTask Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
