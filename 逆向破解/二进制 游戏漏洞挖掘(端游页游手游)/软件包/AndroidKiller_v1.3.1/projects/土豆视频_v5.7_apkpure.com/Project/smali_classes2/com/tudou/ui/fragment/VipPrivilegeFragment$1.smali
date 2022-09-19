.class Lcom/tudou/ui/fragment/VipPrivilegeFragment$1;
.super Ljava/lang/Object;
.source "VipPrivilegeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipPrivilegeFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$1;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    const-string v1, "go_login_click"

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$1;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    const-string v1, "TAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$1;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method
