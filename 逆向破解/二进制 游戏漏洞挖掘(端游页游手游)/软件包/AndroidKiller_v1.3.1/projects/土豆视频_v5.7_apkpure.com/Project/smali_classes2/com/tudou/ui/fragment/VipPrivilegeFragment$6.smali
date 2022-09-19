.class Lcom/tudou/ui/fragment/VipPrivilegeFragment$6;
.super Ljava/lang/Object;
.source "VipPrivilegeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipPrivilegeFragment;->initTitle()V
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
    .line 271
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$6;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$6;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 276
    return-void
.end method
