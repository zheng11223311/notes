.class Lcom/tudou/ui/activity/DetailActivity$9;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/youku/player/apiservice/IPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$9;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needPay(Ljava/lang/String;Lcom/youku/player/module/PayInfo;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "payInfo"    # Lcom/youku/player/module/PayInfo;

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 622
    .local v1, "vipError":I
    const/4 v0, 0x0

    .line 623
    .local v0, "tip":Ljava/lang/String;
    const-string v2, "cannot"

    iget-object v3, p2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v3, v3, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    iget v1, p2, Lcom/youku/player/module/PayInfo;->show_paid:I

    .line 625
    iget-object v0, p2, Lcom/youku/player/module/PayInfo;->showname:Ljava/lang/String;

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$9;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    if-eqz v2, :cond_1

    .line 629
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$9;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/DetailActivity;->mPluginSmall:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v2, p2, v1, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$9;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$9;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v2, p2, v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V

    .line 634
    :cond_2
    return-void
.end method
