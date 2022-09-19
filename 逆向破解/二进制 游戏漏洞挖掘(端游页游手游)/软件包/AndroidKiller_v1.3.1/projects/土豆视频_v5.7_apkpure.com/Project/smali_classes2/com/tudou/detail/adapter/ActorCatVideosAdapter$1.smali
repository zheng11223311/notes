.class Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "ActorCatVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/ActorCatVideosAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

.field final synthetic val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;

.field final synthetic val$video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/ActorCatVideosAdapter;Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;->this$0:Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;->val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;

    iput-object p3, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;->val$video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;->val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->mPic:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;->val$video:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    iget-object v0, v0, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;->img:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$1;->val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/ActorCatVideosAdapter$ActorCatVideosItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_0
    return-void
.end method
