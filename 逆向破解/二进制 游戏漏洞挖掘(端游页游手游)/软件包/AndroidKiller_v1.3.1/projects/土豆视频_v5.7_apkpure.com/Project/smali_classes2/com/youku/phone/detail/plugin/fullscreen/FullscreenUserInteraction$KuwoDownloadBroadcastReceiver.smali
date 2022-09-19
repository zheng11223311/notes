.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FullscreenUserInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KuwoDownloadBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;


# direct methods
.method public constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 847
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 848
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "mvId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 849
    .local v4, "mvId":J
    const-string v6, "downState"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 850
    .local v1, "downState":I
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->getKuwoMVID()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 851
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v6, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$700(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;I)V

    .line 852
    const-string v6, "downMessage"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 854
    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "downState":I
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "mvId":J
    :cond_0
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
