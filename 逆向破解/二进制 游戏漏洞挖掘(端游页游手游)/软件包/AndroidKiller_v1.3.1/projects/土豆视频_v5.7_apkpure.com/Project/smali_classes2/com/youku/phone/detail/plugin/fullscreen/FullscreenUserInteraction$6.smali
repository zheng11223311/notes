.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->initIneract()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 506
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.kuwo.player.intent.action.mvdownload"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "mvId"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "mvId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 509
    const-string v2, "downAction"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v2, "boardcastAction"

    const-string v3, "com.tudou.android.intent.kuwo_download_info_changed"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v2, "downInfo"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "downInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 513
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/activity/DetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    return-void
.end method
