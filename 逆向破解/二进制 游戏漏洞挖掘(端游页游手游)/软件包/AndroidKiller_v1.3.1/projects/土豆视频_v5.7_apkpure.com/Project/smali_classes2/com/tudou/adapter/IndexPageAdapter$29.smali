.class Lcom/tudou/adapter/IndexPageAdapter$29;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->applyRotationDelete(Landroid/view/View;FFLcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$rotation:Lcom/youku/util/Rotate3DAnimationItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Landroid/view/View;Lcom/youku/util/Rotate3DAnimationItem;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->val$rotation:Lcom/youku/util/Rotate3DAnimationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x2

    .line 1416
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, v1, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageItem;

    .line 1417
    .local v0, "item":Lcom/youku/vo/IndexPageItem;
    iget v1, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-ne v1, v2, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->val$itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1419
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, v1, Lcom/tudou/adapter/IndexPageAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1420
    const/4 v1, 0x0

    sput-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    .line 1421
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/IndexPageAdapter;->notifyDataSetChanged()V

    .line 1423
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$29;->val$rotation:Lcom/youku/util/Rotate3DAnimationItem;

    invoke-virtual {v1}, Lcom/youku/util/Rotate3DAnimationItem;->cancel()V

    .line 1424
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1429
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1412
    return-void
.end method
