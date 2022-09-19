.class Lcom/youku/player/plugin/PluginSimplePlayer$2;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->initPlayLayout()V
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
    .line 172
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$2;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$2;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->onContainerClick()V

    .line 177
    return-void
.end method
