.class Lcom/tudou/ui/fragment/AccountFragment$1;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$IMembershipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountFragment;->getVipStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountFragment;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/youku/vo/UserBean;)V
    .locals 1
    .param p1, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$000(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/AccountHeadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/AccountHeadView;->refreshVipStatus()V

    .line 154
    return-void
.end method
