.class Lcom/youku/player/plugin/PluginPayTip$1;
.super Ljava/lang/Object;
.source "PluginPayTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginPayTip;->findView()V
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
    .line 87
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip$1;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$1;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginPayTip;->onCloseClick()V

    .line 92
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$1;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->CLOSED:Lcom/youku/player/plugin/PluginPayTip$TipState;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginPayTip;->access$002(Lcom/youku/player/plugin/PluginPayTip;Lcom/youku/player/plugin/PluginPayTip$TipState;)Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 93
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$1;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginPayTip;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    return-void
.end method
