.class Lcom/tudou/ui/fragment/UploadingFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "UploadingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadingFragment;->registBroadCastReciver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$11;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$11;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-virtual {v0, p2}, Lcom/tudou/ui/fragment/UploadingFragment;->receivedBroadcast(Landroid/content/Intent;)V

    .line 1146
    return-void
.end method
