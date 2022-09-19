.class Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "ActorCorVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

.field final synthetic val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/ActorCorVideosAdapter;Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;->this$0:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;->val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

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
    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;->val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mPic:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;->val$actorCategorysItemHolder:Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_0
    return-void
.end method
