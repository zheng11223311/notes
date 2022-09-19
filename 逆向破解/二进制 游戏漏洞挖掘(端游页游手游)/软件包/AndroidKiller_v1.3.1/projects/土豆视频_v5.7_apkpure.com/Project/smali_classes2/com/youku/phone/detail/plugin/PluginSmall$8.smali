.class Lcom/youku/phone/detail/plugin/PluginSmall$8;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->initEndPage()V
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
    .line 813
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$8;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 817
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$8;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1400(Lcom/youku/phone/detail/plugin/PluginSmall;Z)V

    .line 820
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$8;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1500(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    goto :goto_0
.end method
