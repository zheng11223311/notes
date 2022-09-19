.class Lcom/tudou/detail/widget/VideoFavCacheBar$1;
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
    .line 64
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$1;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    const-string v1, "t1.detail_sdetail.share"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 69
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$1;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoFavCacheBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 70
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onBtnShareClicked()V

    .line 71
    return-void
.end method
