.class Lcom/tudou/ui/fragment/CrashResultFragment$1;
.super Landroid/os/Handler;
.source "CrashResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CrashResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CrashResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CrashResultFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/CrashResultFragment$1;->this$0:Lcom/tudou/ui/fragment/CrashResultFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashResultFragment$1;->this$0:Lcom/tudou/ui/fragment/CrashResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CrashResultFragment;->access$000(Lcom/tudou/ui/fragment/CrashResultFragment;)V

    .line 48
    return-void
.end method
