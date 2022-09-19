.class Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$7;
.super Landroid/content/BroadcastReceiver;
.source "WaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    const-string v2, "uid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "key":Ljava/lang/String;
    const-string v2, "isatt"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    .local v0, "att":Z
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAttentionReceiver onReceive key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " att = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->onAttentionChange(Z)V

    .line 294
    return-void
.end method
