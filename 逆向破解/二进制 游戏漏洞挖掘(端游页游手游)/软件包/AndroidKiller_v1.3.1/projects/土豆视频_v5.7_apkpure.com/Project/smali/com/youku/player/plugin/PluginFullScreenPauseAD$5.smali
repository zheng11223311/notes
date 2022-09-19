.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$5;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginFullScreenPauseAD;->dismissPauseAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$5;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$5;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$5;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$500(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    .line 472
    return-void
.end method
