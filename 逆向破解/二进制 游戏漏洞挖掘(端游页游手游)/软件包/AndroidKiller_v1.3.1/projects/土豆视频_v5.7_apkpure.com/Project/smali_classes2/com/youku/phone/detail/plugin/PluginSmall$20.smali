.class Lcom/youku/phone/detail/plugin/PluginSmall$20;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V
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
    .line 2056
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$20;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2060
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$20;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2500(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$20;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2500(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2062
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$20;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2600(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/youku/widget/Loading;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2063
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$20;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2600(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/youku/widget/Loading;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 2064
    :cond_1
    return-void
.end method
