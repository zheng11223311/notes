.class Lcom/youku/player/plugin/PluginVideoAd$1;
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
    .line 139
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$1;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$1;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$1;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$000(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$002(Lcom/youku/player/plugin/PluginVideoAd;I)I

    .line 143
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$1;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$1;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginVideoAd;->access$000(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->enableVoice(I)V

    .line 144
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$1;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$100(Lcom/youku/player/plugin/PluginVideoAd;)V

    .line 145
    return-void
.end method
