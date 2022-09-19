.class Lcom/tudou/ui/fragment/CrashFragment$1;
.super Ljava/lang/Object;
.source "CrashFragment.java"

# interfaces
.implements Lcom/tudou/ui/activity/CrashManager$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CrashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CrashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CrashFragment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tudou/ui/fragment/CrashFragment$1;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment$1;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CrashFragment;->access$000(Lcom/tudou/ui/fragment/CrashFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShake..."

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment$1;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CrashFragment;->access$100(Lcom/tudou/ui/fragment/CrashFragment;)V

    .line 45
    return-void
.end method
