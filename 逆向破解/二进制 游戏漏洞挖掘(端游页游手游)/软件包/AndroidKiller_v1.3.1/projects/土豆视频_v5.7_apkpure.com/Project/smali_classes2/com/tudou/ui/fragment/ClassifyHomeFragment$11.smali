.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;
.super Ljava/lang/Thread;
.source "ClassifyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/vo/ChannelListV5;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$11;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/vo/ChannelListV5;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v1, v1, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelListInfo;

    iget-object v1, v1, Lcom/youku/vo/ChannelListInfo;->shortcut_icon:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method
