.class Lcom/tudou/ui/fragment/VipPrivilegeFragment$3;
.super Ljava/lang/Object;
.source "VipPrivilegeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipPrivilegeFragment;->refreshVipStatus(Landroid/view/View;Landroid/view/View;)V
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
    .line 132
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$3;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$3;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$3;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 138
    return-void
.end method
