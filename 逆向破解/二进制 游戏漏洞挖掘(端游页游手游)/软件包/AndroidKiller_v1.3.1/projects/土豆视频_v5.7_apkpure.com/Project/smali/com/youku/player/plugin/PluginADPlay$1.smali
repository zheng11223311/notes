.class Lcom/youku/player/plugin/PluginADPlay$1;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "allowONline3G"

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->defaultAllow3G()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWhenADOverTime()V

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\u8bf7\u8bbe\u7f6e3g/2g\u5141\u8bb8\u64ad\u653e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->startPlay()V

    .line 66
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$1;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->play_adButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
