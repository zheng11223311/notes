.class Lcom/youku/phone/detail/plugin/PluginSmall$3;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;
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
    .line 487
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$3;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$3;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$800(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$3;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$800(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    :cond_0
    return-void
.end method
