.class Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DetailHLSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/DetailHLSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailHLSActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailHLSActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;->this$0:Lcom/tudou/ui/activity/DetailHLSActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const-string v4, "level"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "level":I
    const-string/jumbo v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, "scale":I
    mul-int/lit8 v4, v1, 0x64

    div-int v0, v4, v2

    .line 111
    .local v0, "curPower":I
    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "states":I
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;->this$0:Lcom/tudou/ui/activity/DetailHLSActivity;

    iget-object v4, v4, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;->this$0:Lcom/tudou/ui/activity/DetailHLSActivity;

    iget-object v4, v4, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v4, v0, v3}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->setbattery(II)V

    .line 116
    .end local v0    # "curPower":I
    .end local v1    # "level":I
    .end local v2    # "scale":I
    .end local v3    # "states":I
    :cond_0
    return-void
.end method
