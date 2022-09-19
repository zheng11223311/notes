.class Lcom/tudou/ui/fragment/CachedFragment$1;
.super Ljava/lang/Thread;
.source "CachedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachedFragment;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachedFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachedFragment$1;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 142
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$1;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CachedFragment;->access$000(Lcom/tudou/ui/fragment/CachedFragment;Z)V

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$1;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachedFragment;->access$100(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;

    move-result-object v0

    const/16 v1, 0x403

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    return-void
.end method
