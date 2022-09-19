.class Lcom/tudou/adapter/DanmuPreviewAdapter$5;
.super Ljava/lang/Object;
.source "DanmuPreviewAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;->slideview(Landroid/widget/TextView;IIILcom/youku/vo/DanmuListResult$DanmuResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

.field final synthetic val$i:I

.field final synthetic val$item:Lcom/youku/vo/DanmuListResult$DanmuResult;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;ILcom/youku/vo/DanmuListResult$DanmuResult;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    iput p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    iput-object p3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$item:Lcom/youku/vo/DanmuListResult$DanmuResult;

    iput-object p4, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 305
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 295
    iget v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$200(Lcom/tudou/adapter/DanmuPreviewAdapter;)[I

    move-result-object v1

    iget v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$item:Lcom/youku/vo/DanmuListResult$DanmuResult;

    iget-object v1, v1, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$200(Lcom/tudou/adapter/DanmuPreviewAdapter;)[I

    move-result-object v0

    iget v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$item:Lcom/youku/vo/DanmuListResult$DanmuResult;

    iget-object v0, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->danmu_body:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$200(Lcom/tudou/adapter/DanmuPreviewAdapter;)[I

    move-result-object v3

    iget v4, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$200(Lcom/tudou/adapter/DanmuPreviewAdapter;)[I

    move-result-object v0

    iget v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$5;->val$i:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 300
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 291
    return-void
.end method
