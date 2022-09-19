.class public Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetGameVideosService$OnGameVideosServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnGetGameVideosListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;)V
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 0
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 1409
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameVideosInfo;)V
    .locals 9
    .param p1, "gameVideosInfo"    # Lcom/youku/gamecenter/data/GameVideosInfo;

    .prologue
    .line 1413
    if-nez p1, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameVideosInfo;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1417
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$400(Lcom/youku/gamecenter/GameDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6709\u9519\u8bef\u7684vid"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1420
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$1100(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameVideosInfo;)V

    .line 1421
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$1200(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1422
    const/4 v8, 0x0

    .line 1423
    .local v8, "index":I
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameVideosInfo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/gamecenter/data/GameVideoInfo;

    .line 1424
    .local v6, "gameVideoInfo":Lcom/youku/gamecenter/data/GameVideoInfo;
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v1, v8}, Lcom/youku/gamecenter/GameDetailsActivity;->access$1300(Lcom/youku/gamecenter/GameDetailsActivity;I)Lcom/youku/gamecenter/widgets/GameCardView;

    move-result-object v0

    .line 1426
    .local v0, "gameCardView":Lcom/youku/gamecenter/widgets/GameCardView;
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v2, v6, Lcom/youku/gamecenter/data/GameVideoInfo;->title:Ljava/lang/String;

    iget v3, v6, Lcom/youku/gamecenter/data/GameVideoInfo;->type:I

    iget-object v4, v6, Lcom/youku/gamecenter/data/GameVideoInfo;->videoid:Ljava/lang/String;

    iget-object v5, v6, Lcom/youku/gamecenter/data/GameVideoInfo;->duration:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/GameCardView;->initViewData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v0, v6}, Lcom/youku/gamecenter/widgets/GameCardView;->setTag(Ljava/lang/Object;)V

    .line 1431
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v1

    iget-object v2, v6, Lcom/youku/gamecenter/data/GameVideoInfo;->img_hd:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameCardView;->getVideoImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1434
    add-int/lit8 v8, v8, 0x1

    .line 1435
    goto :goto_1
.end method
