.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;
.super Ljava/lang/Object;
.source "FullScreenFragmentVideoList.java"

# interfaces
.implements Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureItemClick(Landroid/view/View;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "f"    # Lcom/tudou/detail/vo/DetailFeature$Feature;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 198
    iget-object v0, p2, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 205
    .local v1, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v8, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v0, p2, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v8, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 210
    invoke-virtual {v8, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 211
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 213
    const/16 v6, 0x37f

    .line 224
    .local v6, "flag":I
    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v0

    iget-object v2, p2, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    sget-object v5, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    goto :goto_0
.end method
