.class Lcom/youku/player/plugin/PluginADPlay$6;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->onPluginAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;

.field final synthetic val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$6;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iput-object p2, p0, Lcom/youku/player/plugin/PluginADPlay$6;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay$6;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay$6;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 269
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_0

    .line 273
    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay$6;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay$6;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v1

    .line 274
    .local v1, "point":I
    :goto_1
    div-int/lit16 v2, v1, 0x3e8

    .line 275
    .local v2, "progress":I
    invoke-static {v0, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeViewIMP(Lcom/youku/player/goplay/AdvInfo;I)V

    .line 276
    new-instance v3, Lcom/youku/player/plugin/AdvClickProcessor;

    invoke-direct {v3}, Lcom/youku/player/plugin/AdvClickProcessor;-><init>()V

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$6;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0, v1}, Lcom/youku/player/plugin/AdvClickProcessor;->trueViewAdvPlayClicked(Landroid/app/Activity;Lcom/youku/player/goplay/AdvInfo;I)V

    goto :goto_0

    .line 273
    .end local v1    # "point":I
    .end local v2    # "progress":I
    :cond_2
    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay$6;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getAdPausedPosition()I

    move-result v1

    goto :goto_1
.end method
