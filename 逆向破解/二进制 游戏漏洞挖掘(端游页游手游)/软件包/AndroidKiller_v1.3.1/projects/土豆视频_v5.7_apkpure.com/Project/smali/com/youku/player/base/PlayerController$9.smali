.class Lcom/youku/player/base/PlayerController$9;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/PlayerController;->updatePlugin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/PlayerController;

.field final synthetic val$pluginID:I


# direct methods
.method constructor <init>(Lcom/youku/player/base/PlayerController;I)V
    .locals 0

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iput p2, p0, Lcom/youku/player/base/PlayerController$9;->val$pluginID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1224
    iget v0, p0, Lcom/youku/player/base/PlayerController$9;->val$pluginID:I

    packed-switch v0, :pswitch_data_0

    .line 1254
    :pswitch_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-virtual {v0}, Lcom/youku/player/base/PlayerController;->detectPlugin()V

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1226
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1232
    :pswitch_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1238
    :pswitch_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1244
    :pswitch_4
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addInvestigatePlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    .line 1250
    :pswitch_5
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$9;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-virtual {v0}, Lcom/youku/player/base/PlayerController;->detectPlugin()V

    goto/16 :goto_0

    .line 1224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
