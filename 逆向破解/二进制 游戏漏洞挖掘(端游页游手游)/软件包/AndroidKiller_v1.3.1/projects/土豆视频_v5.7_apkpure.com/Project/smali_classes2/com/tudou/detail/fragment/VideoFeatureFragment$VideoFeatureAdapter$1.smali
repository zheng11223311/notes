.class Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;
.super Ljava/lang/Object;
.source "VideoFeatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

.field final synthetic val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;Lcom/tudou/detail/vo/DetailFeature$Feature;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->this$1:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 258
    const-string v0, "onItemClick"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->this$1:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v1, v1, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setSelection(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->this$1:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v8

    .line 265
    .local v8, "mediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    if-eqz v8, :cond_0

    .line 268
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v1, v1, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v9

    .line 269
    .local v9, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {v8, v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 271
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->this$1:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/tudou/ui/activity/DetailActivity;

    .line 272
    .local v11, "tDetailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v11}, Lcom/tudou/ui/activity/DetailActivity;->getContentPanel()Lcom/tudou/detail/widget/DetailContentPanel;

    move-result-object v10

    .line 273
    .local v10, "tContentPanel":Lcom/tudou/detail/widget/DetailContentPanel;
    invoke-virtual {v11}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 274
    if-eqz v10, :cond_2

    .line 275
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v0, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/tudou/detail/widget/DetailContentPanel;->setCurrentVideo(Ljava/lang/String;)V

    .line 277
    :cond_2
    const/16 v6, 0x37f

    .line 288
    .local v6, "flag":I
    invoke-virtual {v11}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->this$1:Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iget-object v2, v2, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    sget-object v5, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    goto :goto_0
.end method
