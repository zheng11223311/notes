.class Lcom/tudou/ui/activity/DetailActivity$4$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity$4;->onFeatureItemClick(Landroid/view/View;Lcom/tudou/detail/vo/DetailFeature$Feature;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/DetailActivity$4;

.field final synthetic val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity$4;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$4;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iput p3, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.detail_sdetail.clipsvideoclick__.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v1, v1, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 420
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v0, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$4;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v1, v1, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v8

    .line 424
    .local v8, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$4;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 426
    const/16 v6, 0x37f

    .line 437
    .local v6, "flag":I
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$4;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$100(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/DetailModel;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$4;

    iget-object v1, v1, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$4$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v2, v2, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    sget-object v5, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    .line 440
    .end local v6    # "flag":I
    .end local v8    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_0
    return-void
.end method
