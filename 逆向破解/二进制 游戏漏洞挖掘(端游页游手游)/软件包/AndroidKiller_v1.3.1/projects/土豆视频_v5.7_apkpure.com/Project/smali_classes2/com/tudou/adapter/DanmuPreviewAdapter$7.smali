.class Lcom/tudou/adapter/DanmuPreviewAdapter$7;
.super Ljava/lang/Object;
.source "DanmuPreviewAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;->beginDanmuCount(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

.field final synthetic val$animEnd:Landroid/view/animation/Animation;

.field final synthetic val$tempFinal:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$animEnd:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 464
    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$animEnd:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 466
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 458
    .local v0, "a":I
    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$7;->val$tempFinal:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 453
    return-void
.end method
