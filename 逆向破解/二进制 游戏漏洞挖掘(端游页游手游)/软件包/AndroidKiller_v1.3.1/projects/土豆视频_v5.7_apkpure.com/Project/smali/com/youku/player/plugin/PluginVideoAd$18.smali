.class Lcom/youku/player/plugin/PluginVideoAd$18;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginVideoAd;

.field final synthetic val$advInfo:Lcom/youku/player/goplay/AdvInfo;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iput-object p2, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->val$advInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1069
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1075
    :goto_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->play_adButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$1400(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youku/player/ui/widget/YpYoukuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 1079
    return-void

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd$18;->val$advInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method
