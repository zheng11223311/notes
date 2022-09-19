.class Lcom/tudou/ui/activity/DetailActivity$3$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity$3;->onRecommendItemClick(Landroid/view/View;Lcom/youku/vo/RelatedVideo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/DetailActivity$3;

.field final synthetic val$video:Lcom/youku/vo/RelatedVideo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity$3;Lcom/youku/vo/RelatedVideo;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$3$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$3;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$3$1;->val$video:Lcom/youku/vo/RelatedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string v0, "t1.detail_sdetail.recommendvideoclick"

    invoke-static {v0, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 405
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$3$1;->val$video:Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$3$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$3;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity$3;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$3$1;->val$video:Lcom/youku/vo/RelatedVideo;

    iget-object v1, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$3$1;->val$video:Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
