.class Lcom/tudou/ui/fragment/MessageCheckedFragment$5;
.super Ljava/lang/Object;
.source "MessageCheckedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageCheckedFragment;->setNoLoginView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refreshList:Z

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 242
    return-void
.end method
