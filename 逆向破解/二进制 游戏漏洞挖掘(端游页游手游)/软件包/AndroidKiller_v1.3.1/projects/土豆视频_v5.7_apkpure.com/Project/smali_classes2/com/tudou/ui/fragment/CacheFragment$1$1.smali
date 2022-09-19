.class Lcom/tudou/ui/fragment/CacheFragment$1$1;
.super Ljava/lang/Object;
.source "CacheFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFragment$1;->onFinish(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CacheFragment$1;

.field final synthetic val$count:I

.field final synthetic val$tab:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFragment$1;II)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$1;

    iput p2, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->val$tab:I

    iput p3, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->val$tab:I

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    iget v1, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->val$count:I

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$002(Lcom/tudou/ui/fragment/CacheFragment;I)I

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$200(Lcom/tudou/ui/fragment/CacheFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$300(Lcom/tudou/ui/fragment/CacheFragment;I)V

    .line 95
    return-void

    .line 90
    :cond_1
    iget v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->val$tab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    iget v1, p0, Lcom/tudou/ui/fragment/CacheFragment$1$1;->val$count:I

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$102(Lcom/tudou/ui/fragment/CacheFragment;I)I

    goto :goto_0
.end method
