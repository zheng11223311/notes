.class Lcom/youku/gamecenter/util/UIUtils$3$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/util/UIUtils$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/util/UIUtils$3;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/util/UIUtils$3;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/youku/gamecenter/util/UIUtils$3$1;->this$0:Lcom/youku/gamecenter/util/UIUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$3$1;->this$0:Lcom/youku/gamecenter/util/UIUtils$3;

    iget-object v0, v0, Lcom/youku/gamecenter/util/UIUtils$3;->val$animationView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$3$1;->this$0:Lcom/youku/gamecenter/util/UIUtils$3;

    iget-object v0, v0, Lcom/youku/gamecenter/util/UIUtils$3;->val$group:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/youku/gamecenter/util/UIUtils$3$1;->this$0:Lcom/youku/gamecenter/util/UIUtils$3;

    iget-object v1, v1, Lcom/youku/gamecenter/util/UIUtils$3;->val$animationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    return-void
.end method
