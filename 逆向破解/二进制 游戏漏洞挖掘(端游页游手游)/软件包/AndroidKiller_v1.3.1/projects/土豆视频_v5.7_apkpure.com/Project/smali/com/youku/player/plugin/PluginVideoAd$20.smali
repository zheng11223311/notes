.class Lcom/youku/player/plugin/PluginVideoAd$20;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$20;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1093
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$20;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$20;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->play_adButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$20;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$20;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$1400(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youku/player/ui/widget/YpYoukuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 1099
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
