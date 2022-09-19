.class Lcom/youku/player/config/YoukuController$1;
.super Ljava/lang/Object;
.source "YoukuController.java"

# interfaces
.implements Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/config/YoukuController;->showInputPassWordDialog(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/config/YoukuController;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method constructor <init>(Lcom/youku/player/config/YoukuController;Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/youku/player/config/YoukuController$1;->this$0:Lcom/youku/player/config/YoukuController;

    iput-object p2, p0, Lcom/youku/player/config/YoukuController$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/youku/player/config/YoukuController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/config/YoukuController$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "allowONline3G"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/config/YoukuController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/config/YoukuController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/youku/player/config/YoukuController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->set3GTips()V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/youku/player/config/YoukuController$1;->this$0:Lcom/youku/player/config/YoukuController;

    iget-object v1, p0, Lcom/youku/player/config/YoukuController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1, p1}, Lcom/youku/player/config/YoukuController;->playVideoWithPassword(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V

    goto :goto_0
.end method
