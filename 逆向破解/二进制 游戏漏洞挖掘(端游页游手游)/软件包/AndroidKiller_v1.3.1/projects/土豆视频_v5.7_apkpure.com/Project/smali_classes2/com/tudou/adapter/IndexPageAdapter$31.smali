.class Lcom/tudou/adapter/IndexPageAdapter$31;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initRotateAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;)V
    .locals 0

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$31;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$31;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/IndexPageAdapter;->notifyDataSetChanged()V

    .line 1480
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1485
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1475
    return-void
.end method
