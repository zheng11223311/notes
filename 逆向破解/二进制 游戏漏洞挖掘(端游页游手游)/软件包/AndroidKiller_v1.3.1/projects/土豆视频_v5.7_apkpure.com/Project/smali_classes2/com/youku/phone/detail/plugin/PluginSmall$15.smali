.class Lcom/youku/phone/detail/plugin/PluginSmall$15;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->onLoadingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$15;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$15;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1700(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1355
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$15;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1500(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1356
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$15;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoading(Z)V

    .line 1357
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$15;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2000(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1358
    return-void
.end method
