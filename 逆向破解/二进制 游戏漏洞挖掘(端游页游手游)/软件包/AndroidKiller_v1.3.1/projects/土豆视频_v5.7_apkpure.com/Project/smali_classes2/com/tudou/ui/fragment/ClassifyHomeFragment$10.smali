.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;
.super Ljava/lang/Thread;
.source "ClassifyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->addShotCutChannel(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

.field final synthetic val$addLauncherList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->val$addLauncherList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 456
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->val$addLauncherList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 458
    :try_start_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->val$addLauncherList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelListInfo;

    iget-object v4, v4, Lcom/youku/vo/ChannelListInfo;->shortcut_icon:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->val$addLauncherList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelListInfo;

    invoke-static {v5, v4, v0}, Lcom/tudou/service/classify/ClassifyManager;->addShotCutChannel(Landroid/content/Context;Lcom/youku/vo/ChannelListInfo;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v2, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "ct"

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->val$addLauncherList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelListInfo;

    iget-object v4, v4, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v4, "t1.home_category.addtable"

    invoke-static {v4, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    .end local v2    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->val$addLauncherList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelListInfo;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/tudou/service/classify/ClassifyManager;->addShotCutChannel(Landroid/content/Context;Lcom/youku/vo/ChannelListInfo;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_1

    .line 473
    :goto_2
    return-void

    .line 472
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$10;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0x186ab

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
