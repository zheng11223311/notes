.class Lcom/tudou/detail/widget/VideoEasterEggsBar$1;
.super Ljava/lang/Object;
.source "VideoEasterEggsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoEasterEggsBar;->showContent(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoEasterEggsBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$000(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$100(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$200(Lcom/tudou/detail/widget/VideoEasterEggsBar;Z)V

    .line 79
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_0
    return-void
.end method
