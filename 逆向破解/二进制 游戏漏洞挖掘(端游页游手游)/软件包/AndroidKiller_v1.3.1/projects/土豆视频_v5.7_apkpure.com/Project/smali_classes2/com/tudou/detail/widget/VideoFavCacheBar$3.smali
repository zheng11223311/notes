.class Lcom/tudou/detail/widget/VideoFavCacheBar$3;
.super Ljava/lang/Object;
.source "VideoFavCacheBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoFavCacheBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoFavCacheBar;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$3;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$3;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoFavCacheBar;->access$000(Lcom/tudou/detail/widget/VideoFavCacheBar;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u53d6\u6d88\u6536\u85cf"

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$3;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoFavCacheBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 92
    .local v1, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v1, :cond_0

    .line 93
    const-string v2, "vid"

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    const-string v2, "t1.detail_sdetail.collection"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 97
    new-instance v2, Lcom/tudou/detail/widget/VideoFavCacheBar$3$1;

    invoke-direct {v2, p0}, Lcom/tudou/detail/widget/VideoFavCacheBar$3$1;-><init>(Lcom/tudou/detail/widget/VideoFavCacheBar$3;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnFavClicked(Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;)V

    .line 108
    return-void

    .line 90
    .end local v1    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_1
    const-string v2, "\u6536\u85cf"

    goto :goto_0
.end method
