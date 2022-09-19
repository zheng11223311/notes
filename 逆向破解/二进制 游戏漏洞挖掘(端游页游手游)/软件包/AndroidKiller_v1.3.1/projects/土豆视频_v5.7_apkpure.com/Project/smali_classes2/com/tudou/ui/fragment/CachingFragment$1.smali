.class Lcom/tudou/ui/fragment/CachingFragment$1;
.super Ljava/lang/Thread;
.source "CachingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$1;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$1;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$000(Lcom/tudou/ui/fragment/CachingFragment;)V

    .line 179
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$1;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    move-result-object v0

    const/16 v1, 0x6e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    return-void
.end method
