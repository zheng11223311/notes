.class Lcom/youku/player/plugin/PluginImageAD$2;
.super Ljava/lang/Object;
.source "PluginImageAD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginImageAD;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginImageAD;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/youku/player/plugin/PluginImageAD$2;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$2;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    return-void
.end method
