.class Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;
.super Ljava/lang/Object;
.source "VipPrivilegeFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$IMembershipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getVipStatus(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

.field final synthetic val$vipDisableLayout:Landroid/view/View;

.field final synthetic val$vipEnableLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;->val$vipDisableLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;->val$vipEnableLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/youku/vo/UserBean;)V
    .locals 3
    .param p1, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;->val$vipDisableLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$2;->val$vipEnableLayout:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$000(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/view/View;Landroid/view/View;)V

    .line 119
    return-void
.end method
