.class Lcom/tudou/detail/widget/VideoPlaylistBar$8;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;->setVideoPlaylistInfo(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/vo/VideoList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

.field final synthetic val$list:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;Lcom/tudou/detail/vo/VideoList;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->val$list:Lcom/tudou/detail/vo/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 413
    iget-object v7, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v7}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/tudou/ui/activity/DetailActivity;

    .line 414
    .local v5, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    iget-object v7, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v7}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$1200(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->getVideo(I)Lcom/tudou/detail/vo/Video;

    move-result-object v6

    .line 415
    .local v6, "video":Lcom/tudou/detail/vo/Video;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "type"

    const-string v8, "\u6a2a\u62d6"

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v7, "t1.detail_sdetail.playlistClick"

    invoke-static {v7, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 418
    if-eqz v6, :cond_0

    .line 419
    iget-boolean v7, v6, Lcom/tudou/detail/vo/Video;->isKuwo:Z

    if-eqz v7, :cond_1

    .line 421
    :try_start_0
    const-string v7, "t1.detail_sdetail.kuwo"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 422
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v7, "cn.kuwo.player"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    iget-object v7, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->val$list:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v7}, Lcom/tudou/detail/vo/VideoList;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "str":Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v7, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v7}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Lcom/youku/widget/TudouDialog;

    iget-object v7, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v7}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v3, v7, v8}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 430
    .local v3, "mDialog":Lcom/youku/widget/TudouDialog;
    const-string v7, "\u60a8\u8fd8\u6ca1\u6709\u5b89\u88c5\u9177\u6211\u97f3\u4e50"

    invoke-virtual {v3, v7}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 431
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 432
    const-string v7, "\u7acb\u5373\u5b89\u88c5"

    new-instance v8, Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;

    invoke-direct {v8, p0, v3}, Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar$8;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v3, v7, v8}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 445
    new-instance v7, Lcom/tudou/detail/widget/VideoPlaylistBar$8$2;

    invoke-direct {v7, p0, v3}, Lcom/tudou/detail/widget/VideoPlaylistBar$8$2;-><init>(Lcom/tudou/detail/widget/VideoPlaylistBar$8;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v3, v7}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 457
    invoke-virtual {v3}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_0

    .line 460
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "mDialog":Lcom/youku/widget/TudouDialog;
    :cond_1
    iget-object v7, v6, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v5, p3, v7, v9}, Lcom/tudou/ui/activity/DetailActivity;->onSeriesItemClick(ILjava/lang/String;Lcom/tudou/android/Youku$VideoType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 461
    iget-object v7, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    iget-object v8, v6, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tudou/detail/widget/VideoPlaylistBar;->setSelection(Ljava/lang/String;)V

    goto :goto_0
.end method
