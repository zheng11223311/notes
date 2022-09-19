.class Lcom/youku/player/plugin/PluginPayTip$2;
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
    .line 96
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip$2;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip$2;->this$0:Lcom/youku/player/plugin/PluginPayTip;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginPayTip;->onTextAndArrowButtonClick()V

    .line 101
    return-void
.end method
