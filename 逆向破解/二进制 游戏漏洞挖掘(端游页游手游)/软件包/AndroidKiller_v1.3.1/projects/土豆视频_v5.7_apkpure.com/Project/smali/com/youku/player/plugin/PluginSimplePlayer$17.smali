.class Lcom/youku/player/plugin/PluginSimplePlayer$17;
.super Landroid/os/Handler;
.source "PluginSimplePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginSimplePlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    .line 834
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 836
    :pswitch_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 843
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2300(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    goto :goto_0

    .line 847
    :pswitch_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2300(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 848
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$17;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2400(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    goto :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
