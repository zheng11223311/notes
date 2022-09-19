.class Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->run(Lorg/openad/events/IXYDEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;->this$1:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;->this$1:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$500(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;->this$1:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;->this$1:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;->this$1:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$400(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 889
    return-void
.end method
