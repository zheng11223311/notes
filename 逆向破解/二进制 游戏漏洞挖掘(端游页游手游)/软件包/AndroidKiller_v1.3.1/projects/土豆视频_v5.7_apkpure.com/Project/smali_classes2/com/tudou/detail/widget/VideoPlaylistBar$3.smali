.class Lcom/tudou/detail/widget/VideoPlaylistBar$3;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$3;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    const-string v2, "onSubPageExpand"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$3;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/DetailContentPanel;

    .line 221
    .local v1, "parent":Lcom/tudou/detail/widget/DetailContentPanel;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$3;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    iget-boolean v2, v2, Lcom/tudou/detail/widget/VideoPlaylistBar;->isExpanded:Z

    if-eqz v2, :cond_1

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/detail/widget/DetailContentPanel;->hidePlayList(Z)V

    goto :goto_0

    .line 224
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u5c55\u5f00"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "t1.detail_sdetail.moreplaylist"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 227
    invoke-virtual {v1}, Lcom/tudou/detail/widget/DetailContentPanel;->showPlaylist()V

    goto :goto_0
.end method
