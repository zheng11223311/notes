.class Lcom/youku/player/plugin/PluginVideoAd$2;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginVideoAd;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$202(Lcom/youku/player/plugin/PluginVideoAd;Z)Z

    .line 160
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$300(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$300(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->show()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$400(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$500(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 169
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$2;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    .line 170
    return-void
.end method
