.class Lcom/youku/player/plugin/PluginPayTip$3;
.super Ljava/lang/Object;
.source "PluginPayTip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginPayTip;->onErrorListener(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginPayTip;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginPayTip;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip$3;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$3;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginPayTip;->access$002(Lcom/youku/player/plugin/PluginPayTip;Lcom/youku/player/plugin/PluginPayTip$TipState;)Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 146
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$3;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method
