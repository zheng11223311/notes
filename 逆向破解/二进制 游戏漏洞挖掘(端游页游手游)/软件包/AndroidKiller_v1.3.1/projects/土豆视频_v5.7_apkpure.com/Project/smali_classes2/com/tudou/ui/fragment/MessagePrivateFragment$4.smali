.class Lcom/tudou/ui/fragment/MessagePrivateFragment$4;
.super Ljava/lang/Object;
.source "MessagePrivateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessagePrivateFragment;->setNoLoginView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$4;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshList:Z

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$4;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$4;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 246
    return-void
.end method
